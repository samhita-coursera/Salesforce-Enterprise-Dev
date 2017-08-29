@isTest
private class TriggerHandlerClass_Test {
	Static Account a;
	Static Case c;
	 
	@isTest static void test_UpdateAccountOnCustomerPulse() {
		Account a = new Account(Name = 'TestAccount', Type = 'B2B: Corporate');
		insert a;

		Case c = new Case (AccountId = a.id, Status = 'New', Origin = 'Email', Client_Slug__c = 'xyz');
		insert c;

		Customer_Pulse__c cp = new Customer_Pulse__c(Enterprise_Contract_ID__c = '12324', Enterprise_Customer_Slug__c = 'xyz');
		insert cp;
	}
	
	@isTest static void test_InsertOrUpdate_IndustryGroupOnLead() {
		IndustryBuckets__c ib = new IndustryBuckets__c(Name = 'Household Durables', Industry_Group__c ='Consumer Durables & Apparel');
		insert ib;
		List<Lead> leadsToInsert = new List<Lead>();
		Test.startTest();
		Lead l1 = new Lead(LastName = 'TestLastName1', Company = 'Test Company1', Status = 'Working');
		leadsToInsert.add(l1);
		Lead l2 = new Lead(LastName = 'TestLastName2', Company = 'Test Company2', Status = 'Working', Industry='Household Durables');
		leadsToInsert.add(l2);
		Lead l3 = new Lead(LastName = 'TestLastName3', Company = 'Test Company3', Status = 'Working', Industry='Household Durables', Industry_Group_Clearbit__c = 'Consumer Durables & Apparel');
		leadsToInsert.add(l3);
		insert leadsToInsert;
		l1.Industry='Household Durables';
		update l1;
		Test.stopTest();
	}
	
}