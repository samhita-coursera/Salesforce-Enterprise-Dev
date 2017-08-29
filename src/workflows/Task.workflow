<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>Email_Alert_for_QBR_Tasks</fullName>
        <description>Email Alert for QBR Tasks</description>
        <protected>false</protected>
        <recipients>
            <type>owner</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Operational_Emails/Task_Due_Date_Email_Template</template>
    </alerts>
</Workflow>
