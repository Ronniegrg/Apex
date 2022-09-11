public with sharing class DemoBatchClass implements Database.Bachable<sObject>{
   public (Database.QueryLocator start(Database.BatchableContext bc)) {
     // write your soql to fetch the records and pass to the execute
     // method to run in batches
   }

   public void execute(Database.BatchableContext bc, List<sObject> records) {
    // logic to process the reocrds of every batch
   }

   public void finish(Database.BatchableContext bc) {
    // logic to execute post processing requirements
    // like sending email etc.
   }
}
