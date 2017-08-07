/**
 * This class contains unit tests for validating the behavior of Apex class UpdateCaseAndSaveAttachments.
 */
@isTest
private class UpdateCaseAndSaveAttachmentTest {

    static testMethod void updateRecordAndCreateAttachmentsTest() {
    	Account testAcnt = new Account(Name='testCaseAcnt', Industry='Education', Customer_Success_Account_Tier__c='Standard');
        insert testAcnt;
    	Opportunity testOpty = new Opportunity(Name= 'TestOptyforCase', StageName ='Qualified Opportunity', AccountId = testAcnt.Id, CloseDate= System.today()+7, Amount=300, Type_of_Agreement__c = 'Licenses', Launch_Date__c=System.today()+7, Total_Number_of_Users__c = 30);
        insert testOpty;
        Case testCase = new Case(Opportunity__c = testOpty.Id, Client_Slug__c= 'TestClientSlug', Status='New', Origin='Email');
        insert testCase;
        
        PageReference pageRef = Page.Case_Implementation;
        Test.setCurrentPage(pageRef);
        ApexPages.Standardcontroller so = new ApexPages.Standardcontroller(testCase);
        ApexPages.currentPage().getParameters().put('Id',testCase.Id);
        UpdateCaseAndSaveAttachments csAtt = new UpdateCaseAndSaveAttachments(so);
        System.assert(csAtt != null);
       
        Attachment dummyProgForm = csAtt.att4;
        //dummyProgForm.Name='Programs Specification Form';
        Blob bodyBlob=Blob.valueOf('Unit Test Attachment Body');
        dummyProgForm.body=bodyBlob;
        csAtt.att4 = dummyProgForm;
        
        Attachment dummySqrLogo = csAtt.att1;
        System.debug(dummySqrLogo.ParentId);
        dummySqrLogo.Name='Unit Test Square Logo';
        Blob bodyBlobDummy1=Blob.valueOf('Unit Test Square Logo');
        dummySqrLogo.body=bodyBlobDummy1;
        csAtt.att1 = dummySqrLogo;
        
        Attachment dummyRectangularLogo = csAtt.att2;
        System.debug(dummyRectangularLogo.ParentId);
        dummyRectangularLogo.Name='Unit Test Rectangular Logo';
        Blob bodyBlobDummy2=Blob.valueOf('Unit Test Rectangular Logo');
        dummyRectangularLogo.body=bodyBlobDummy2;
        csAtt.att2 = dummyRectangularLogo;
   
        Attachment dummyBanner = csAtt.att3;
        System.debug(dummyBanner.ParentId);
        dummyBanner.Name='Unit Test Baner';
        Blob bodyBlobDummy3=Blob.valueOf('Unit Test Baner');
        dummyBanner.body=bodyBlobDummy3;
        csAtt.att3 = dummyBanner;
        
        testOpty = [SELECT Name, Id, Launch_Date__c, Type_of_Agreement__c, Total_Number_of_Users__c FROM Opportunity where Id= :testCase.Opportunity__c];
        csAtt.case2updt.Opportunity__r = testOpty;
        PageReference returnedPg = csAtt.updateRecordAndCreateAttachments();
        
        boolean isError = false;
        for(ApexPages.Message msg :  ApexPages.getMessages()) {
            if (msg.getSummary().contains('Error uploading attachment'))
                isError = true;
        }
        system.assert(!isError);
        
        
    }
}