@isTest
public with sharing class AccountUtilityTest{
    // The method accepts the count of accounts and contacts to insert.
    public static List<Account> createAccountsWithContacts(Integer numberOfAccounts, Integer numberOfRelatedContacts){
        // Insert accounts.
        List<Account> lstAccountsToInsert = new List<Account>();
        for (Integer i = 0; i < numberOfAccounts; i++){
            lstAccountsToInsert.add(new Account(Name = 'Dummy Account ' + i));
        }
        insert lstAccountsToInsert;

        // create contacts related to the accounts.
        if (numberOfRelatedContacts != null && numberOfRelatedContacts > 0){
            List<Contact> lstRelatedContactsToInsert = new List<Contact>();
            for (Account eachAccount : lstAccountsToInsert){
                for (Integer i = 0; i < numberOfRelatedContacts; i++){
                    lstRelatedContactsToInsert.add(new Contact(LastName = 'DummyLastName ' + i, AccountId = eachAccount.Id));
                }
            }
            insert lstRelatedContactsToInsert;
        }
        return lstAccountsToInsert;
    }

}