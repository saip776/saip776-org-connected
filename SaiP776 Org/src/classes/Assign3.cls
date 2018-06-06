public class Assign3 {
public string pick{get;set;}
    
    public list <contact> con {get;set;}
    public pagereference tod()
    {
        if(pick == 'cwe')
        {
            con = [select FirstName,LastName,Email from Contact where Email != null];
        }
        else if(pick == 'cwoe')
        {
            con = [select FirstName,LastName,Email from Contact where Email = null];
        }
        else
        {
            con = [select FirstName,LastName,Email from Contact];
        }
        return null;
    }

}