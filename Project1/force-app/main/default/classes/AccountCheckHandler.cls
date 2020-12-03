/*
  * Trigger whenever a contact is made check to see if its details match an existing acct
  *  if it does relate the two unless an acct already exists record triggered flow */

public class AccountCheckHandler {
       @invocablemethod
    public static void checkAccount(){
        list <Account> accList = [SELECT Name, BillingCity, BillingState, BillingStreet, BillingCountry FROM Account];
        list <Contact> contList = [SELECT FirstName, LastName, MailingCity, MailingState, MailingStreet, MailingCountry, AccountId
                                  FROM Contact WHERE AccountId = null];
        //if contact first name last name and address match account contact AccountID = Account Name
       List <Contact> updateList =new list<Contact>();
        for(Contact c : contList){
            //system.debug('Value of Contact List: ' + c);
            for(Account a : accList){
                //catching the creation of Contact but not account
                system.debug('Valuew Of Account List: ' + a);
            If((c.FirstName + ' ' + c.LastName) == a.Name && c.MailingCity == a.BillingCity && /*c.MailingState == a.BillingState
              && c.MailingCountry == a.BillingCountry &&*/ c.MailingStreet == a.BillingStreet){
                system.debug(a);
                  c.AccountId = a.Id;
                 
                  updateList.add(c);
            }
            
            }
            
        }
        update updateList;
    }

}