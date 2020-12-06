public with sharing class AccountLookupEditController {
    //public list<Contact> contList {get;set;}
    //public list<Address__c> addList{get;set;}

    public list<Wrapper> wrapperList {get;set;}

    public AccountLookupEditController(){
        id uid = UserInfo.getUserId();
        for(Contact c : [SELECT FirstName, LastName, MailingStreet, MailingCity, MailingState, MailingPostalCode, OwnerId FROM Contact WHERE OwnerId = :uid]){
            Wrapper con = new Wrapper();
            con.cont = c;
            wrapperList.add(con);
        }
        for(Address__c a : [SELECT Street_Name__c, City__c, State__c, Zip_Code__c FROM Address__c]){
            Wrapper addr = new Wrapper();
            addr.add = a;
            wrapperList.add(addr);
            }
    }

   /* public AccountLookupEditController() {
        id uid = UserInfo.getUserId();
        contList = [SELECT FirstName, LastName, MailingStreet, MailingCity, MailingState, MailingPostalCode, OwnerId FROM Contact WHERE OwnerId = :uid];
        addList = [SELECT Street__c, City__c, State__c, Zip_Code__c FROM Address__c];
    }

    public void contSave(){
        upsert cont;
    }*/
    
    public with sharing class wrapper {
    Public Contact cont {get;set;}
    Public Address__c add {get;set;}
    }
    
}
