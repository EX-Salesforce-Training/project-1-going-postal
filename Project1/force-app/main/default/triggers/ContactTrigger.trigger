trigger ContactTrigger on Contact (before insert, before update, before delete, after insert, after update, after delete, after undelete) {
    
    If(trigger.isInsert){
        if(trigger.isBefore){
        
    ContactCheckHandler.checkAccount(trigger.new);
        }
    }
    
    
     /* Trigger whenever a contact is made check to see if its details match an existing acct
     *  if it does relate the two unless an acct already exists record triggered flow */
    
    //public void contactTriggerOperation(){
    //trigger i = trigger.operationtype;
        
       /* switch on i{
            when system.TriggerOperation(BEFORE_INSERT){
                
            }
            when BEFORE_UPDATE{
                
            }
            when BEFORE_DELETE{
                
        }
            when AFTER_INSERT{
                contactCheckHandler.updateList();
        }
            when AFTER_UPDATE{
                
            }
            when AFTER_DELETE{
                
            }
            when AFTER_UNDELETE{
                
           }
        }
    }*/
    
}