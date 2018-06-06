public class ctlDepPickLst {
public String country {get;set;}
public String state {get;set;}
public List<SelectOption> getCountries()
  {
        List<SelectOption> options = new List<SelectOption>();
        options.add(new SelectOption('None','--- Select ---'));        
        options.add(new SelectOption('INDIA','India'));
        options.add(new SelectOption('PAK','Pakistan'));
        return options;
  }
public List<SelectOption> getStates()
    {
      List<SelectOption> options = new List<SelectOption>();
        if(country == 'PAK')
        {       
            options.add(new SelectOption('Lahore','Lahore'));
            options.add(new SelectOption('Karachi','karachi'));
            options.add(new SelectOption('Islamabad','Islamabad'));
        }
        else if(country == 'INDIA')
        {       
          options.add(new SelectOption('Bihar','Bihar'));
           options.add(new SelectOption('Kerala','Kerala'));
           options.add(new SelectOption('Manipur','Manipur'));
        }
        else
        {
          options.add(new SelectOption('None','--- Select ---'));
        }      
        return options;
    }       
}