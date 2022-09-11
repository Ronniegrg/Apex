/**
 * MockHttpResponseGenerator Description
 *
 * Example: This is a Http Mock class that implments the HttpCalloutMock interface to test HTTP callouts.
 * Note: The mock class that implements the HttpCalloutMock interface can be either global or public.
 * You can annotate this classs with @isTest since it will be used only in test context.
 *
 * @author rounigorgees@mindful-hawk-10jppt.com
 * @version Version number
 */
@isTest
public with sharing class MockHttpResponseGenerator{
	/**
	 * statusCode Description
	 *
	 */
	private Integer statusCode;
	/**
	 * responseBody Description
	 *
	 */
	private String responseBody;
	/**
	 * MockHttpResponseGenerator Description
	 *
	 * @param statusCode (Integer): Write the parameter description
	 * @param responseBody (String): Write the parameter description
	 *
	 * @throws Class name here Write the class description
	 */
	public MockHttpResponseGenerator(Integer statusCode, String responseBody){
		this.statusCode = statusCode;
		this.responseBody = responseBody;
	}

	/**
	 * respond Description
	 *
	 * @param req (HttpRequest): Write the parameter description
	 *
	 * @return HttpResponse: Write the return description
	 *
	 * @throws Class name here Write the class description
	 */
	public HttpResponse respond(HttpRequest req){
		HttpResponse res = new HttpResponse();
		// This is just for test
		res.setHeader('Content-Type', 'application/json');
		res.setStatusCode(this.statusCode);
		res.setBody(this.responseBody);
		return res;
	}

}