// Queueable interface is implemented using implements keyword
public with sharing class DemoQueueableClass{
    // execute method is inherited and defined as part of Queueable interface
    public void execute(QueueableContect context){
        // create a test account record
        Account acc = new Account(Name = 'Demo Account', Employees = 1000, Revenue__c = 10000000);
        insert acc;
    }

}