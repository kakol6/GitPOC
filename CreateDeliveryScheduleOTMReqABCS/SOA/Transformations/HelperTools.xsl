<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/"
    xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20"
    xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction"
    xmlns:bpel="http://docs.oasis-open.org/wsbpel/2.0/process/executable"
    xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc"
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
    xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue"
    xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:med="http://schemas.oracle.com/mediator/xpath"
    xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath"
    xmlns:bpm="http://xmlns.oracle.com/bpmn20/extensions"
    xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk"
    xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions"
    xmlns:xsd="http://www.w3.org/2001/XMLSchema"
    xmlns:ora="http://schemas.oracle.com/xpath/extension"
    xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator"
    xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap"
    exclude-result-prefixes="xsi xsl xsd bpws xp20 mhdr bpel oraext dvm hwf med ids bpm xdk xref ora socket ldap">
    
    <xsl:template match="/"/>
    <!--xsl:template name="TokenizeString">
        <xsl:param name="inputString"/>
        <xsl:call-template name="ParseString">
            <xsl:with-param name="tempStr" select="$inputString"></xsl:with-param>
            <xsl:with-param name="counter" select="1"></xsl:with-param>
        </xsl:call-template>

    </xsl:template-->

    <xsl:template name="ExtractLoadingUnitTripInfo">
        <xsl:param name="LoadingUnitTripStr"/>
        <xsl:param name="LoadingUnitTripCounter" select="1"/>
        <xsl:if test="string-length($LoadingUnitTripStr)">
            <xsl:choose>
                <xsl:when test="$LoadingUnitTripCounter = 27"><xsl:value-of select="concat(substring-before($LoadingUnitTripStr, '|'), '|')"/></xsl:when>
                <xsl:when test="$LoadingUnitTripCounter = 28"><xsl:value-of select="concat(substring-before($LoadingUnitTripStr, '|'), '|')"/></xsl:when>
                <xsl:when test="$LoadingUnitTripCounter = 29"><xsl:value-of select="concat(substring-before($LoadingUnitTripStr, '|'), '|')"/></xsl:when>
            </xsl:choose>
            
            <xsl:call-template name="ExtractLoadingUnitTripInfo">
                <xsl:with-param name="LoadingUnitTripStr" select="substring-after($LoadingUnitTripStr, '|')"/>
                <xsl:with-param name="LoadingUnitTripCounter" select="$LoadingUnitTripCounter+1"></xsl:with-param>
            </xsl:call-template>
        </xsl:if>
    </xsl:template>
    
    <xsl:template name="ExtractStopSchedReqInfo">
        <xsl:param name="StopSchedReqStr"/>
        <xsl:param name="StopSchedReqCounter" select="1"/>
       
        <xsl:if test="string-length($StopSchedReqStr)">
            <xsl:choose>
                <xsl:when test="$StopSchedReqCounter = 1"><xsl:value-of select="concat(substring-before($StopSchedReqStr, '|'), '|')"/></xsl:when>
                <xsl:when test="$StopSchedReqCounter = 3"><xsl:value-of select="concat(substring-before($StopSchedReqStr, '|'), '|')"/></xsl:when>
                <xsl:when test="$StopSchedReqCounter = 4"><xsl:value-of select="concat(substring-before($StopSchedReqStr, '|'), '|')"/></xsl:when>
                <xsl:when test="$StopSchedReqCounter = 6"><xsl:value-of select="concat(substring-before($StopSchedReqStr, '|'), '|')"/></xsl:when>
                <xsl:when test="$StopSchedReqCounter = 5"><xsl:value-of select="concat(substring-before($StopSchedReqStr, '|'), '|')"/></xsl:when>
                <xsl:when test="$StopSchedReqCounter = 13"><xsl:value-of select="concat(substring-before($StopSchedReqStr, '|'), '|')"/></xsl:when>
                <xsl:when test="$StopSchedReqCounter = 9"><xsl:value-of select="concat(substring-before($StopSchedReqStr, '|'), '|')"/></xsl:when>
                <xsl:when test="$StopSchedReqCounter = 10"><xsl:value-of select="concat(substring-before($StopSchedReqStr, '|'), '|')"/></xsl:when>
                <xsl:when test="$StopSchedReqCounter = 11"><xsl:value-of select="concat(substring-before($StopSchedReqStr, '|'), '|')"/></xsl:when>
                <xsl:when test="$StopSchedReqCounter = 12"><xsl:value-of select="concat(substring-before($StopSchedReqStr, '|'), '|')"/></xsl:when>
            </xsl:choose>
            
            <xsl:call-template name="ExtractStopSchedReqInfo">
                <xsl:with-param name="StopSchedReqStr" select="substring-after($StopSchedReqStr, '|')"/>
                <xsl:with-param name="StopSchedReqCounter" select="$StopSchedReqCounter+1"></xsl:with-param>
            </xsl:call-template>
        </xsl:if>
    </xsl:template>
    
    <xsl:template name="ExtractCsmDataInfo">
        <xsl:param name="CsmDataStr"/>
        <xsl:param name="CsmDataCounter" select="1"/>
        
        <xsl:if test="string-length($CsmDataStr)">
            <xsl:choose>
                <xsl:when test="$CsmDataCounter = 24"><xsl:value-of select="concat(substring-before($CsmDataStr, '|'), '|')"/></xsl:when>
                <xsl:when test="$CsmDataCounter = 25"><xsl:value-of select="concat(substring-before($CsmDataStr, '|'), '|')"/></xsl:when>                
            </xsl:choose>
            
            <xsl:call-template name="ExtractCsmDataInfo">
                <xsl:with-param name="CsmDataStr" select="substring-after($CsmDataStr, '|')"/>
                <xsl:with-param name="CsmDataCounter" select="$CsmDataCounter+1"/>
            </xsl:call-template>
        </xsl:if>
    </xsl:template>
    
    <xsl:template name="ParseString">
        <xsl:param name="tempStr"/>
        <xsl:param name="counter" select="1"/>
        <xsl:param name="position"/>
        
        <xsl:if test="string-length($tempStr)">
            <!--xsl:value-of select="concat($counter, '-', $data1, '=', $position, ';')"/-->
            <xsl:if test="$counter = $position">
                <xsl:value-of select="substring-before($tempStr, '|')"/>
            </xsl:if>
            
            <xsl:call-template name="ParseString">
                <xsl:with-param name="tempStr" select="substring-after($tempStr, '|')"/>
                <xsl:with-param name="counter" select="$counter+1"/>
                <xsl:with-param name="position" select="$position"/>
            </xsl:call-template>
        </xsl:if>
    </xsl:template>
    
    <!-- ITMINT-1895 Changes Started-->
    <xsl:template name="ExtractTransportAgreementId">
        <xsl:param name="TransportAgreementIdStr"/>
        <xsl:param name="TransportAgreementIdCounter" select="1"/>
        <xsl:if test="string-length($TransportAgreementIdStr)">
            <xsl:choose>
                <xsl:when test="$TransportAgreementIdCounter = 1"><xsl:value-of select="concat(substring-before($TransportAgreementIdStr, '-'), '-')"/></xsl:when>
                <xsl:when test="$TransportAgreementIdCounter = 2"><xsl:value-of select="concat(substring-before($TransportAgreementIdStr, '-'), '-')"/></xsl:when>
                <xsl:when test="$TransportAgreementIdCounter = 3"><xsl:value-of select="concat(substring-before($TransportAgreementIdStr, '-'), '-')"/></xsl:when>
            </xsl:choose>
            
            <xsl:call-template name="ExtractTransportAgreementId">
                <xsl:with-param name="TransportAgreementIdStr" select="substring-after($TransportAgreementIdStr, '-')"/>
                <xsl:with-param name="TransportAgreementIdCounter" select="$TransportAgreementIdCounter+1"></xsl:with-param>
            </xsl:call-template>
        </xsl:if>
    </xsl:template>
    
    <xsl:template name="ParseStringHyphen">
        <xsl:param name="tempStr"/>
        <xsl:param name="counter" select="1"/>
        <xsl:param name="position"/>
        
        <xsl:if test="string-length($tempStr)">
            <!--xsl:value-of select="concat($counter, '-', $data1, '=', $position, ';')"/-->
            <xsl:if test="$counter = $position">
                <xsl:value-of select="substring-before($tempStr, '-')"/>
            </xsl:if>
            
            <xsl:call-template name="ParseStringHyphen">
                <xsl:with-param name="tempStr" select="substring-after($tempStr, '-')"/>
                <xsl:with-param name="counter" select="$counter+1"/>
                <xsl:with-param name="position" select="$position"/>
            </xsl:call-template>
        </xsl:if>
    </xsl:template>
    <!-- ITMINT-1895 Changes Ended-->
    
</xsl:stylesheet>
