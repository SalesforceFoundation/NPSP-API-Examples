public with sharing class UTIL_CustomSettings_API_Test {

    public void getHouseholdsSettings() {
    	npsp.UTIL_CustomSettings_API settings = new npsp.UTIL_CustomSettings_API();
    	
    	npe01__Contacts_And_Orgs_Settings__c contactSettings = settings.getContactsSettings();
        contactSettings.npe01__Payments_Enabled__c = false;
        if(contactSettings.ID == null) {
            insert contactSettings;
        } else {
            update contactSettings;
        }
        
        npo02__Households_Settings__c householdSettings = settings.getHouseholdsSettings();
        householdSettings.npo02__Always_Rollup_to_Primary_Contact__c = false;
        if(householdSettings.ID == null) {
        	insert householdSettings;
        } else {
        	update householdSettings;
        }
        
        npe03__Recurring_Donations_Settings__c donationsSettings = settings.getRecurringDonationsSettings();
        donationsSettings.npe03__Add_Campaign_to_All_Opportunites__c = true;
        if(donationsSettings.ID == null) {
            insert donationsSettings;
        } else {
            update donationsSettings;
        }
        
        npe4__Relationship_Settings__c relationshipSettings = settings.getRelationshipSettings();
        relationshipSettings.npe4__Allow_AutoCreated_Duplicates__c = true;
        if(relationshipSettings.ID == null) {
            insert relationshipSettings;
        } else {
            update relationshipSettings;
        }
        
        npe5__Affiliations_Settings__c affiliationSettings = settings.getAffiliationsSettings();
        affiliationSettings.npe5__Automatic_Affiliation_Creation_Turned_On__c = true;
        if(affiliationSettings.ID == null) {
            insert affiliationSettings;
        } else {
            update affiliationSettings;
        }
        
        npsp__Error_Settings__c errorSettings = settings.getErrorSettings();
        errorSettings.npsp__Store_Errors_On__c = true;
        if(errorSettings.ID == null) {
            insert errorSettings;
        } else {
            update errorSettings;
        }
        
        npsp__Batch_Data_Entry_Settings__c dataEntrySettings = settings.getBDESettings();
        dataEntrySettings.npsp__Allow_Blank_Opportunity_Names__c = true;
        if(dataEntrySettings.ID == null) {
            insert dataEntrySettings;
        } else {
            update dataEntrySettings;
        }
        
        npsp__Household_Naming_Settings__c namingSettings = settings.getHouseholdNamingSettings();
        namingSettings.npsp__Contact_Overrun_Count__c = 10;
        if(namingSettings.ID == null) {
            insert namingSettings;
        } else {
            update namingSettings;
        }
        
        npsp__Allocations_Settings__c allocationSettings = settings.getAllocationsSettings();
        allocationSettings.npsp__Default_Allocations_Enabled__c = true;
        if(allocationSettings.ID == null) {
            insert allocationSettings;
        } else {
            update allocationSettings;
        }
    }
}