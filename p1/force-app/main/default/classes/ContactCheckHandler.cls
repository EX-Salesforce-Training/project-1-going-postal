/*
  * Trigger whenever a contact is made check to see if its details match an existing acct
  *  if it does relate the two unless an acct already exists record triggered flow */

public class ContactCheckHandler {
        @invocablemethod
    public static void checkAccount(list <contact> ContactList){
        list <Account> accList = [SELECT Name, BillingCity, BillingState, BillingStreet, BillingCountry FROM Account];
       System.debug(accList);
        list <Contact> contList = [SELECT FirstName, LastName, MailingCity, MailingState, MailingStreet, MailingCountry, AccountId
                                  FROM Contact WHERE AccountId = null];

        //if contact first name last name and address match account contact AccountID = Account Name
       List <Contact> updateList =new list<Contact>();
        for(Contact c : ContactList){
            system.debug('Value of Contact List: ' + c);
            for(Account a : accList){
                //catching the creation of Contact but not account
                //system.debug('Value Of Account List: ' + a);
                system.debug(a);
            If((c.FirstName + ' ' + c.LastName) == a.Name && c.MailingCity == a.BillingCity && /*c.MailingState == a.BillingState
              && c.MailingCountry == a.BillingCountry &&*/ c.MailingStreet == a.BillingStreet){
                
                  c.AccountId = a.Id;
                 
                  updateList.add(c);
            }
            
            }
            
        }
        update updateList;
    }

}