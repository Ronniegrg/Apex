// Example: Apex class that makes a callout to an external system.
public with sharing class HttpCallOutDemo{
	// Method that invokes a get request.
	public static HttpResponse getDetailsFromGoogleEndpoint(String searchString){
		HttpRequest req = new HttpRequest();
		req.setEndpoint('http://www.google.com/search?q=' + searchString);
		req.setMethod('GET');
		Http h = new Http();
		HttpResponse res = h.send(req);
		return res;
	}

}