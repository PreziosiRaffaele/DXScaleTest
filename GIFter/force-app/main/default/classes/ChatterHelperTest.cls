@isTest
public without sharing class ChatterHelperTest {
    @isTest
    private static void getChatterGroupsTest(){
        Test.setMock(HttpCalloutMock.class, new ChatterHelperTest.ChatterHelperMock());
        Test.startTest();
        ChatterHelper.getChatterGroups('Test', 'Test');
        Test.stopTest();
    }

    public class ChatterHelperMock implements HttpCalloutMock {
        public HTTPResponse respond(HTTPRequest req) {
            HttpResponse res = new HttpResponse();
            res.setHeader('Content-Type', 'application/json');
            res.setBody('{"example":"test"}');
            res.setStatusCode(200);
            return res;
        }
    }
}
