public class M5 {
string ind;
    list <account> acts;
    
    public pagereference searchacts()
    {
        acts = [select name, type, industry, phone from Account where industry=:ind];
        return null;
    }
    
    public list<account> getacts()
    {
        return acts;
    }
    
    public string getind()
    {
        return ind;
    }
    
    public void setind(string s)
    {
      ind = s;  
    }

}