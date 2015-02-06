public with sharing class TDTM_Config_API_Exec {

    /** @description Property to populate with the NPSP Trigger Handler default records. **/
    public List<npsp__Trigger_Handler__c> tdtmConfig { public get; public set; }
    
    /** @description Constructor that populates the NPSP Trigger Handler records property. **/
    public TDTM_Config_API_Exec() {
        tdtmConfig = npsp.TDTM_Config_API.getDefaultRecords();
    }
    
    /** @description Action method that makes all NPSP Trigger Handlers active. **/
    public PageReference MakeAllActive() {
        for(npsp__Trigger_Handler__c handler : tdtmConfig) {
            handler.npsp__Active__c = true;
        }
        upsert tdtmConfig;
        return null;
    }
    
    /** @description Action method that makes all NPSP Trigger Handlers inactive. **/
    public PageReference MakeAllInactive() {
        for(npsp__Trigger_Handler__c handler : tdtmConfig) {
            handler.npsp__Active__c = false;
        }
        upsert tdtmConfig;
        return null;
    }
}