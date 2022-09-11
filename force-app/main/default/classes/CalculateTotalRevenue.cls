public with sharing class CalculateTotalRevenue implements Database.Batchable<sObject>, Database.Stateful{
    // Variable to capture the total revenue accross all USA accounts
    public Integer totalRevenue = 0;
    public Database.QueryLocator start(Database.BatchableContext bc){
        // Query to fetch all USA accounts
        // (assume total 1000 accounts are fetched from the database)
        String query = 'Select Id, Name, Revenue__c from Account WHERE Country__c=\'USA\'';
        return Database.getQueryLocator(query);
    }

    public void execute(Database.BatchableContext bc, List<Account> scope){
        // process each batch of account records, every scope size is 200 default
        // if the batch is executed using default batch size. Execute will run total 5 times
        for (Account ac : scope){
            totalRevenue = totalRevenue + ac.Revenue__c;
        }
    }

    public void finish(Database.BatchableContext bc){
        System.debug('total revenue=> ' + totalRevenue);
        // logic to send emails to your contacts
    }

}