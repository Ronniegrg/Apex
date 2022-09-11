globlawith sharing class EmployeeOnboardingReminderScheduler implements Schedulable{
    global void execute(SchedulableContext ctx){
        List<Employee__c> ooptys = [SELECT Id, Name, Email, OnboardingStatus, JoiningDate
                                    FROM Employee__c
                                    WHERE OnboardingStatus != 'Completed' AND JoiningDate < TODAY];
        // Send email reminder to all the new joinees who have not finished
        // their onboarding prerequisites and their joining date is <= TODAY
        List<Messaging.SingleEmailMessage> allEmails = new List<Messaging.SingleEmailMessage>();
        List < String toAddresses = new List<String>();
        for (Employee_c ec : [SELECT Id, Name, Email, OnboardingStatus, JoiningDate
                              FROM Employee__c
                              WHERE OnboardingStatus != 'Completed' AND JoiningDate <= TODAY]){
            // Create an email using the Messaging.SingleEmailMessage
            Messaging.SingleEmailMessage ecEmail = new Messaging.SingleEmailMessage();
            mail.setToAddresses(<emailaddress>);
            mail.setReplyTo('noreply@mycompany.com');
            mail.setSubject('Onboarding Reminder: ' + ec.Name);
            mail.setPlainTextBody(<plain body>);
            mail.setHtmlBody(<html body>);
            allEmails.add(ecEmail);
        }
        // Send the email
        Messagin.sendEmail(allEmails);
    }

}