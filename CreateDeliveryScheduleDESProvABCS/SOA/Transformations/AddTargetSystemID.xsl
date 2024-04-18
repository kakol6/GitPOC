<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/"
                xmlns:plnk="http://schemas.xmlsoap.org/ws/2003/05/partner-link/"
                xmlns:ehdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.esb.server.headers.ESBHeaderFunctions"
                xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath"
                xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20"
                xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ora="http://schemas.oracle.com/xpath/extension"
                xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath"
                xmlns:orcl="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc"
                xmlns:corecom="ikea.com/system/iip/IIPHeader/1.0/"
                exclude-result-prefixes="xsl plnk coresalesorder ns0 ns3 ns5 ns1 client corecustcom ns4 corecom bpws ehdr aia hwf xp20 xref ora ids orcl">
    <xsl:param name="DefaultSystemID">DES</xsl:param>

     <xsl:template match="/*">
          <xsl:element name="{local-name()}" namespace="{namespace-uri()}">
              <xsl:copy-of select="attribute::*"/>
              <xsl:apply-templates />
          </xsl:element>
     </xsl:template>
  
    <xsl:template match="corecom:EBMHeader">
          <xsl:element name="{local-name()}" namespace="{namespace-uri()}">
              <xsl:copy-of select="attribute::*"/>
              <xsl:apply-templates />
          </xsl:element>
    </xsl:template>

    <xsl:template match="corecom:EBMHeader/corecom:Sender">
        <xsl:copy-of select="."/>
        <xsl:if test="not(following-sibling::corecom:Target)">
            <corecom:Target>
                <corecom:ID>
                    <xsl:value-of select="$DefaultSystemID"/>
                </corecom:ID>
            </corecom:Target>
        </xsl:if>
    </xsl:template>
    <xsl:template match="corecom:EBMHeader/corecom:Target">
        <corecom:Target>
            <xsl:copy-of select="@*"/>
            <xsl:variable name="TargetID">
                <xsl:choose>
                    <xsl:when test="corecom:ID/text()">
                        <xsl:value-of select="corecom:ID/text()"/>
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:value-of select="$DefaultSystemID"/>
                    </xsl:otherwise>
                </xsl:choose>
            </xsl:variable>
            <corecom:ID>
                <xsl:copy-of select="corecom:ID/@*"/>
                <xsl:value-of select="$TargetID"/>
            </corecom:ID>
            <xsl:copy-of select="corecom:OverrideRoutingFlag"/>
            <xsl:copy-of select="corecom:EndPointURI"/>
            <xsl:copy-of select="corecom:TargetServiceVersionID"/>
        </corecom:Target>
    </xsl:template>
    <xsl:template match="@*|node()">
        <xsl:copy-of select="."/>
    </xsl:template>
</xsl:stylesheet>

