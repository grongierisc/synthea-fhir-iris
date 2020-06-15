Include HS.FHIRServer

Class SYNTHEA.SearchTableBuilder Extends (%RegisteredObject, HS.FHIRServer.Util.FHIRQueryUtils)
{

Parameter NUMERICSCALE = 8;

Property strategy As HS.FHIRServer.Storage.SqlStrategy;

Method %OnNew(pStrategy As HS.FHIRServer.Storage.SqlStrategy) As %Status
{
	Set ..strategy = pStrategy
	Quit $$$OK
}

Method GenResourceTables(pVerbose As %Boolean = 1)
{
	#dim schema as HS.FHIRServer.Schema = ..strategy.schema
	// Generte the Resoure Class
	Set tRsrcPackageName = ..strategy.GetResourceClassesPackage()
	Set tResourceType = ""
	for {
		Set tResourceType = $Order(schema.searchParams(tResourceType) )
		Quit:tResourceType=""

		Set tRsrcClassName = tRsrcPackageName _ "." _ tResourceType
		Set tRsrcVersionClassName = tRsrcPackageName _ "." _ tResourceType _"Ver"

		// Clear all tables in the Index package
		// flag "e" = Delete Extent
		//set tFlags = "e"
		// We are deleting the search classes as well as all data
		//set tSC = $system.OBJ.DeletePackage(tRsrcPackageName, tFlags)
		//$$$ThrowOnError(tSC)
		
		// Create the Class Definition
		set tableDef = ##class(%Dictionary.ClassDefinition).%New(tRsrcClassName)
		set tableDef.Super = "%Persistent," _ ..strategy.#ResourceSuperclass
		set tableDef.GeneratedBy = $CLASSNAME()_".CLS"
		do tableDef.ProcedureBlockReset()
		
		// Create the Key Index and add it to the class
		#dim tIndexDef as %Dictionary.IndexDefinition
		set tIndexDefId = tRsrcClassName_"||KeyIdx"
		set tIndexDef = ##class(%Dictionary.IndexDefinition).%New()
		set tIndexDef.Name = "KeyIdx"
		set tIndexDef.Properties = "Key"
		set tIndexDef.Unique = 1
		set tIndexDef.PrimaryKey = 1
		set tIndexDef.Data = "Deleted"
		do tableDef.Indices.Insert(tIndexDef)
		
		// Create the Compartment Index and add it to the class
		set tIndexDefId = tRsrcClassName_"||CompartmentsIdx"
		set tIndexDef = ##class(%Dictionary.IndexDefinition).%New()
		set tIndexDef.Name = "CompartmentsIdx"
		set tIndexDef.Properties = "Compartments(ELEMENTS)"
		do tableDef.Indices.Insert(tIndexDef)
		
		w !,"Saving: " ,tableDef.Name
		set tSC = tableDef.%Save()
		$$$ThrowOnError(tSC)


		// Create the Version Class Definition
		set tableDef = ##class(%Dictionary.ClassDefinition).%New(tRsrcVersionClassName)
		set tableDef.Super = "%Persistent," _ ..strategy.#ResourceVersionSuperclass
		set tableDef.GeneratedBy = $CLASSNAME()_".CLS"
		do tableDef.ProcedureBlockReset()
		
		// Create the Key Index and add it to the class
		set tIndexDefId = tRsrcVersionClassName_"||TypeIdVerIdx"
		set tIndexDef = ##class(%Dictionary.IndexDefinition).%New()
		set tIndexDef.Name = "TypeIdVerIdx"
		set tIndexDef.Properties = "ResourceType,ResourceId,VersionId"
		set tIndexDef.Unique = 1
		set tIndexDef.PrimaryKey = 1
		do tableDef.Indices.Insert(tIndexDef)
		

		w !,"Saving: " ,tableDef.Name
		set tSC = tableDef.%Save()
		$$$ThrowOnError(tSC)
	} 
	
	write !, "Compiling "_tRsrcPackageName_".*... "
	set tFlags = "e"
	if ('pVerbose) { set tFlags = tFlags_"-d" }
	
	set tSC = $system.OBJ.CompilePackage(tRsrcPackageName,tFlags)
	$$$ThrowOnError(tSC)
}

Method UpdateSearchTablesFromSchema(ByRef pChanged, pVerbose As %Boolean = 0) As %List
{
	set resourceTypes = ""
	
	#dim schema as HS.FHIRServer.Schema = ..strategy.schema
	
	set tSearchTablePackage = ..strategy.GetSearchClassesPackage()
	Set tSearchTableName = ..strategy.GetSearchTable("")
	
	write !, "Updating "_tSearchTablePackage_".*... "
	
	Set rsrcIter = ""
	Set tResourceType = ""
	for {
		Set tResourceType = $Order(pChanged(tResourceType) )
		Quit:tResourceType=""
		
		Set addParamNames = "", deleteParamNames = ""
		Set paramName = ""
		for {
			set paramName = $Order(pChanged(tResourceType, paramName))
			Quit:paramName=""
			
			//Search parameter is defined in the schema. Mark it for add to the search table
			if $data(schema.searchParams(tResourceType, paramName)) {
				Set $List(addParamNames, *+1) = paramName
			}
			//Search paramter isn't defined in the schema. Mark it for delete from the search table
			else {
				Set $List(deleteParamNames, *+1) = paramName
			}
		}
		
		Set tableName = tResourceType
		
		write:pVerbose !, "Resource type: "_tResourceType, " has ",$LL(addParamNames)," columns"

		// Create the class definition for the search table for this type
		set tSearchTableName = ..strategy.GetSearchTable(tableName)
		set tSearchClassName = ..strategy.GetSearchClass(tableName)
		set tSearchTableDef = ##class(%Dictionary.ClassDefinition).%OpenId(tSearchClassName)
		if '$isobject(tSearchTableDef) {
			$$$ThrowFHIR($$$GeneralError, "Search table doesn't exist " _ tSearchClassName)
		}
		
		if $listlength(addParamNames) > 0 {
			do ..AddProperties(addParamNames, tResourceType, tSearchClassName, .tSearchTableDef, pVerbose)
		}
		if $listlength(deleteParamNames) > 0 {
			do ..DeleteProperties(deleteParamNames, tResourceType, .pChanged, tSearchClassName, .tSearchTableDef, pVerbose)
		}
		
		w !,"Saving: " ,tSearchTableDef.Name
		set tSC = tSearchTableDef.%Save()
		$$$ThrowOnError(tSC)
		set tFlags = ""
		if ('pVerbose) { set tFlags = tFlags_"-d" }
		set tSC = $system.OBJ.Compile(tSearchTablePackage_"."_tResourceType,tFlags)
		$$$ThrowOnError(tSC)
		write "Done."
		
		set resourceTypes = resourceTypes _ $listbuild(tResourceType)
	}
	return resourceTypes
}

Method GenSearchTablesFromSchema(pType As %String = "", pVerbose As %Boolean = 0)
{
	#dim schema as HS.FHIRServer.Schema = ..strategy.schema
		
	do {
		set tSearchTablePackage = ..strategy.GetSearchClassesPackage()
		Set tSearchTableName = ..strategy.GetSearchTable(pType)
		
		// flag "e" = Delete Extent
		// flag "d" = Display
		set tFlags = "e"
		if ('pVerbose) { set tFlags = tFlags_"-d" }
		if (pType'="") { 
			write !, "Deleting "_tSearchTableName_" and any tables in that package... "
			set tSC = $system.OBJ.Delete(tSearchTableName,tFlags)
			set tSC = $system.OBJ.DeletePackage(tSearchTableName,tFlags)
		}
		else { 
			write !, "Deleting "_tSearchTablePackage_".*... "
			set tSC = $system.OBJ.DeletePackage(tSearchTablePackage,tFlags)
		}
		//$$$ThrowOnError(tSC)
		write "Done."
		
		
		if (pType'="") {
			write !, "Generating "_tSearchTableName_"... " 
		} else {
			write !, "Generating "_tSearchTablePackage_".*... " 
		}
		
		// Find the "base" resource, or create one if it does not exist. The "base" resource
		// contains search params common to all resource types. Then add to it the searchParams 
		// belonging to the "rest" (de-duplicating on name) as these are also common to all
		// resource types.
		
		Set commonParamNames = ""
		Set paramName = ""
		for {
			$$$NextSearchParamName(schema,"Resource",paramName)
			Quit:paramName=""
			
			// We don't handle these two
			Continue:paramName="_content"
			Continue:paramName="_query"
			Set $List(commonParamNames, *+1) = paramName
		
		}
		
		
		// Iterate through all of the resources in the Metadata
		Set rsrcIter = ""
		Set tResourceType = ""
		for {
			Set tResourceType = $Order(schema.searchParams(tResourceType) )
			Quit:tResourceType=""
			
			if (pType '= "" ) && (tResourceType '= pType) {
				// Skip this if only doing a single type
				continue 
			}
			
			
			if tResourceType = "Resource" {
				Set allParamNames = commonParamNames
				Set tableName = ""
			} else {
				Set rsrcParamNames = ""
				Set paramName = ""
				for {
					$$$NextSearchParamName(schema,tResourceType,paramName)
					Quit:paramName=""
					Set $List(rsrcParamNames, *+1) = paramName
				}				
				
				// Copy the base resource params into the params for this resource, unless this is the
				// base resource (Concatentate the two $Lists)
				Set allParamNames = commonParamNames _ rsrcParamNames
				Set tableName = tResourceType
				// w !, "Table=",tableName," fields=",$lts(allParamNames),!
			}
			write:pVerbose !, "Resource type: "_tResourceType, " has ",$LL(allParamNames)," columns"
			//, " -> ", $lts(rsrcParamNames),!

			// Create the class definition for the search table for this type
			set tSearchTableName = ..strategy.GetSearchTable(tableName)
			set tSearchClassName = ..strategy.GetSearchClass(tableName)
			set tSearchTableDef = ##class(%Dictionary.ClassDefinition).%New(tSearchClassName)
			set tSearchTableDef.Super = "%Library.Persistent"
			set tSearchTableDef.GeneratedBy = $CLASSNAME()_".CLS"
			do tSearchTableDef.ProcedureBlockReset()
			
			do ..AddProperties(allParamNames, tResourceType, tSearchClassName, .tSearchTableDef, pVerbose)
			
			/*
			// Additionally, make a property referencing the original resource and index on it
			set tParamName = "ResourceLogicalId"
			set tPropDefId = tSearchTableName_"||"_tParamName
			set tPropDef = ##class(%Dictionary.PropertyDefinition).%New()
			set tPropDef.Name = tParamName
			set tPropDef.Type = classname
			do tSearchTableDef.Properties.Insert(tPropDef)
			
			set tIndexDefId = tSearchTableName_"||"_tParamName_"Idx"
			set tIndexDef = ##class(%Dictionary.IndexDefinition).%New()
			set tIndexDef.Name = tParamName_"Idx"
			set tIndexDef.Properties = tParamName
			set tIndexDef.IdKey = 1
			do tSearchTableDef.Indices.Insert(tIndexDef)
			*/
			
			// Additionally, make a property referencing the original resource and index on it
			set tParamName = "Key"
			set tPropDefId = tSearchTableName_"||"_tParamName
			Set tPropDef = ##class(%Dictionary.PropertyDefinition).%New()
			set tPropDef.Name = tParamName
			set tPropDef.Type = "HS.FHIRServer.Storage.StringPrimitive"
			Set tPropDef.Required = 1
			do tPropDef.Parameters.SetAt("EXACT","COLLATION")
			do tSearchTableDef.Properties.Insert(tPropDef)
			
			set tIndexDefId = tSearchTableName_"||"_tParamName_"Idx"
			set tIndexDef = ##class(%Dictionary.IndexDefinition).%New()
			set tIndexDef.Name = tParamName_"Idx"
			set tIndexDef.Properties = tParamName
			set tIndexDef.Unique = 1
			set tIndexDef.PrimaryKey = 1
			// set tIndexDef.IdKey = 1
			do tSearchTableDef.Indices.Insert(tIndexDef)
			
			// And add a 'VersionId' column to each search table
			set tParamName = "VersionId"
			set tPropDefId = tSearchTableName_"||"_tParamName
			Set tPropDef = ##class(%Dictionary.PropertyDefinition).%New()
			set tPropDef.Name = tParamName
			set tPropDef.Type = "HS.FHIRServer.Storage.StringPrimitive"
			Set tPropDef.Required = 0
			do tPropDef.Parameters.SetAt("EXACT","COLLATION")
			do tSearchTableDef.Properties.Insert(tPropDef)

			// set xk = ""  for { set xx = tSearchTableDef.Properties.GetNext(.xk)  quit:xk=""  w xk,":",xx.Name,! }
			w !,"Saving: " ,tSearchTableDef.Name
			set tSC = tSearchTableDef.%Save()
			$$$ThrowOnError(tSC)
		}  		// End of Resource loop
		write "Done."
		set tFlags = ""
		if ('pVerbose) { set tFlags = tFlags_"-d" }
		if (pType'="") {
			write !, "Compiling "_tSearchTablePackage_"."_pType_" and any tables in that package... "
			set tSC = $system.OBJ.Compile(tSearchTablePackage_"."_pType,tFlags)
			$$$ThrowOnError(tSC)
			set tSC = $system.OBJ.CompilePackage(tSearchTablePackage_"."_pType,tFlags)
			$$$ThrowOnError(tSC)
		}
		else { 
			write !, "Compiling "_tSearchTablePackage_".*... "
			set tSC = $system.OBJ.CompilePackage(tSearchTablePackage,tFlags)
			$$$ThrowOnError(tSC)
		}
		write "Done."
	} while 0  // End of once through block
}

/// Add/update properties and indices for a class definition
Method AddProperties(pAddParamNames As %List, pResourceType As %String, pSearchClassName As %String, ByRef pSearchTableDef As %Dictionary.ClassDefinition, pVerbose As %Boolean)
{
	#dim schema as HS.FHIRServer.Schema = ..strategy.schema
	
	for tJ=1:1:$ListLength(pAddParamNames) {
		set tOrigParamName = $ListGet(pAddParamNames, tJ)
		#dim parentParam as HS.FHIRServer.SearchParam = schema.GetSearchParam( pResourceType, tOrigParamName )
		do parentParam.getParamSet(.paramSet)
		
		for j=1:1:paramSet {
			set searchParam = paramSet(j)
			set md = ..strategy.GetFieldMetdata(searchParam)
			set tParamName = $list(md,1)
			set isColl = $list(md,2)
			//set tParamName = ..NormalizeParamName(tOrigParamName)
			set tParamType = searchParam.type
			
			write:pVerbose !, "search param: "_tParamName _ $Select(tParamName'=tOrigParamName:(" <- "_tOrigParamName), 1: "") _ " as " _ tParamType
			// Quantities are handled differently from other param types.
			if (tParamType = "quantity") && isColl {
				set tQuantityClassName = pSearchClassName _ "." _ tParamName
				//Skip if class already exists
				if ##class(%Dictionary.ClassDefinition).%ExistsId(tQuantityClassName) {
					continue
				}

				// Create a new table that references the current table as a foreign key
				set tQuantityTableDef = ##class(%Dictionary.ClassDefinition).%New(tQuantityClassName)
				set tQuantityTableDef.Super = "%Persistent"
				set tQuantityTableDef.GeneratedBy = $CLASSNAME()_".CLS"
				// Create the property constrained by the foreign key
				set tFKeyPropDef = ##class(%Dictionary.PropertyDefinition).%New()
				set tFKeyPropDef.Name = "Key"
				set tFKeyPropDef.Type = "HS.FHIRServer.Storage.StringPrimitive"
				do tQuantityTableDef.Properties.Insert(tFKeyPropDef)
				// Create the foreign key
				set tForeignKeyDef = ##class(%Dictionary.ForeignKeyDefinition).%New()
				set tForeignKeyDef.Name = "KeyIdFKey"
				set tForeignKeyDef.Properties = "Key"
				set tForeignKeyDef.ReferencedClass = pSearchClassName
				set tForeignKeyDef.ReferencedKey = "KeyIdx"
				set tForeignKeyDef.OnDelete = "cascade"
				do tQuantityTableDef.ForeignKeys.Insert(tForeignKeyDef)
				// Create the property + index for value (numeric part of the quantity)
				set tNumPropDef = ##class(%Dictionary.PropertyDefinition).%New()
				set tNumPropDef.Name = "value"
				set tNumPropDef.Type = "%Numeric"
				do tNumPropDef.Parameters.SetAt(..#NUMERICSCALE,"SCALE")
				do tQuantityTableDef.Properties.Insert(tNumPropDef)
				set tNumPropIndexDef = ##class(%Dictionary.IndexDefinition).%New()
				set tNumPropIndexDef.Name = "valueIdx"
				set tNumPropIndexDef.Properties = "value"
				do tQuantityTableDef.Indices.Insert(tNumPropIndexDef)
				// Create the property + index for units
				set tUnitPropDef = ##class(%Dictionary.PropertyDefinition).%New()
				set tUnitPropDef.Name = "unit"
				set tUnitPropDef.Collection = "list"
				set tUnitPropDef.Type = "%String"
				do tUnitPropDef.Parameters.SetAt("", "MAXLEN")
				do tQuantityTableDef.Properties.Insert(tUnitPropDef)
				set tUnitPropIndexDef = ##class(%Dictionary.IndexDefinition).%New()
				set tUnitPropIndexDef.Name = "unitIdx"
				set tUnitPropIndexDef.Properties = "unit(ELEMENTS)"
				set tUnitPropIndexDef.Type = "bitmap"
				do tQuantityTableDef.Indices.Insert(tUnitPropIndexDef)
				
				set tParamName = "Key"
				set tIndexDef = ##class(%Dictionary.IndexDefinition).%New()
				set tIndexDef.Name = tParamName_"Idx"
				set tIndexDef.Properties = tParamName
				do tQuantityTableDef.Indices.Insert(tIndexDef)
				w !,"Saving: " ,tQuantityTableDef.Name
				$$$ThrowOnError( tQuantityTableDef.%Save() )
			}
			else {
				// If this search param searches a period property, we want to
				// make *two* properties and indices, one for the start time and
				// one for the end time.
				if $ListFind(searchParam.datatypes, "Period") {
					set tParamList = tParamName_..#PERIODSTARTSUFFIX_"^"_tParamName_..#PERIODENDSUFFIX
				} else {
					set tParamList = tParamName 
				}
				
				for tK=1:1:$L(tParamList,"^") {
					set tOneParamName = $P(tParamList,"^",tK)
					
					//Create new property and index if they don't already exist
					set tPropDef = "", tIndexDef = ""
					for i=1:1:pSearchTableDef.Properties.Count() {
						set property = pSearchTableDef.Properties.GetAt(i)
						if property.Name = tOneParamName {
							set tPropDef = property
							quit
						}
					}
					for i=1:1:pSearchTableDef.Indices.Count() {
						set index = pSearchTableDef.Indices.GetAt(i)
						if index.Name = (tOneParamName _ "Idx") {
							set tIndexDef = index
							quit
						}
					}
					
					if '$isobject(tPropDef) {
						set tPropDef = ##class(%Dictionary.PropertyDefinition).%New()
						set tPropDef.Name = tOneParamName
						do pSearchTableDef.Properties.Insert(tPropDef)
					}
					if '$isobject(tIndexDef) {
						set tIndexDef = ##class(%Dictionary.IndexDefinition).%New()
						set tIndexDef.Name = tOneParamName_"Idx"
						do pSearchTableDef.Indices.Insert(tIndexDef)
					}
					
					if (tParamType="number") { 
						set tPropDef.Type = "%Numeric"
						do tPropDef.Parameters.SetAt(..#NUMERICSCALE,"SCALE")
					} 
					elseif (tParamType = "quantity"){
						set tPropDef.Type = "HS.FHIRServer.Storage.QuantitySerial"
					}
					else {
						// Use the FHIR string type instead of %String to get around MAXLEN issues
						set tPropDef.Type = "HS.FHIRServer.Storage.StringPrimitive"
					}
					if (tParamType="uri") || (tParamType = "reference") {
						// Search on URIs and Reference uses exact matching. See http://hl7.org/fhir/search.html#uri
						do tPropDef.Parameters.SetAt("EXACT","COLLATION")
					}
					
					if isColl {
						set tPropDef.Collection = "list"
						set tIndexDef.Properties = tOneParamName_"(ELEMENTS)"
					}
					else {			
						set tIndexDef.Properties = tOneParamName
					}
					
					if ..strategy.isBitmap(searchParam) {
						set tIndexDef.Type ="bitmap"
					}
				}
			}
		}
	}
}

/// Delete properties and indices from a class definition
Method DeleteProperties(pDeleteParamNames As %List, pResourceType As %String, ByRef pChanged, pSearchClassName As %String, ByRef pSearchTableDef As %Dictionary.ClassDefinition, pVerbose As %Boolean)
{
	#dim schema as HS.FHIRServer.Schema = ..strategy.schema
	
	for tJ=1:1:$ListLength(pDeleteParamNames) {
		set tOrigParamName = $ListGet(pDeleteParamNames, tJ)
		set searchParam = ##class(HS.FHIRServer.SearchParam).fromSerial(pChanged( pResourceType, tOrigParamName ))
		set md = ..strategy.GetFieldMetdata(searchParam)
		set tParamName = $list(md,1)
		set isColl = $list(md,2)
		set tParamType = searchParam.type
		
		write:pVerbose !, "search param: "_tParamName _ $Select(tParamName'=tOrigParamName:(" <- "_tOrigParamName), 1: "") _ " as " _ tParamType
		// Quantities are handled differently from other param types.
		if (tParamType = "quantity") && isColl {
			set tQuantityClassName = pSearchClassName _ "." _ tParamName
			$$$ThrowOnError(##class(%Dictionary.ClassDefinition).%DeleteId(tQuantityClassName))
		}
		else {
			// If this search param searches a period property, we want to
			// make *two* properties and indices, one for the start time and
			// one for the end time.
			if $ListFind(searchParam.datatypes, "Period") {
				set tParamList = tParamName_..#PERIODSTARTSUFFIX_"^"_tParamName_..#PERIODENDSUFFIX
			} else {
				set tParamList = tParamName 
			}
			for tK=1:1:$L(tParamList,"^") {
				set tOneParamName = $P(tParamList,"^",tK)
				
				for i=1:1:pSearchTableDef.Properties.Count() {
					set property = pSearchTableDef.Properties.GetAt(i)
					if $isobject(property) && (property.Name = tOneParamName) {
						do pSearchTableDef.Properties.RemoveAt(i)
						quit
					}
				}
				for i=1:1:pSearchTableDef.Indices.Count() {
					set index = pSearchTableDef.Indices.GetAt(i)
					if $isobject(index) && (index.Name = (tOneParamName _ "Idx")) {
						do pSearchTableDef.Indices.RemoveAt(i)
						quit
					}
				}
			}
		}
	}
}

Method Reset() As %Status
{
	try {
		set tSC = $$$OK
		// flag "e" = Delete Extent
		set tFlags = "e"
		set tSC = $system.OBJ.DeletePackage(..strategy.GetSearchClassesPackage(), tFlags) quit:$$$ISERR(tSC)
	}
	catch (ex) { set tSC = ex.AsStatus() }
	if ($$$ISERR(tSC)) { write !, $system.Status.GetOneErrorText(tSC) }
	quit tSC
}

}
