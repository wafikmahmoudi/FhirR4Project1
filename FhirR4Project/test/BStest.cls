Class test.BStest Extends Ens.BusinessService
{

Parameter ADAPTER = "Ens.InboundAdapter";

Method OnProcessInput(pInput As %RegisteredObject, Output pResponse As HS.Message.FHIR.Response) As %Status
{
	
		$$$LOGINFO("start// ")
	
	try {
			
			$$$LOGINFO(" *wafik *")
	    	
	    	set xxl = ##class(HS.FHIRServer.Interop.Request).%New()
	    	set xxl.SessionApplication = "/csp/healthshare/test1/fhir/r4"
	        set xxl.BaseURL = "http://40.89.187.200:52776/csp/healthshare/test1/fhir/r4"
	        set xxl.RequestPath = "Patient/1"
	        set xxl.RequestMethod="GET"
	        //set xxl.ContentType = "application/fhir+json"
	        set xxl.IsRecursive = false
			set sc=..SendRequestSync("HS.FHIRServer.Interop.Operation",xxl,.pResponse)
			$$$LOGINFO(" *sc *"_sc)
		
       		set dynamicObject = {}.%FromJSON(pResponse.Payload)
      
       		//$$$LOGINFO("status : "_dynamicObject.status_" ; "_"sessionids : "_dynamicObject.sessionids)
       		$$$LOGINFO("message : "_dynamicObject.%ToJSON())
			
	
	
		}Catch ex {	Set tSC=ex.AsStatus() w tSC}
		$$$LOGINFO(" //end// ")
		Quit 1
}






Class test.BStest Extends Ens.BusinessService
{

Parameter ADAPTER = "Ens.InboundAdapter";

Method OnProcessInput(pInput As %RegisteredObject, Output pResponse As HS.Message.FHIR.Response) As %Status
{
	
		$$$LOGINFO("start// ")
	
	try {
			
			$$$LOGINFO(" *wafik *")
	    	
	    	set xxl = ##class(HS.FHIRServer.Interop.Request).%New()
	    	set xxl.SessionApplication = "/csp/healthshare/test1/fhir/r4"
	        set xxl.BaseURL = "http://40.89.187.200:52776/csp/healthshare/test1/fhir/r4"
	        set xxl.RequestPath = "Patient/1"
	        set xxl.RequestMethod="GET"
	        //set xxl.ContentType = "application/fhir+json"
	        set xxl.IsRecursive = false
			set sc=..SendRequestSync("HS.FHIRServer.Interop.Operation",xxl,.pResponse)
			$$$LOGINFO(" *sc *"_sc)
		
       		set dynamicObject = {}.%FromJSON(pResponse.Payload)
      
       		//$$$LOGINFO("status : "_dynamicObject.status_" ; "_"sessionids : "_dynamicObject.sessionids)
       		$$$LOGINFO("message : "_dynamicObject.%ToJSON())
			
	
	
		}Catch ex {	Set tSC=ex.AsStatus() w tSC}
		$$$LOGINFO(" //end// ")
		Quit 1
}

}

}