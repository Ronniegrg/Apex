/**
 * HttpCallOutDemoTest Description
 *
 * @author rounigorgees@mindful-hawk-10jppt.com
 * @version Version number
 */
@isTest
public with sharing class HttpCallOutDemoTest{
    /**
     * getDetailsFromGoogleEndpointTest Description
     *
     *
     *
     * @throws Class name here Write the class description
     */
    @isTest
    static void getDetailsFromGoogleEndpointTest(){
        // In this step, we pass the mock response code and body to the
        // Mock class that will be returned when executing the callout.
        MockHttpResponseGenerator objMockClass = new MockHttpResponseGenerator(200, sampleResponse);
        //! Instruct the Apex runtime to send this fake response.
        Test.setMock(HttpCalloutMock.class, objMockClass);
        Test.startTest();
        //* Execute the callout
        HttpResponse response = HttpCallOutDemo.getDetailsFromGoogleEndpoint('Salesforce');
        Test.stopTest();

        //* Validate the callout response.
        System.assertEquals(response.getStatusCode(), 200, 'HTTP satus code successfully matched!');
        System.assertEquals(response.getBody(), sampleResponse)
    }

}