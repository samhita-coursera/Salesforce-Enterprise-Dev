public with sharing class UpdateCaseAndSaveAttachments {
	public Case case2updt {get;set;}
    public ApexPages.StandardController stdController;
    public Attachment att1 {get; set;}
    public Attachment att2 {get; set;}
    public Attachment att3 {get;set;}
    public Attachment att4 {get;set;}
    public List<Attachment> attList = new List<Attachment>();
        
        
    public UpdateCaseAndSaveAttachments(ApexPages.StandardController stdController){
	    this.case2updt = (Case)stdController.getRecord();
	    this.stdController = stdController;
	    att1 = new Attachment();
	    att2 = new Attachment();
	    att3 = new Attachment();
	    att4 = new Attachment();
	    att4.name = 'Programs Specification Form';
	}
        
    public PageReference updateRecordAndCreateAttachments()
	{
	    // update the record
	    try{
		    update case2updt;
		    if(case2updt.Opportunity__r != null)
		    	update case2updt.Opportunity__r;
    	}
    	catch(DMLException e){
		    ApexPages.addMessage(new ApexPages.message(ApexPages.severity.ERROR,'Error updating case details'));
		    return null;
    	}
        // update parent ids on attachments
        att1.ParentId = case2updt.Id;
        att2.ParentId = case2updt.Id;
        att3.ParentId = case2updt.Id;
        att4.ParentId = case2updt.Id;
        //check for att4 not null
        if(att4.body == null)
        {
	        ApexPages.addMessage(new ApexPages.message(ApexPages.severity.ERROR,'Please upload Programs Specification Form'));
	        return null;
        }
        try{
        	if(att1.body != null && att1.name.length() > 0)
        	{
        		attList.add(att1);
            }
            if(att2.body != null && att1.name.length() > 0)
            {
                attList.add(att2);
            }
            if(att3.body != null && att1.name.length() > 0)
            {
                attList.add(att3);
            }  
            attList.add(att4);
            insert attList;
        }
        catch (DMLException e) {
	        ApexPages.addMessage(new ApexPages.message(ApexPages.severity.ERROR,'Error uploading attachment'));
	        return null;
        } 
        finally
        {
	        attList = new List<Attachment>();
	        att1 = new Attachment();
	        att2 = new Attachment();
	        att3 = new Attachment();
	        att4 = new Attachment();
	        att4.name = 'Programs Specification Form';
        }
        ApexPages.addMessage(new ApexPages.message(ApexPages.severity.INFO,'Attachment uploaded successfully'));
        // View the record
        return new PageReference('/'+case2updt.Id);
    }
    
}