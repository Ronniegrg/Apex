/*
    SFEvent Class
    Track Number of Attendees across world
    Track Number of Attendees in the country
*/

public with sharing class SalesforceEvent {
   
   public integer CountryAttendees = 0;
   public integer WorldWideAttendees = 0;

   public void attendeesParticipated() {
        CountryAttendees++;
        WorldWideAttendees++;
   }
}