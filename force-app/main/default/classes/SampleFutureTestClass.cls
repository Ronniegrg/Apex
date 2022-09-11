@isTest
public with sharing class SampleFutureTestClass{
    @isTest
    static void sampleTestMethod(){
        // startTest and stopTest block to run future method synchronously
        Test.startTest();
        SampleClass.sampleMethod();
        Test.stopTest();
        // future method will run after Test.stopTest()
        // validate if the account is created by querying the account with
        // the same name
        Account[] accs = [SELECT Id
                          FROM Account
                          WHERE Name = 'Test Account'];
        System.assertEquals(1, accs.size());
    }
}