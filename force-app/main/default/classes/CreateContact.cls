/**
 * createContact Description
 * Example: return statement
 * Apex class when the NumberOfEmployees on Account is less than 5 then it will return a list of contact
 * @author rounigorgees@mindful-hawk-10jppt.com
 * @version Version number
 */
public with sharing class createContact{
    public static List<Contact> contactCreation(){
        // Creating an empty list of Contact
        List<Contact> conList = new List<Contact>();
        // Query the account from the org
        Account acc = [SELECT Name, NumberOfEmployees
                       from Account
                       where Name = 'TestAccount '
                       LIMIT 1];
        // Iterating the loop
        for (Integer numOfEmployee = acc.NumberOfEmployees; numOfEmployee < 5; numOfEmployee++){
            // Creating Contact
            Contact con = new Contact();
            con.LastName = 'Test ' + acc.Name + numOfEmployee;
            conList.add(con);
        }
        // Return the list of Contact
        return conList;
    }

}