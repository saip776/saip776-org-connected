public with sharing class RandomContactFactory 
{
    public static list<Contact> generateRandomContacts (Integer co, string Ln)
    {
        list<contact> con = new list<contact>();
        for(integer i=0;i<co;i++)
        {
            contact c = new contact(FirstName = 'Test'+ i, LastName = Ln);
            con.add(c);
         }
        return con;
    }

}