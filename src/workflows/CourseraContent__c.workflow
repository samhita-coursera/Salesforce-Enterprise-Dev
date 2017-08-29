<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>Content_Closed_Email_Alert</fullName>
        <description>Content Closed Email Alert</description>
        <protected>false</protected>
        <recipients>
            <type>owner</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Operational_Emails/Content_Closed_Email_Template</template>
    </alerts>
    <alerts>
        <fullName>Content_Creation_Email_Alert</fullName>
        <description>Content Creation Email Alert</description>
        <protected>false</protected>
        <recipients>
            <type>owner</type>
        </recipients>
        <recipients>
            <recipient>kchadha@coursera.org</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>masha@coursera.org</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>scarrasca@coursera.org</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Operational_Emails/Content_Creation_Email_Template</template>
    </alerts>
</Workflow>
