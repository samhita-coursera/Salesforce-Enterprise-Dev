<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>C4B_Lead_Notiification_Status_Unqualified_Automatic</fullName>
        <description>C4B Lead Notiification Status: Unqualified Automatic</description>
        <protected>false</protected>
        <recipients>
            <field>Email</field>
            <type>email</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Cuistom_Lead_Email_Template/C4B_Refer_to_Help_Center</template>
    </alerts>
    <alerts>
        <fullName>C4B_Lead_Notiification_Status_Web_Sales</fullName>
        <description>C4B Lead Notiification Status: Web Sales</description>
        <protected>false</protected>
        <recipients>
            <field>Email</field>
            <type>email</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Cuistom_Lead_Email_Template/C4B_Refer_to_WES</template>
    </alerts>
    <alerts>
        <fullName>C4G_Lead_Notiification_Status_Unqualified_Automatic</fullName>
        <description>C4G Lead Notiification Status: Unqualified Automatic</description>
        <protected>false</protected>
        <recipients>
            <field>Email</field>
            <type>email</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Cuistom_Lead_Email_Template/C4G_Refer_to_Help_Center</template>
    </alerts>
    <alerts>
        <fullName>C4G_Lead_Notiification_Status_Web_Sales</fullName>
        <description>C4G Lead Notiification Status: Web Sales</description>
        <protected>false</protected>
        <recipients>
            <field>Email</field>
            <type>email</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Cuistom_Lead_Email_Template/C4G_Refer_to_WES</template>
    </alerts>
    <alerts>
        <fullName>Lead_Assignment_Email_Alert</fullName>
        <description>Lead Assignment Email Alert</description>
        <protected>false</protected>
        <recipients>
            <type>owner</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/LeadsNewassignmentnotificationSAMPLE</template>
    </alerts>
    <alerts>
        <fullName>Lead_Assignment_Notification_Aditya_Shailaj</fullName>
        <description>Lead Assignment Notification-Aditya Shailaj</description>
        <protected>false</protected>
        <recipients>
            <recipient>ashailaj@coursera.org</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/LeadsNewassignmentnotificationSAMPLE</template>
    </alerts>
    <alerts>
        <fullName>Lead_Assignment_Notification_Carlos_Pessoa_Filho</fullName>
        <description>Lead Assignment Notification-LATAM</description>
        <protected>false</protected>
        <recipients>
            <recipient>stephanie@coursera.org</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/LeadsNewassignmentnotificationSAMPLE</template>
    </alerts>
    <alerts>
        <fullName>Lead_Assignment_Notification_Lauren_Cuzzaniti</fullName>
        <description>Lead Assignment Notification-Lauren Cuzzaniti</description>
        <protected>false</protected>
        <recipients>
            <recipient>jmays@coursera.org</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/LeadsNewassignmentnotificationSAMPLE</template>
    </alerts>
    <alerts>
        <fullName>Lead_Assignment_Notification_Sanjana_Tadepalli</fullName>
        <description>Lead Assignment Notification-Sanjana Tadepalli</description>
        <protected>false</protected>
        <recipients>
            <recipient>timyoung@coursera.org</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/LeadsNewassignmentnotificationSAMPLE</template>
    </alerts>
    <alerts>
        <fullName>Lead_Assignment_Notification_Stephanie_Durand</fullName>
        <description>Lead Assignment Notification-Stephanie Durand</description>
        <protected>false</protected>
        <recipients>
            <recipient>stephanie@coursera.org</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/LeadsNewassignmentnotificationSAMPLE</template>
    </alerts>
    <alerts>
        <fullName>Lead_Notiification_Status_Unqualified_Automatic</fullName>
        <description>Lead Notiification Status: Unqualified Automatic</description>
        <protected>false</protected>
        <recipients>
            <field>Email</field>
            <type>email</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Cuistom_Lead_Email_Template/C4B_Refer_to_WES</template>
    </alerts>
    <fieldUpdates>
        <fullName>First_Response_Date</fullName>
        <field>First_Lead_Response_Date__c</field>
        <formula>NOW()</formula>
        <name>First Response Date</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Populate_Original_Lead_Source</fullName>
        <field>Original_Lead_Source__c</field>
        <formula>TEXT( LeadSource )</formula>
        <name>Populate Original Lead Source</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
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
        <fullName>Update_Govt_Boolean</fullName>
        <description>Checks the &apos;Govt&apos; box on Lead if the email contains &apos;.gov&apos;</description>
        <field>Government__c</field>
        <literalValue>1</literalValue>
        <name>Update Govt Boolean</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Lead_Source_to_Inbound</fullName>
        <field>LeadSource</field>
        <literalValue>Inbound: Website</literalValue>
        <name>Update Lead Source to Inbound</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Original_MQL_Date</fullName>
        <field>Original_MQL_Date__c</field>
        <formula>MQL_Date__c</formula>
        <name>Update Original MQL Date</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Unqualified_Automatic_Email_Sent</fullName>
        <field>Unqualified_Automatic_Email_Sent__c</field>
        <literalValue>1</literalValue>
        <name>Update Unqualified Automatic Email Sent</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>WES_Auto_Email_Checkbox</fullName>
        <field>WES_Auto_Email_Sent__c</field>
        <literalValue>1</literalValue>
        <name>WES Auto Email Checkbox</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>C4B Referred to Web Sales Auto</fullName>
        <actions>
            <name>C4B_Lead_Notiification_Status_Web_Sales</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>WES_Auto_Email_Checkbox</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Lead.Status</field>
            <operation>equals</operation>
            <value>Referred to Web Sales - Auto</value>
        </criteriaItems>
        <criteriaItems>
            <field>Lead.WES_Auto_Email_Sent__c</field>
            <operation>equals</operation>
            <value>False</value>
        </criteriaItems>
        <criteriaItems>
            <field>Lead.Government__c</field>
            <operation>equals</operation>
            <value>False</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>C4B Unqualified Automatic Lead</fullName>
        <actions>
            <name>C4B_Lead_Notiification_Status_Unqualified_Automatic</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Update_Unqualified_Automatic_Email_Sent</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Lead.Status</field>
            <operation>equals</operation>
            <value>Unqualified - Automatic</value>
        </criteriaItems>
        <criteriaItems>
            <field>Lead.Unqualified_Automatic_Email_Sent__c</field>
            <operation>equals</operation>
            <value>False</value>
        </criteriaItems>
        <criteriaItems>
            <field>Lead.Government__c</field>
            <operation>equals</operation>
            <value>False</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>C4G Referred to Web Sales Auto</fullName>
        <actions>
            <name>C4G_Lead_Notiification_Status_Web_Sales</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>WES_Auto_Email_Checkbox</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <booleanFilter>1 and 2 and (3 or 4)</booleanFilter>
        <criteriaItems>
            <field>Lead.Status</field>
            <operation>equals</operation>
            <value>Referred to Web Sales - Auto</value>
        </criteriaItems>
        <criteriaItems>
            <field>Lead.WES_Auto_Email_Sent__c</field>
            <operation>equals</operation>
            <value>False</value>
        </criteriaItems>
        <criteriaItems>
            <field>Lead.Government__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Lead.Nonprofit__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>C4G Unqualified Automatic Lead</fullName>
        <actions>
            <name>C4G_Lead_Notiification_Status_Unqualified_Automatic</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Update_Unqualified_Automatic_Email_Sent</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <booleanFilter>1 AND 2 AND (3 OR 4)</booleanFilter>
        <criteriaItems>
            <field>Lead.Status</field>
            <operation>equals</operation>
            <value>Unqualified - Automatic</value>
        </criteriaItems>
        <criteriaItems>
            <field>Lead.Unqualified_Automatic_Email_Sent__c</field>
            <operation>equals</operation>
            <value>False</value>
        </criteriaItems>
        <criteriaItems>
            <field>Lead.Government__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Lead.Nonprofit__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Check if Lead is Govt</fullName>
        <actions>
            <name>Update_Govt_Boolean</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Lead.Email</field>
            <operation>contains</operation>
            <value>.gov</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>First Response Date</fullName>
        <actions>
            <name>First_Response_Date</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>AND 
(
ISCHANGED(Status),
ISPICKVAL( PRIORVALUE(Status) , &quot;New&quot;),
ISPICKVAL( LeadSource  , &quot;Inbound: Website&quot;)
)</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>GOV Unqualified Automatic Lead</fullName>
        <active>false</active>
        <criteriaItems>
            <field>Lead.Status</field>
            <operation>equals</operation>
            <value>Unqualified - Automatic</value>
        </criteriaItems>
        <criteriaItems>
            <field>Lead.Unqualified_Automatic_Email_Sent__c</field>
            <operation>equals</operation>
            <value>False</value>
        </criteriaItems>
        <criteriaItems>
            <field>Lead.Government__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Lead Assignment Notification for Jade Mays</fullName>
        <actions>
            <name>Lead_Assignment_Email_Alert</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Lead.OwnerId</field>
            <operation>equals</operation>
            <value>Jade Mays</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Lead Assignment Notification-Aditya Shailaj</fullName>
        <actions>
            <name>Lead_Assignment_Notification_Aditya_Shailaj</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <formula>AND (
 LastModifiedById = &apos;00536000002BhHb&apos;,
 X2016_Geo_Territory__c = &apos;India&apos;,
 Government__c = false,
 Nonprofit__c = false
)</formula>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>Lead Assignment Notification-LATAM</fullName>
        <actions>
            <name>Lead_Assignment_Notification_Carlos_Pessoa_Filho</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <formula>AND (
 LastModifiedById = &apos;00536000002BhHb&apos;, 
 X2016_Geo_Territory__c = &apos;LATAM&apos;,
 Government__c = false,
 Nonprofit__c = false
)</formula>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>Lead Assignment Notification-Lauren Cuzzaniti</fullName>
        <actions>
            <name>Lead_Assignment_Notification_Lauren_Cuzzaniti</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <formula>AND (
 LastModifiedById = &apos;00536000002BhHb&apos;,
 OR (Government__c = true,
     Nonprofit__c  = true)
)</formula>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>Lead Assignment Notification-N Amer East-Renee Manuel1</fullName>
        <active>false</active>
        <formula>AND (
 LastModifiedById = &apos;00536000002BhHb&apos;,
 X2016_Geo_Territory__c = &apos;North America&apos;,
 NA_Region__c = &apos;East&apos;,
 Government__c = false,
 Nonprofit__c = false
)</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Lead Assignment Notification-N Amer West-Renee Manuel3</fullName>
        <active>false</active>
        <formula>AND (
 LastModifiedById = &apos;00536000002BhHb&apos;, 
 X2016_Geo_Territory__c = &apos;North America&apos;,
 NA_Region__c = &apos;West&apos;,
 Government__c = false,
 Nonprofit__c = false
)</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Lead Assignment Notification-Renee Manuel2</fullName>
        <active>false</active>
        <formula>AND (
 LastModifiedById = &apos;00536000002BhHb&apos;,
 Government__c = false,
 Nonprofit__c = false,
 X2016_Geo_Territory__c  &lt;&gt; &apos;EMEA&apos;,
 X2016_Geo_Territory__c &lt;&gt; &apos;Non-India APAC&apos;,
 X2016_Geo_Territory__c &lt;&gt; &apos;India&apos;,
 X2016_Geo_Territory__c &lt;&gt; &apos;LATAM&apos;,
 NA_Region__c &lt;&gt; &apos;East&apos;,
 NA_Region__c &lt;&gt; &apos;West&apos;
)</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Lead Assignment Notification-Sanjana Tadepalli</fullName>
        <actions>
            <name>Lead_Assignment_Notification_Sanjana_Tadepalli</name>
            <type>Alert</type>
        </actions>
        <active>false</active>
        <formula>AND (
 LastModifiedById = &apos;00536000002BhHb&apos;,
 X2016_Geo_Territory__c = &apos;Non-India APAC&apos;,
 Government__c = false,
 Nonprofit__c = false
)</formula>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>Lead Assignment Notification-Stephanie Durand</fullName>
        <actions>
            <name>Lead_Assignment_Notification_Stephanie_Durand</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <formula>AND (
 LastModifiedById = &apos;00536000002BhHb&apos;,
 X2016_Geo_Territory__c = &apos;EMEA&apos;,
 Government__c = false,
 Nonprofit__c = false
)</formula>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>Populate Original Lead Source</fullName>
        <actions>
            <name>Populate_Original_Lead_Source</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Lead.LeadSource</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Lead.CreatedDate</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>Unqualified Automatic Lead</fullName>
        <actions>
            <name>Lead_Notiification_Status_Unqualified_Automatic</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Update_Unqualified_Automatic_Email_Sent</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Lead.Status</field>
            <operation>equals</operation>
            <value>Unqualified - Automatic</value>
        </criteriaItems>
        <criteriaItems>
            <field>Lead.Unqualified_Automatic_Email_Sent__c</field>
            <operation>equals</operation>
            <value>False</value>
        </criteriaItems>
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
            <field>Lead.CreatedDate</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <description>Legacy created date and created date fields are combined using this one field</description>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>Update Inbound Lead Source</fullName>
        <actions>
            <name>Update_Lead_Source_to_Inbound</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Lead.CreatedDate</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Lead.LeadSource</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Lead.CreatedById</field>
            <operation>equals</operation>
            <value>Inbound Leads</value>
        </criteriaItems>
        <description>Leads created via website through Zapier don&apos;t have lead source value. Leads that are created by inbound leads user will be updated in the system with &quot;Inbound: Website source&quot;</description>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>Update Original MQL Date to MQL Date</fullName>
        <actions>
            <name>Update_Original_MQL_Date</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Lead.MQL_Date__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Lead.Original_MQL_Date__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Web Enabled Sales Lead Owner</fullName>
        <active>false</active>
        <criteriaItems>
            <field>Lead.Web_Sale_Tx_Type__c</field>
            <operation>equals</operation>
            <value>WebEnabledSales</value>
        </criteriaItems>
        <triggerType>onCreateOnly</triggerType>
    </rules>
</Workflow>
