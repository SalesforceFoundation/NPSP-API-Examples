public with sharing class TDTM_Config_API_Test {

    public List<npsp__Trigger_Handler__c> tdtmConfig { public get; public set; }
        
    public TDTM_Config_API_Test() {
    	tdtmConfig = npsp.TDTM_Config_API.getDefaultRecords();
    }
    
    public PageReference MakeAllActive() {
    	for(npsp__Trigger_Handler__c handler : tdtmConfig) {
    		handler.npsp__Active__c = true;
    	}
    	upsert tdtmConfig;
    	return null;
    }
    
    public PageReference MakeAllInactive() {
        for(npsp__Trigger_Handler__c handler : tdtmConfig) {
            handler.npsp__Active__c = false;
        }
        upsert tdtmConfig;
        return null;
    }
}