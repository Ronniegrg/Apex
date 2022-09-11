trigger AccountTrigger on Account (before delete){
    // Identify if the trigger is running in before delete context
    if (Trigger.isBefore && Trigger.isDelete){
        // SOQL for loop to fetch open contacts associated with the account.
        // Prepare the set of account ids.
        Set<Id> accountIdFromContacts = new Set<Id>();
        for (Contact objContact : [SELECT Id, AccountId
                                   FROM Contact
                                   WHERE AccountId In:Trigger.old]){
            accountIdFromContacts.add(objContact.AccountId);
        }

        // Iterate through the accounts to see if any contacts exist.
        for (Account eachAccount : Trigger.old){
            if (accountIdFromContacts.contains(eachAccount.Id)){
                eachAccount.addError('Cannot delete account with related contacts.');
            }
        }
    }
}