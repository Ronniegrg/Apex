trigger PrefixDoctor on Lead (before insert, before update){
    for (Lead l : Trigger.new ){
        if (Trigger.isBefore){
            l.firstname = 'Dr. ' + l.firstName;
            break;
        }
    }
}