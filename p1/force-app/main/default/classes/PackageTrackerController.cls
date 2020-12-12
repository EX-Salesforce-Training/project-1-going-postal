public class PackageTrackerController {
    public list<Mail__c> Tracking{get;set;}   
    public string Tnumber{get;set;}
    
    public PackageTrackerController(){
    
           Tracking = [SELECT Name, Tracking_Number__c, Delivery_status__c FROM Mail__c where Tracking_Number__c= :Tnumber];
    
            system.debug(Tracking);

        }
    
        public pagereference TrackingInfo()
        {
    		Tracking = [SELECT Name, Tracking_Number__c, Delivery_status__c FROM Mail__c where Tracking_Number__c= :Tnumber];
            system.debug('Value of Tracking' + Tracking);
            return null;
        }
    
    }