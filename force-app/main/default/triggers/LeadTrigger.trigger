trigger LeadTrigger on Lead (before insert) {

    list<Lead> leads = trigger.new;
    for(Lead L: leads) {
        L.leadsource='Email';
        L.Rating='Warm';
    }
}