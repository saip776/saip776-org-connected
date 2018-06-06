public class searchAll {
  
    public string search {get; set;}
    public list<account> acc{get; set;}
    public list<Contact> con{get; set;}
    public list<Lead> lead{get; set;}
    public list<Opportunity> opp{get; set;}
    public PageReference account(){
       
      //  acc = new list<account> ([select Name, Type,Phone from Account where name =:j]);
       // acc = (List<Account>)[FIND :search IN ALL FIELDS RETURNING Account(Id, type, Name, phone)] [0];
    List<List<sObject>> searchList = [FIND :search IN ALL FIELDS 
    RETURNING Account(Id, type, Name, phone),Contact(FirstName,LastName,Department,email,phone,name), 
        Lead(Id, Name,Company,Phone), Opportunity(Id, Name,StageName,Amount,Type)];
        Account[] searchAccounts = (Account[])searchList[0];
        Contact[] searchContacts = (Contact[])searchList[1];
        Lead[] searchLeads = (Lead[])searchList[2];
        Opportunity[] searchOpportunity = (Opportunity[])searchList[3];
        acc= searchAccounts;
        con=searchContacts;
        lead=searchLeads;
        opp=searchOpportunity;
        system.debug('Search Value' +search + acc);
        return null;
        
    }
    
    
    public void querycontacts(){
         
        con= [select FirstName,LastName,Department,email,phone,name from contact ];
    }
}