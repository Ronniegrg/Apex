public with sharing class AccountService{
    public static void insertAccountWithSingleContact(String accountName, String contactFirstName, String contactLastName){
        // Create account record
        Account accountObject = new Account(Name = accountName);
        insert accountObject;
        System.debug('Account Id: ' + accountObject.Id);

        // Create contact record under account
        Contact contactObject = getContactObject(contactFirstName, contactLastName);
        contactObject.AccountId = accountObject.Id;
        insert contactObject;
        System.debug('Contact Id: ' + contactObject.Id);
    }

    // private method to return the contact object.
    private static Contact getContactObject(String contactFirstName, String contactLastName){
        return new Contact(FirstName = contactFirstName, LastName = contactLastName);
    }

}