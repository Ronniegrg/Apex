@isTest
private class CalculateTotalRevenueTest {
    @testSetup
    static void setup() {
        List<Account> accounts = new List<Account>();
        // Create 100 accounts
        for (Integer i= 0; i < 100; i++) {
            accounts.add(new Account(Name='TestAcc - ' + i, Revenue__c= 10));
        }
        insert accounts;
    }

    @isTest static void demoTest() {
        Test.startTest();
        CalculateTotalRevenue batchObj = new CalculateTotalRevenue();
        Id demoBatchId = Database.executeBatch(batchObj);
        Test.stopTest();
        // Assertion logic to check total revenue
        System.assertEquals(1000, [SELECT SUM(Revenue__c) FROM Account WHERE Country__c = 'USA']);
    }
}