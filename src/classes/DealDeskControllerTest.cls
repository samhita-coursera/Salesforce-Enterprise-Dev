/**
 * This class contains unit tests for validating the behavior of Apex class DealDeskController
 */
@isTest
private class DealDeskControllerTest {

    static testMethod void dealTest() {
        Account testAcnt = new Account(Name='testDealAcnt', Industry='Education', Customer_Success_Account_Tier__c='Standard');
        insert testAcnt;
        Opportunity testOpty = new Opportunity(Name= 'TestOptyforDeal', StageName ='Qualified Opportunity', AccountId = testAcnt.Id, CloseDate= System.today()+7, Amount=300);
        insert testOpty;
       
        PageReference pageRef = Page.Deal_Desk_Form;
        Test.setCurrentPage(pageRef);
        ApexPages.Standardcontroller so = new ApexPages.Standardcontroller(testOpty);
        ApexPages.currentPage().getParameters().put('Id',testOpty.Id);
        DealDeskController ddc = new DealDeskController(so);
        System.assert(ddc != null);
        testAcnt = [SELECT Name, Id, Industry, Customer_Success_Account_Tier__c FROM Account where Id= :testOpty.AccountId];
        ddc.Opty.Account = testAcnt;
        PageReference returnedPg = ddc.saveRecord();
        //system.assertEquals(testAcnt.Industry,'Engineering');
    }
}