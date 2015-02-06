public with sharing class UTIL_RecordTypes_API_Exec {

    /** @description Property to populate with the name of the existing Account Record Types. **/
    public Set<String> accountRecTypesNames { public get; public set; }
    /** @description Property to populate with the Id of the existing Account Record Types. **/
    public Set<Id> accountRecTypesIds { public get; public set; }
    
    /** @description Constructor that initializes and populates the properties. **/
    public UTIL_RecordTypes_API_Exec() {
        accountRecTypesNames = new Set<String>();
        accountRecTypesIds = new Set<Id>();
    
        Id organizationId = npsp.UTIL_RecordTypes_API.GetRecordTypeId('Account', 'Organization');
        Id householdAccId = npsp.UTIL_RecordTypes_API.GetRecordTypeId('Account', 'Household Account');
        
        String organizationRecordType = npsp.UTIL_RecordTypes_API.GetRecordTypeName('Account', organizationId);
        String householdAccRecordType = npsp.UTIL_RecordTypes_API.GetRecordTypeName('Account', householdAccId);
        accountRecTypesNames.add(organizationRecordType);
        accountRecTypesNames.add(householdAccRecordType);
        
        accountRecTypesIds = npsp.UTIL_RecordTypes_API.GetRecordTypeIdSet('Account', accountRecTypesNames);
    }
}