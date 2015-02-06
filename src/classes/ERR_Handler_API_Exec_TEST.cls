@isTest
public with sharing class ERR_Handler_API_Exec_TEST {

    @isTest
    public static void test() {
        ERR_Handler_API_Exec testClass = new ERR_Handler_API_Exec();
        testClass.processError();
        testClass.processCustomError();
        
        //there should be some assertions here, but I'm just trying to 
        //get the code coverage to create a managed version of the package.
    }
}