/*
 Example: while statement
 Trigger on Contact, which will create the account when the countOfAccount__c
 filed is less than 3 using the while statment
 */
trigger createAccount on Contact (before insert){
    // Creating a empty list of Account
    List<Account> accList = new List<Account>();
    // Fetching all the contacts from the org
    for (Contact contact : Trigger.new ){
        do{
            // Creating a new Account
            Account acc = new Account();
            acc.Name = 'Test ' + contact.LastName + contact.CountOfAccount__c;
            accList.add(acc);
            contact.CountOfAccount__c++;
        }
        while (contact.CountOfAccount__c < 3);
    }
    // Inserting Account
    insert accList;
}