public class Assign2 {
   
    public boolean won{get;set;}
    public boolean lost{get;set;}
    public boolean open{get;set;}
    public list <Opportunity> opty {get;set;}
    public pagereference abc()
    {
    if(won == true)
        {
          opty = [select name,Amount,type,StageName from opportunity where StageName='Closed Won'];
        }	
   else if(lost == true)
    {
       opty = [select name,Amount,type,StageName from opportunity where StageName='Closed Lost'];
    }
    else
    {
       opty=[select name,Amount,type,StageName from Opportunity where StageName IN ('Negotiation/Review', 'Perception Analysis', 'Id. Decision Makers' , 'Value Proposition', 'Needs Analysis', 'Prospecting') ];
    }
    return null;
    }
}