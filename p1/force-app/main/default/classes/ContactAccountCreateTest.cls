@isTest
public class ContactAccountCreateTest {
	/*@testSetup
    public static void TestSetupMethod(){
        Contact joe = new Contact();
        joe.FirstName = 'Joe';
        joe.LastName = 'Driver';
        insert joe;
        system.debug('Joe/s Acct ID: ' + joe.AccountId + 'This one should be null');
        system.debug('Joe/s Acct ID: ' + joe.AccountId + 'This one should be have an I');
        
    }*/
    
    @isTest
    public static void createAccountsTest(){
		/*create dummy contact
        Contact joe = new Contact();
        joe.FirstName = 'Joe';
        joe.LastName = 'Driver';
        insert joe;
       
       //check dummy contact has associated account 
       ContactAccountCreate.createAccounts();
        joe = [SELECT Id, AccountId FROM Contact WHERE FirstName = 'Joe' AND LastName = 'Driver'];
        Account acctID = [SELECT Id FROM ACCOUNT WHERE Name = 'Joe Driver' ];
        system.debug(joe.AccountId);
        system.debug(acctID);
       //system.assertEquals(joe.AccountId, AcctId);
     */   
    }
    
    
}