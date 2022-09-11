/*
 Example 2: After insert trigger
 Trigger on contact which will create an account record whenever a contact is created without an account.
 */
trigger InsertAccountRelatedToContactTrigger on Contact (after insert){
    List<Account> lstAccToInsert = new List<Account>();
    for (Contact objCon : Trigger.New ){
        //* Check if account is present on contact or not
        if (objCon.AccountId == null){
            Account objAcc = new Account();
            // Add all the required fields on account
            objAcc.Name = objCon.LastName;
            objAcc.Phone = objCon.Phone;
            // Add the all the accounts to list of account
            lstAccToInsert.add(objAcc);
        }
    }
    if (!lstAccToInsert.isEmpty()){
        insert lstAccToInsert;
    }
}