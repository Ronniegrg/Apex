public with sharing class SampleClass{
    public static void sampleMethod(){
        // Create account
        Account acc = new Account(Name = 'Test Account');
        insert acc;
        // Create user by calling SampleFutureClass future method to avoid mixed dml
        SampleFutureClass.sampleFuturemethod('demoUser', 'demo@gmail.com.test ', 'test', 'demo@gmail.com ');
    }

}