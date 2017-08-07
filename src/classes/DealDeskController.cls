public with sharing class DealDeskController {
    public Opportunity Opty;
    public ApexPages.StandardController controller;
    
    public DealDeskController(ApexPages.StandardController controller){
        this.controller = controller;
        this.Opty = (Opportunity)controller.getRecord();
    }

    public PageReference saveRecord() {
        PageReference cancel = controller.cancel();
        update Opty;
        if(Opty.Account != null)
            update Opty.Account;
        return cancel;
    }
}