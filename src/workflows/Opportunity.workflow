<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>Closed_Lost_Renewal_Opty_Alert</fullName>
        <description>Closed Lost Renewal Opty Alert</description>
        <protected>false</protected>
        <recipients>
            <recipient>ddixit@coursera.org</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>julia@coursera.org</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>mfreeman@coursera.org</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Operational_Emails/Closed_Lost_Email</template>
    </alerts>
    <alerts>
        <fullName>Closed_lost_Non_Renewal_Gov_Role_Opty_Alert</fullName>
        <description>Closed lost Non-Renewal Gov Role Opty Alert</description>
        <protected>false</protected>
        <recipients>
            <recipient>ddixit@coursera.org</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>julia@coursera.org</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>rebecca@coursera.org</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Operational_Emails/Closed_Lost_Email</template>
    </alerts>
    <alerts>
        <fullName>Closed_lost_Non_Renewal_Non_Gov_Role_Opty_Alert</fullName>
        <description>Closed lost Non-Renewal Non-Gov Role Opty Alert</description>
        <protected>false</protected>
        <recipients>
            <recipient>ddixit@coursera.org</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>julia@coursera.org</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>leahb@coursera.org</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Operational_Emails/Closed_Lost_Email</template>
    </alerts>
    <alerts>
        <fullName>Email_Alert_After_Deal_Desk_Submitted</fullName>
        <ccEmails>dealdesk@coursera.org</ccEmails>
        <description>Email Alert After Deal Desk Submitted</description>
        <protected>false</protected>
        <recipients>
            <field>Opportunity_Owner_Manager_Email__c</field>
            <type>email</type>
        </recipients>
        <recipients>
            <type>owner</type>
        </recipients>
        <recipients>
            <recipient>ddixit@coursera.org</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>nishav@coursera.org.enterprise</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Operational_Emails/Deal_Desk_Notification_Email_Template</template>
    </alerts>
    <alerts>
        <fullName>Provisioning_Email_Alert</fullName>
        <ccEmails>provisioning@coursera.org</ccEmails>
        <description>Provisioning Email Alert</description>
        <protected>false</protected>
        <senderType>CurrentUser</senderType>
        <template>Operational_Emails/Closed_Won_Email</template>
    </alerts>
    <alerts>
        <fullName>Send_Closed_Lost_Email_Alert</fullName>
        <ccEmails>jen@coursera.org</ccEmails>
        <description>Send Closed Lost Email Alert</description>
        <protected>false</protected>
        <recipients>
            <type>owner</type>
        </recipients>
        <recipients>
            <recipient>context-mahouts@coursera.org</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>ddixit@coursera.org</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>julia@coursera.org</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>leahb@coursera.org</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Operational_Emails/Closed_Lost_Email</template>
    </alerts>
    <alerts>
        <fullName>Send_Closed_Won_Email_Alert</fullName>
        <ccEmails>ekellerlogan@coursera.org</ccEmails>
        <ccEmails>enterprise@coursera.org</ccEmails>
        <description>Send Closed Won Email Alert</description>
        <protected>false</protected>
        <recipients>
            <recipient>ddixit@coursera.org</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>julia@coursera.org</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>leahb@coursera.org</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>mfreeman@coursera.org</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Operational_Emails/Closed_Won_Email</template>
    </alerts>
    <fieldUpdates>
        <fullName>Update_Created_Date_for_Reporting</fullName>
        <field>Created_Date_for_Reporting__c</field>
        <formula>CreatedDate</formula>
        <name>Update Created Date for Reporting</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_the_Manager_email</fullName>
        <field>Opportunity_Owner_Manager_Email__c</field>
        <formula>Opportunity_Owner_Manager__c</formula>
        <name>Update the Manager&apos;s email</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>Closed Lost Email</fullName>
        <actions>
            <name>Send_Closed_Lost_Email_Alert</name>
            <type>Alert</type>
        </actions>
        <active>false</active>
        <formula>NOT( ISPICKVAL( PRIORVALUE( StageName ) , &quot;Closed Lost&quot;) ) &amp;&amp; 
ISPICKVAL( StageName , &quot;Closed Lost&quot;)</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Closed Won Email</fullName>
        <actions>
            <name>Send_Closed_Won_Email_Alert</name>
            <type>Alert</type>
        </actions>
        <active>false</active>
        <formula>NOT( ISPICKVAL( PRIORVALUE( StageName ) , &quot;Closed Won&quot;) ) &amp;&amp;
Admin_Override__c = False &amp;&amp; 
ISPICKVAL( StageName , &quot;Closed Won&quot;)</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Deal Desk Email Notification</fullName>
        <actions>
            <name>Email_Alert_After_Deal_Desk_Submitted</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Opportunity.Is_Deal_Desk_Submitted__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <description>This rule sends an email notification to deal desk email alias</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Update Created Date for Reporting</fullName>
        <actions>
            <name>Update_Created_Date_for_Reporting</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Opportunity.CreatedDate</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <description>Used to update created date pre and post data migration using single field</description>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>Update Manager Email on Opportunity</fullName>
        <actions>
            <name>Update_the_Manager_email</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Opportunity.Opportunity_Owner_Manager__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <triggerType>onAllChanges</triggerType>
    </rules>
</Workflow>
