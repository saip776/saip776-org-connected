@isTest
class TestRestrictContactByName {
    @isTest static void TestLastNameOnContactnegative()
    {
       //List con = new List();
        Contact c1 = new Contact(LastName = 'sai');
        insert c1;
        Test.startTest();
        Database.SaveResult result = Database.insert(c1, false);
        Test.stopTest();
        System.assert(!result.isSuccess());
        System.assert(result.getErrors().size() > 0);
        System.assertEquals('Contacts cannot be created with INVALID name',result.getErrors()[0].getMessage());
       // Contact c2 = new Contact(LastName = 'INVALIDNAME');
        //con.add(c1);
        //con.add(c2);
    }
    
     @isTest static void TestLastNameOnContactpostive()
    {
       //List con = new List();
        Contact c2 = new Contact(LastName = 'Invalidname');
        insert c2;
         Test.startTest();
        Database.SaveResult result = Database.insert(c2, false);
        Test.stopTest();
        System.assert(!result.isSuccess());
        System.assert(result.getErrors().size() > 0);
        System.assertEquals('Contacts cannot be created with INVALID name',result.getErrors()[0].getMessage());
       // Contact c2 = new Contact(LastName = 'INVALIDNAME');
        //con.add(c1);
        //con.add(c2);
    }
}