@isTest
public class AnimalsCalloutTest {
    @isTest static void testGetCallout(){
        StaticResourceCalloutMock mock = new StaticResourceCalloutMock();
        mock.setStaticResource('GetAnimalResource');
        mock.setStatusCode(200);
        mock.setHeader('Content-Type', 'application/json;charset=UTF-8');
        Test.setMock(HttpCalloutMock.class, mock);
        HttpResponse result = AnimalsCallouts.makeGetCallout();
        System.assertNotEquals(null, result, 'The callout returned a null response.');
        System.assertEquals(200, result.getStatusCode(), 'The status code is not 200.');
        System.assertEquals('application/json;charset=UTF-8', result.getHeader('Content-Type'), 'The content type value is not expected');
        Map<String,object> results = (Map<String, object>) JSON.deserializeUntyped(result.getBody());
        List<Object> animals = (List<Object>) results.get('animals');
        System.assertEquals(3, animals.size(), 'The array should contain 3 items.');
    }

}