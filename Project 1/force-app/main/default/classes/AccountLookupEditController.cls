public class AccountLookupEditController {
    public List<List<SObject>> contList {get;set;}
    public list<Contact> contactList {get; set;}
    public List<Address__c> addList {get;set;}

    public AccountLookupEditController() {
        String uName = UserInfo.getName();
        contList = [FIND :uName In All FIELDS Returning Contact(FirstName, LastName, MailingStreet, MailingCity, MailingState, MailingPostalCode, OwnerId),
                                         Address__c(Street_Name__c, City__c, State__c, Zip_Code__c)];
        //[SELECT FirstName, LastName, MailingStreet, MailingCity, MailingState, MailingPostalCode, OwnerId FROM Contact WHERE (FirstName + LastName Like :uName)];
        contactList = contList[0];
        system.debug(contactList);
        addList = contList[1];
        system.debug(addList);
    }

    public void contSave(){
        
        upsert contactList;
        upsert addList;
    }
}