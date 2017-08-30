<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <fieldUpdates>
        <fullName>Update_Tax_as_10_percent_on_Subtotal</fullName>
        <field>Tax</field>
        <formula>0.1 * (TotalPrice *(1/0.9))</formula>
        <name>Update Tax as 10 percent on Subtotal</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>Update Tax on Quote</fullName>
        <actions>
            <name>Update_Tax_as_10_percent_on_Subtotal</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>(BillingCountry = &quot;India&quot;  ||  BillingCountry = &quot;IN&quot;) &amp;&amp;   TotalPrice  &gt; 0 &amp;&amp; ( ISNEW() ||  ISCHANGED(TotalPrice   ) )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
</Workflow>
