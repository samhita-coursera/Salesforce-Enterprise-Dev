trigger LeadTrigger on Lead (before insert,after insert, before update, after update) {
	TriggerHandlerClass handler = new TriggerHandlerClass();
	if(Trigger.isInsert) {
		if(Trigger.isBefore) {
			handler.OnLeadBeforeInsert(Trigger.new);
		}
	}

	if(Trigger.isUpdate) {
		if(Trigger.isBefore) {
			handler.OnLeadBeforeUpdate(Trigger.new);
		}
	}
}