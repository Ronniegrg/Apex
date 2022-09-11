/*
 Example: for-each statement
 Trigger on Contact whenever the contact is created, then it will create an account in the organization
 */
trigger createNewAccount on Contact (before insert){
    // Create an empty list of Account
    List<Account> accList = new List<Account>();
    // Fetching the contacts from the org
    for (Contact contact : Trigger.new ){
        // Create Account
        Account acc = new Account();
        acc.Name = 'Test ' + contact.LastName + contact.CountOfAccount__c;
        accList.add(acc);
        contact.CountOfAccount__c++;
    }
    // Inserting list of Account
    insert accList;
}