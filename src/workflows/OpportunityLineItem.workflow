<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <fieldUpdates>
        <fullName>Update_Line_Description_on_Opty_Product</fullName>
        <field>Description</field>
        <formula>PricebookEntry.Product2.Description</formula>
        <name>Update Line Description on Opty Product</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>Auto Populate Line Description</fullName>
        <actions>
            <name>Update_Line_Description_on_Opty_Product</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>OpportunityLineItem.Description</field>
            <operation>equals</operation>
        </criteriaItems>
        <description>This rule is to default value of line description based on description value on product</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
</Workflow>
