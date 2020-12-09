@isTest
public class AccountTriggerTest {
    
    @isTest
    public static void accountCreationCheck(){
        list <Contact> contList = new list<Contact>();
        
        for(integer k = 0; k < 10; k++){
                Contact cont = new Contact (FirstName = 'Test' + k, LastName = 'Jones', MailingCity = '123' + k, MailingState = 'OR');
                contList.add(cont);
			}
        
        try{
            insert contList;
        } catch (dmlException e){
            system.debug(e);
        }
        
        
        list <Account> acctList = new list <Account>();
        for(integer i = 0; i <= 10; i++){
		Account a = new Account(Name = 'Test' + i + ' Jones', BillingCity = '123' + i, BillingState = 'OR');
            acctList.add(a);
        }
        
        try{
            insert acctList;
        } catch (dmlException e){
            system.debug(e);
        }
        
        
    }

}