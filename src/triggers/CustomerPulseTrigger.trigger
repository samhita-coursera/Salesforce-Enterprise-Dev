trigger CustomerPulseTrigger on Customer_Pulse__c (before insert,after insert, before update, after update) {
	TriggerHandlerClass handler = new TriggerHandlerClass();
	if(Trigger.isInsert) {
		if(Trigger.isBefore) {
			handler.OnCustomerPulseBeforeInsert(Trigger.new);
		}
	}
}