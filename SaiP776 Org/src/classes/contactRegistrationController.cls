public with sharing class contactRegistrationController {

    @AuraEnabled
    public static Contact saveContact(string firstname,string lastname,string Birthdate,string birthdatetime) {
      
        system.debug('firstname..'+ firstname + 'lastname..'+ lastname +'Birthdate..'+Birthdate + 'birthdatetime..'+birthdatetime);
        Date myDate = Date.valueOf(Birthdate);
        // start converting datetime
       // String birthdatetime = '2018-05-16T05:20';
	String bdAddZero = birthdatetime+':00';
	String updatedBirthDate = bdAddZero.replace('T',' ');
	system.debug('updatedBirthDate.....'+updatedBirthDate);
	Datetime dt1 = Datetime.valueOf(updatedBirthDate);
	system.debug('dt1..'+dt1);


	
        //end conversion datetime
        system.debug('myDate..'+myDate);
        Contact con = new Contact();
           con.firstname = FirstName;
       		con.lastname = lastname;
           con.Birthdate = myDate;
        	con.Birthday_Time__c= dt1;
        
        system.debug('con..'+con);
        insert Con;
         system.debug('con..'+con);
        
        return Con;
    }
}