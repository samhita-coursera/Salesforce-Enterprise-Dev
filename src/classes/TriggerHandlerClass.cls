public with sharing class TriggerHandlerClass 
{
    public TriggerHandlerClass(){ 
    }

    public void OnBeforeInsert(List<Customer_Pulse__c> newList){
        // EXECUTE BEFORE INSERT LOGIC                  
        Set<String> client_slug_set = new Set<String>();
        Map<String,Case> case_map = new Map<String,Case>();
        List<Customer_Pulse__c> cp_toUpdate = new List<Customer_Pulse__c>();
        for(Customer_Pulse__c cp: newList) {
            client_slug_set.add(cp.Enterprise_Customer_Slug__c);
        }
        for(Case c: [Select id, Account.id, Client_Slug__c from Case where id IN :client_slug_set]) {
            case_map.put(c.Client_Slug__c,c);
        }
        for(Customer_Pulse__c cp: newList) {
            cp.AccountName__c = case_map.get(cp.Enterprise_Customer_Slug__c).Account.id;
            cp_toUpdate.add(cp);
        }
        Database.update(cp_toUpdate);
        
    }

    public void OnAfterInsert(Object[] newObjects){
        // EXECUTE AFTER INSERT LOGIC
    }

    public void OnBeforeUpdate(Object[] oldObjects, Object[] updatedObjects){
        // BEFORE UPDATE LOGIC
    }

    public void OnAfterUpdate(Object[] oldObjects, Object[] updatedObjects){
        // AFTER UPDATE LOGIC
    }

    public void OnBeforeDelete(Object[] ObjectsToDelete){
        // BEFORE DELETE LOGIC
    }

    public void OnAfterDelete(Object[] deletedObjects){
        // AFTER DELETE LOGIC
    }

    public void OnUndelete(Object[] restoredObjects){
        // AFTER UNDELETE LOGIC
    }
}
    