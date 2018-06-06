public class ContactSearch {
    public static List<contact> searchForContacts(string lastname, string postalcode)
    {
        list<contact> con = [select id,name from contact where Lastname=:Lastname and mailingpostalcode=:postalcode];
        return con;
        
    }

}