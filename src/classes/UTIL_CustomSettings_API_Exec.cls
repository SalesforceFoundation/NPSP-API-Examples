public with sharing class UTIL_CustomSettings_API_Exec {

    /** @description Properties to populate with the value of one field for each NPSP setting. **/
    public Map<String, Boolean> sampleBoolSettings { public get; public set; }
    public Map<String, Integer> sampleIntSettings { public get; public set; }
    
    /** @description Constructors that initializes properties. **/
    public UTIL_CustomSettings_API_Exec() {
        sampleBoolSettings = new Map<String, Boolean>();
        sampleIntSettings = new Map<String, Integer>();
    }
    
    /** @description Populates properties with contents of Custom Settings. **/
    public void populateMap() {
        sampleBoolSettings.put('npe01__Payments_Enabled__c', npsp.UTIL_CustomSettings_API.getContactsSettings().npe01__Payments_Enabled__c);
        sampleBoolSettings.put('npo02__Always_Rollup_to_Primary_Contact__c', npsp.UTIL_CustomSettings_API.getHouseholdsSettings().npo02__Always_Rollup_to_Primary_Contact__c);
        sampleBoolSettings.put('npe03__Add_Campaign_to_All_Opportunites__c', npsp.UTIL_CustomSettings_API.getRecurringDonationsSettings().npe03__Add_Campaign_to_All_Opportunites__c);
        sampleBoolSettings.put('npe4__Allow_AutoCreated_Duplicates__c', npsp.UTIL_CustomSettings_API.getRelationshipSettings().npe4__Allow_AutoCreated_Duplicates__c);
        sampleBoolSettings.put('npe5__Automatic_Affiliation_Creation_Turned_On__c', npsp.UTIL_CustomSettings_API.getAffiliationsSettings().npe5__Automatic_Affiliation_Creation_Turned_On__c);
        sampleBoolSettings.put('npsp__Store_Errors_On__c', npsp.UTIL_CustomSettings_API.getErrorSettings().npsp__Store_Errors_On__c);
        sampleBoolSettings.put('npsp__Allow_Blank_Opportunity_Names__c', npsp.UTIL_CustomSettings_API.getBDESettings().npsp__Allow_Blank_Opportunity_Names__c);
        sampleIntSettings.put('npsp__Contact_Overrun_Count__c', (Integer)npsp.UTIL_CustomSettings_API.getHouseholdNamingSettings().npsp__Contact_Overrun_Count__c);
        sampleBoolSettings.put('npsp__Default_Allocations_Enabled__c', npsp.UTIL_CustomSettings_API.getAllocationsSettings().npsp__Default_Allocations_Enabled__c);
    }
    
    /** @description Sets sample settings to true (and the one that is an int to 10). **/
    public PageReference populateSampleSettings() {
        List<SObject> settings = new List<SObject>();
        
        npe01__Contacts_And_Orgs_Settings__c contactSettings = npsp.UTIL_CustomSettings_API.getContactsSettings();
        contactSettings.npe01__Payments_Enabled__c = true;
        settings.add(contactSettings);
        
        npo02__Households_Settings__c householdSettings = npsp.UTIL_CustomSettings_API.getHouseholdsSettings();
        householdSettings.npo02__Always_Rollup_to_Primary_Contact__c = true;
        settings.add(householdSettings);
        
        npe03__Recurring_Donations_Settings__c donationsSettings = npsp.UTIL_CustomSettings_API.getRecurringDonationsSettings();
        donationsSettings.npe03__Add_Campaign_to_All_Opportunites__c = true;
        settings.add(donationsSettings);
        
        npe4__Relationship_Settings__c relationshipSettings = npsp.UTIL_CustomSettings_API.getRelationshipSettings();
        relationshipSettings.npe4__Allow_AutoCreated_Duplicates__c = true;
        settings.add(relationshipSettings);
        
        npe5__Affiliations_Settings__c affiliationSettings = npsp.UTIL_CustomSettings_API.getAffiliationsSettings();
        affiliationSettings.npe5__Automatic_Affiliation_Creation_Turned_On__c = true;
        settings.add(affiliationSettings);
        
        npsp__Error_Settings__c errorSettings = npsp.UTIL_CustomSettings_API.getErrorSettings();
        errorSettings.npsp__Store_Errors_On__c = true;
        settings.add(errorSettings);
        
        npsp__Batch_Data_Entry_Settings__c dataEntrySettings = npsp.UTIL_CustomSettings_API.getBDESettings();
        dataEntrySettings.npsp__Allow_Blank_Opportunity_Names__c = true;
        settings.add(dataEntrySettings);

        npsp__Household_Naming_Settings__c namingSettings = npsp.UTIL_CustomSettings_API.getHouseholdNamingSettings();
        namingSettings.npsp__Contact_Overrun_Count__c = 10;
        settings.add(namingSettings);
        
        npsp__Allocations_Settings__c allocationSettings = npsp.UTIL_CustomSettings_API.getAllocationsSettings();
        allocationSettings.npsp__Default_Allocations_Enabled__c = true;
        settings.add(allocationSettings);

        if(contactSettings.Id != null) {
            update settings;
        } else {
        	insert settings;
        }
        populateMap();
        return null;
    }
    
    /** @description Sets sample settings to false (and the one that is an int to 0). **/
    public PageReference clearSampleSettings() { 
        List<SObject> settings = new List<SObject>();
        
        npe01__Contacts_And_Orgs_Settings__c contactSettings = npsp.UTIL_CustomSettings_API.getContactsSettings();
        contactSettings.npe01__Payments_Enabled__c = false;
        settings.add(contactSettings);
        
        npo02__Households_Settings__c householdSettings = npsp.UTIL_CustomSettings_API.getHouseholdsSettings();
        householdSettings.npo02__Always_Rollup_to_Primary_Contact__c = false;
        settings.add(householdSettings);
        
        npe03__Recurring_Donations_Settings__c donationsSettings = npsp.UTIL_CustomSettings_API.getRecurringDonationsSettings();
        donationsSettings.npe03__Add_Campaign_to_All_Opportunites__c = false;
        settings.add(donationsSettings);
        
        npe4__Relationship_Settings__c relationshipSettings = npsp.UTIL_CustomSettings_API.getRelationshipSettings();
        relationshipSettings.npe4__Allow_AutoCreated_Duplicates__c = false;
        settings.add(relationshipSettings);
        
        npe5__Affiliations_Settings__c affiliationSettings = npsp.UTIL_CustomSettings_API.getAffiliationsSettings();
        affiliationSettings.npe5__Automatic_Affiliation_Creation_Turned_On__c = false;
        settings.add(affiliationSettings);
        
        npsp__Error_Settings__c errorSettings = npsp.UTIL_CustomSettings_API.getErrorSettings();
        errorSettings.npsp__Store_Errors_On__c = false;
        settings.add(errorSettings);
        
        npsp__Batch_Data_Entry_Settings__c dataEntrySettings = npsp.UTIL_CustomSettings_API.getBDESettings();
        dataEntrySettings.npsp__Allow_Blank_Opportunity_Names__c = false;
        settings.add(dataEntrySettings);

        npsp__Household_Naming_Settings__c namingSettings = npsp.UTIL_CustomSettings_API.getHouseholdNamingSettings();
        namingSettings.npsp__Contact_Overrun_Count__c = 0;
        settings.add(namingSettings);
        
        npsp__Allocations_Settings__c allocationSettings = npsp.UTIL_CustomSettings_API.getAllocationsSettings();
        allocationSettings.npsp__Default_Allocations_Enabled__c = false;
        settings.add(allocationSettings);
        
        update settings;
        populateMap();
        return null;
    }
}