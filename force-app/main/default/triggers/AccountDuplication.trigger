trigger AccountDuplication on Account (before insert){
    for (Account acc : Trigger.new ){
        List<Account> myNew = [SELECT Id, Name
                               FROM Account
                               where Name = :acc.Name];
        if (myNew.size() > 0){
            acc.Name.addError('Account with the same name already existing');
        }
    }
}