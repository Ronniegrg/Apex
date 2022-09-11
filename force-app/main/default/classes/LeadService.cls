public with sharing class LeadService{
    public static void createLead(String lastName, String company){
        Lead objLead = new Lead(LastName = lastName, Company = company);
        insert objLead;
        System.debug(objLead);
    }

}