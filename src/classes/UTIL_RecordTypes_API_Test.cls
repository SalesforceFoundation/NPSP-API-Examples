public with sharing class UTIL_RecordTypes_API_Test {

    public UTIL_RecordTypes_API_Test() {
        npsp.UTIL_RecordTypes_API.GetRecordTypeId('Account', 'Household');
        npsp.UTIL_RecordTypes_API.GetRecordTypeName('Account', '001');
        npsp.UTIL_RecordTypes_API.GetRecordTypeIdSet('Account', new Set<String>{'001', '002'});
    }
}