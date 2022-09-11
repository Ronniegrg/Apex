/*
 Example: If statement
 Trigger on Contact to populate description when contact status i open then description is 'Contact created successfully with status open' otherwise the description is 'Contact create successfully without status open'
 */
trigger beforeInsertContact on Contact (before insert){
    // Fetching all the contacts from the org
    for (Contact contact : Trigger.new ){
        // If the contact stattus is open the description will update
        if (contact.Status__c == 'Open'){
            contact.Description = 'Contact created successfully with status open';
        }
        // If the contact status is Resolved the description will update
        else if (contact.Status__c == 'Resolved'){
            contact.Description = 'Contact created successfully with status resolved';
        } else{
            contact.Description = 'Contact created successfully without status open and resolved';
        }
    }
}