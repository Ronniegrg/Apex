@isTest(SeeAllData = false)
public with sharing class AccountTriggerTest{
    @isTest
    static void deleteSingleAccountWithoutContactsTest(){
        List<Account> lstAccounts = AccountUtilityTest.createAccountsWithContacts(1, 0);
        Test.startTest();
        List<Database.DeleteResult> result = Database.delete (lstAccounts, false);
        Test.stopTest();
        List<Account> lstAccountsAfterDelete = [SELECT Id
                                                FROM Account];
        // Validating the trigger outcome.
        System.assertEquals(lstAccountsAfterDelete.size(), 0);
    }

    @isTest
    static void deleteMultipleAccountWithoutContactTest(){
        // Call the utility class to create 200 accounts.
        List<Account> lstAccounts = AccountUtilityTest.createAccountsWithContacts(200, 0);
        Test.startTest();
        List<Database.DeleteResult> result = Database.delete (lstAccounts, false);
        Test.stopTest();
        List<Account> lstAccountsAfterDelete = [SELECT Id
                                                FROM Account];
        // Validating the trigger outcome.
        System.assertEquals(lstAccountsAfterDelete.size(), 0);
    }

}