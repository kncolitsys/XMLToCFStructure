<cffile action="read" file="#ExpandPath('books.xml')#" variable="myBooks">
<cfset objXml = createObject("component","xml2Struct")>

<!--- append the returned structure to some existing structure--->
<cfset str = structnew()>
<cfset str.existingElement = "some text here">
<cfset str = objXml.ConvertXmlToStruct(myBooks, str)>


<!--- create a new structure --->
<cfset newStr = objXml.ConvertXmlToStruct(myBooks, StructNew())>
<cfdump var = "#newStr#">