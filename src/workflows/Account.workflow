<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>Email_Alert_to_Account_manager</fullName>
        <description>Email Alert to Account manager</description>
        <protected>false</protected>
        <recipients>
            <field>Account_Manager__c</field>
            <type>userLookup</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Operational_Emails/Account_Manager_Email_Notification</template>
    </alerts>
    <rules>
        <fullName>Account Manager Update Notification</fullName>
        <actions>
            <name>Email_Alert_to_Account_manager</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <description>Send notification to account manager when updated</description>
        <formula>AND( 
NOT(ISBLANK(Account_Manager__c)), 
OR( 
ISCHANGED(Account_Manager__c), 
ISNEW() 
) 
)</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
</Workflow>
