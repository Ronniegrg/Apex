@isTest
private with sharing class EmployeeOnboardingReminderSchedulerTest{
    @testSetup
    static void setup(){
        List<Account> accounts = new List<Account>();
        // Create 100 accounts
        for (Integer i = 0; i < 100; i++){
            accounts.add(new Account(Name = 'TestAcc-' + i, Revenue__c = 10));
        }
        insert accounts;
    }

    @isTest
    static void demoTest(){
        EmployeeOnboardingReminderScheduler schedObj = new EmployeeOnboardingReminderScheduler();
        String expCron = '0 0 13 * *';
        Test.startTest();
        string jobId = System.schedule('Employee Onboarding Reminder Job Test', expCron, schedObj);
        Test.stopTest();
        System.assertEquals(100, [SELECT COUNT()
                                  FROM Account 
                                  WHERE Name LIKE 'TestAcc%']);
    }

}