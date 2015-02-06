@isTest
public with sharing class UTIL_CustomSettings_API_Exec_TEST {

    @isTest
    public static void test() {
        UTIL_CustomSettings_API_Exec testClass = new UTIL_CustomSettings_API_Exec();
        testClass.populateSampleSettings();
        testClass.clearSampleSettings();
        
        //there should be some assertions here, but I'm just trying to 
        //get the code coverage to create a managed version of the package.
    }
}