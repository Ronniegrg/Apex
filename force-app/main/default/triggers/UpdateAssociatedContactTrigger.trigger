/*
 Example 3: Before insert/before update trigger
 Trigger on account to ensure that all the contacts associated with each account record are updated
 every time an update has been made on the corresponding account record.
 */
trigger UpdateAssociatedContactTrigger on Account (before insert, before update){
    List<Contact> lstConcToUpdate = new List<Contact>();
    // Iterate all the contacts associated with incoming accounts
    List<Contact> lstOfAssociatedCons = [SELECT Id, Description, Saluation, FirstName, LastName, Email
                                         FROM Contact
                                         WHERE AccountId = :Trigger.newMap.keySet()];

    for (Contact objCon : lstOfAssociatedCons){
        // Update contact's description by appending salutatoin, firstname & lastname altogether
        objCon.Description = objCon.Salutation + ' ' + objCon.FirstName + ' ' + objCon.LastName;
        lstConcToUpdate.add(objCon);
    }
    if (!lstConcToUpdate.isEmpty()){
        update lstConcToUpdate;
    }
}