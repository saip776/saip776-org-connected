public class PickStage {
    public list<opportunity> optys{get;set;}
    public String selectedvalue{get;set;}
    public void pickstage()
    {
        optys = [select name,type,closedate,stagename from opportunity where stagename=:selectedvalue];
    }
    
 public List<SelectOption> getStages()
   {
  List<SelectOption> options = new List<SelectOption>();
        
   Schema.DescribeFieldResult fieldResult = Opportunity.Stagename.getDescribe();
   List<Schema.PicklistEntry> ple = fieldResult.getPicklistValues();
        
   for( Schema.PicklistEntry f : ple)
   {
      options.add(new SelectOption(f.getLabel(), f.getValue()));
   }       
   return options;
}
}