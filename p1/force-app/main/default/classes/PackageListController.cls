public with sharing class PackageListController {
     public list<Mail__c> mailList {get;set;}
     string[]  deliveryStatus = new string[]{};
    
    public PackageListController() {
        String uname = UserInfo.getName();
       mailList = [SELECT Name, Tracking_Number__c, Delivery_Status__c FROM Mail__c WHERE Name LIKE :uname];

    }

    public list<SelectOption> outForDelivery(){
        List<SelectOption> seloptions = new List<SelectOption>();
            selOptions.add(new SelectOption('All','All'));
            selOptions.add(new SelectOption('Processing', 'Processing'));
            seloptions.add(new SelectOption('Out For Delivery', 'Out for Delivery'));
            selOptions.add(new SelectOption('Delivered', 'Delivered'));
            selOptions.add(new SelectOption('Missing', 'Missing'));
            return selOptions;
    }

    public string[] getdeliveryStatus(){
        return deliveryStatus;
    }

    public void setdeliveryStatus(string[] DStatus){
        this.deliveryStatus = deliveryStatus;
    }

    /*public void outForDelv(){
        String uname = UserInfo.getName();
       mailList = [SELECT Delivery_Address__c, Delivery_Status__c FROM Mail__c WHERE Name LIKE :uname && Delivery_Status__c = 'Out for Delivery'];
    }*/

}