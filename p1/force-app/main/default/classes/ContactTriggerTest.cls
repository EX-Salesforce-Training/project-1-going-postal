@isTest
public class ContactTriggerTest {
    
    @testSetup
    public static void testSetup(){
        List <Account> acct = new List <Account>();
        
        for(integer i = 0; i < 5; i++){
            Account a = new Account(Name = 'Test ' + i + 'Jones', BillingCity = '123' + i, BillingState = 'OR');
            acct.add(a);
            
        }
         
        
    }
    
    /* @isTest
            public static void ConactCheckTestPostive(){
               Contact[] cont = TestDataCreator.ContactTestSetupWithout(1, 1);
                
                test.startTest();
                database.SaveResult result = database.insert(cont[0]);
                test.stopTest();
                
                system.assert(result.isSuccess());
                
            }*/
    @isTest
    public static void contactCreationCheck(){
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
        
        
    }
    
}