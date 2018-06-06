public class AccountHandler {
    public static Account insertNewAccount (String accn){
        try{
            Account a = new Account(Name=accn);
            
            insert a;
            return a;
           
            }
        catch(Exception e)
        {
        return null;    
            
        }
    }
    
}