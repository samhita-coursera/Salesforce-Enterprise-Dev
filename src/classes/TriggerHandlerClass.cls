public with sharing class TriggerHandlerClass 
{
    public TriggerHandlerClass(){ 
    }

    public void OnCustomerPulseBeforeInsert(List<Customer_Pulse__c> newList){
        // EXECUTE BEFORE INSERT LOGIC                  
        Set<String> client_slug_set = new Set<String>();
        Map<String,Case> case_map = new Map<String,Case>();
        for(Customer_Pulse__c cp: newList) {
            client_slug_set.add(cp.Enterprise_Customer_Slug__c);
        }
        for(Case c: [Select id, AccountId, Client_Slug__c from Case where Client_Slug__c IN :client_slug_set]) {
            case_map.put(c.Client_Slug__c,c);
        }
        for(Customer_Pulse__c cp: newList) {
            Case c1 = case_map.get(cp.Enterprise_Customer_Slug__c); 
            if(c1 != null) cp.AccountName__c = c1.AccountId;         
        }       
    }

    //Execute this method before insertion of leads
    public void OnLeadBeforeInsert(List<Lead> newLeads) {
        List<Lead> leadsToUpdate = new List<Lead>();   
        for (Lead l: newLeads) {
            if(l.Industry != Null){
                leadsToUpdate.add(l);
            }
        }
        if(leadsToUpdate.size() > 0) UpdateLeadsWithIndustryGroup(leadsToUpdate);

    }

    //Execute this method before updating leads
    public void OnLeadBeforeUpdate(List<Lead> newLeads) {
        List<Lead> leadsToUpdate = new List<Lead>();    
        for (Lead l: newLeads) {
            if(l.Industry_Group__c == Null && l.Industry != Null){
                leadsToUpdate.add(l);
            }
        }
        if(leadsToUpdate.size() > 0) UpdateLeadsWithIndustryGroup(leadsToUpdate);
    }

    public void UpdateLeadsWithIndustryGroup(List<Lead> leadsToUpdate) {
        Map<String,String> ib_map = new Map<String,String>();
        for(IndustryBuckets__c ib: IndustryBuckets__c.getall().Values()){
            ib_map.put(ib.Industry__c, ib.Industry_Group__c);
        }
        for(Lead l: leadsToUpdate) {
            if(l.Industry_Group_Clearbit__c != null) {
                l.Industry_Group__c = l.Industry_Group_Clearbit__c;
            } else if(ib_map.keySet().Contains(l.Industry)){
                l.Industry_Group__c = ib_map.get(l.Industry);                
            }
        }
    }

    
}