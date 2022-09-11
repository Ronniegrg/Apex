public with sharing class Flower{
    public static void Test(){
        Account myAcct2 = new Account();
        myAcct2.Name = 'Tina’s Teas';
        myAcct2.AccountNumber = '623956';
        myAcct2.Phone = '555-0129';
        insert myAcct2;
    }

}