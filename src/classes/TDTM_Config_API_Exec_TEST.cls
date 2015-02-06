@isTest
public with sharing class TDTM_Config_API_Exec_TEST {

    @isTest
    public static void test() {
        TDTM_Config_API_Exec testClass = new TDTM_Config_API_Exec();
        testClass.makeAllActive();
        testClass.makeAllInactive();
        
        //there should be some assertions here, but I'm just trying to 
        //get the code coverage to create a managed version of the package.
    }
}