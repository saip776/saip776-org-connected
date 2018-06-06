public with sharing class BSL1Controller {
    public String selectedvalue{get;set;}
    public list<Opportunity> Opps{get;set;}
    public List<selectOption> getSelectOptions(){
        List<selectOption> options = new List<selectOption>();
        options.add(new selectOption('-- Select --','-- Select --'));
        options.add(new selectOption('Prospecting','-- Prospecting --'));
        options.add(new selectOption('Qualification','-- Qualification --'));
        options.add(new selectOption('Need Analysis','-- Need Analysis --'));
        options.add(new selectOption('Closed Won','-- Closed Won --'));
        options.add(new selectOption('Closed Lost','-- Closed Lost --'));
        return options;
    }
    
    public pageReference oppList()
    {
        if(selectedvalue !=null)
        {
            Opps= [select name ,type ,CloseDate,Opportunity.Account.Name,ExpectedRevenue from Opportunity where StageName=: selectedvalue];
        }
        return null;
    }

}