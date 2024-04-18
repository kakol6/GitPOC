<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0" xmlns:tns="http://ws.fwk.ikea.com/business-call"
                xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction"
                xmlns:ns0="ikea.com/cem/OrderAndDelivery/DeliverySchedule/V0/"
                xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc"
                xmlns:xsd="http://www.w3.org/2001/XMLSchema"
                xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20"
                xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions"
                xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator"
                xmlns:oracle-xsl-mapper="http://www.oracle.com/xsl/mapper/schemas"
                xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue"
                xmlns:oraxsl="http://www.oracle.com/XSL/Transform/java"
                xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                exclude-result-prefixes="xsd oracle-xsl-mapper xsi xsl ns0 tns mhdr oraext xp20 xref socket dvm oraxsl"
                xmlns:ns2="urn:oasis:names:tc:xacml:2.0:context:schema:cd:04"
                xmlns:ns4="http://schemas.xmlsoap.org/ws/2003/03/addressing"
                xmlns:plnk="http://schemas.xmlsoap.org/ws/2003/05/partner-link/"
                xmlns:ns1="ikea.com/system/iip/CreateDeliveryScheduleDESProvABCSService/1.0/"
                xmlns:svcdoc="http://xmlns.oracle.com/Services/Documentation/V1"
                xmlns:ns3="http://schemas.oracle.com/service/bpel/common"
                xmlns:corecom="ikea.com/system/iip/IIPHeader/1.0/"
                xmlns:ns5="urn:oasis:names:tc:xacml:2.0:policy:schema:cd:04"
                xmlns:ns6="ikea.com/system/iip/IIPFaultMessage/1.0/"
                xmlns:sp="http://docs.oasis-open.org/ws-sx/ws-securitypolicy/200702"
                xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/" xmlns:wsp="http://www.w3.org/ns/ws-policy"
                xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/"
                xmlns:wsu="http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-utility-1.0.xsd"
                xmlns:ns7="http://www.w3.org/2002/ws/policy/ns/ws-policy"
                xmlns:fwk="http://ws.fwk.ikea.com/fwk-service-call">
  <oracle-xsl-mapper:schema>
    <!--SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY.-->
    <oracle-xsl-mapper:mapSources>
      <oracle-xsl-mapper:source type="WSDL">
        <oracle-xsl-mapper:schema location="oramds:/apps/AIAMetaData/IIPComponents/ApplicationConnectorServiceLibrary/DES/V1/ProviderABCS/CreateDeliveryScheduleDESProvABCS.wsdl"/>
        <oracle-xsl-mapper:rootElement name="CreateDeliveryScheduleEBM"
                                       namespace="ikea.com/cem/OrderAndDelivery/DeliverySchedule/V0/"/>
      </oracle-xsl-mapper:source>
    </oracle-xsl-mapper:mapSources>
    <oracle-xsl-mapper:mapTargets>
      <oracle-xsl-mapper:target type="WSDL">
        <oracle-xsl-mapper:schema location="oramds:/apps/AIAMetaData/IIPComponents/ApplicationObjectLibrary/DES/V1/wsdls/CreateDeliverySchedule.wsdl"/>
        <oracle-xsl-mapper:rootElement name="BsScheduleLocationsRequest"
                                       namespace="http://ws.fwk.ikea.com/business-call"/>
      </oracle-xsl-mapper:target>
    </oracle-xsl-mapper:mapTargets>
    <!--GENERATED BY ORACLE XSL MAPPER 12.2.1.3.0(XSLT Build 170820.1700.2557) AT [THU FEB 13 20:19:13 GMT+05:30 2020].-->
  </oracle-xsl-mapper:schema>
  <!--User Editing allowed BELOW this line - DO NOT DELETE THIS LINE-->
  <xsl:param name="MessageId"/>
  <xsl:param name="ClientID"/>
  <xsl:param name="EnvironmentID"/>
  <xsl:template match="/">
    <tns:BsScheduleLocationsRequest>
      <tns:EBCHeader>
        <tns:clientId>
          <xsl:value-of select="$ClientID"/>
        </tns:clientId>
        <tns:ebcname>
          <xsl:text disable-output-escaping="no">EBCDEPDS01</xsl:text>
        </tns:ebcname>
        <tns:consumerId>
          <xsl:text disable-output-escaping="no">IIP</xsl:text>
        </tns:consumerId>
        <tns:providerId>
          <xsl:text disable-output-escaping="no">Delivery Schedule</xsl:text>
        </tns:providerId>
        <tns:contractId>
          <xsl:text disable-output-escaping="no">30259</xsl:text>
        </tns:contractId>
        <tns:environmentId>
          <xsl:value-of select="$EnvironmentID"/>
        </tns:environmentId>
        <tns:originator>
          <xsl:text disable-output-escaping="no">IIP</xsl:text>
        </tns:originator>
        <tns:invocationStyle>
          <xsl:text disable-output-escaping="no">SYNCH</xsl:text>
        </tns:invocationStyle>
        <!--
			<tns:wsproxyProtocolVersion>
			  <xsl:text disable-output-escaping="no">1.1</xsl:text>
			</tns:wsproxyProtocolVersion>
                        -->
        <tns:ebccontractVersion>
          <xsl:text disable-output-escaping="no">2.0.0</xsl:text>
        </tns:ebccontractVersion>
        <tns:wsendpointProtocolVersion>
          <xsl:text disable-output-escaping="no">1.0</xsl:text>
        </tns:wsendpointProtocolVersion>
        <tns:messageId>
          <xsl:value-of select="$MessageId"/>
        </tns:messageId>
      </tns:EBCHeader>
      <tns:BsScheduleLocationsRequestPayload>
        <tns:InInteractive>
          <xsl:value-of select="/ns0:CreateDeliveryScheduleEBM/ns0:DataArea/ns0:CreateDeliverySchedule/ns0:DeliverySchedule/ns0:DATA/ns0:InInteractive"/>
        </tns:InInteractive>
        <tns:InVoSchedulingRequestITM>
          
          <tns:ShipmentType>
            <xsl:value-of select="/ns0:CreateDeliveryScheduleEBM/ns0:DataArea/ns0:CreateDeliverySchedule/ns0:DeliverySchedule/ns0:DATA/ns0:InVoSchedulingRequestITM/ns0:ShipmentTypeNew"/>
          </tns:ShipmentType>
          <tns:LoadingUnitTypeEdi>
            <xsl:value-of select="/ns0:CreateDeliveryScheduleEBM/ns0:DataArea/ns0:CreateDeliverySchedule/ns0:DeliverySchedule/ns0:DATA/ns0:InVoSchedulingRequestITM/ns0:LoadingUnitTypeEdi"/>
          </tns:LoadingUnitTypeEdi>
          <tns:PartLoadFlag>
            <xsl:value-of select="/ns0:CreateDeliveryScheduleEBM/ns0:DataArea/ns0:CreateDeliverySchedule/ns0:DeliverySchedule/ns0:DATA/ns0:InVoSchedulingRequestITM/ns0:PartLoadFlag"/>
          </tns:PartLoadFlag>
          <tns:TransitShpFlag>
            <xsl:value-of select="/ns0:CreateDeliveryScheduleEBM/ns0:DataArea/ns0:CreateDeliverySchedule/ns0:DeliverySchedule/ns0:DATA/ns0:InVoSchedulingRequestITM/ns0:TransitShpFlag"/>
          </tns:TransitShpFlag>
          <tns:OriginSystem>
            <xsl:value-of select="/ns0:CreateDeliveryScheduleEBM/ns0:DataArea/ns0:CreateDeliverySchedule/ns0:DeliverySchedule/ns0:DATA/ns0:InVoSchedulingRequestITM/ns0:OriginSystemNew"/>
          </tns:OriginSystem>
          <tns:RequestUser>
            <xsl:value-of select="/ns0:CreateDeliveryScheduleEBM/ns0:DataArea/ns0:CreateDeliverySchedule/ns0:DeliverySchedule/ns0:DATA/ns0:InVoSchedulingRequestITM/ns0:RequestUserNew"/>
          </tns:RequestUser>
          <tns:ShipmentId>
            <tns:ShpNumber>
              <xsl:value-of select="/ns0:CreateDeliveryScheduleEBM/ns0:DataArea/ns0:CreateDeliverySchedule/ns0:DeliverySchedule/ns0:DATA/ns0:InVoSchedulingRequestITM/ns0:ShipmentId/ns0:ShpNumber"/>
            </tns:ShpNumber>
            <tns:Creator>
              <tns:Code>
                <xsl:value-of select="/ns0:CreateDeliveryScheduleEBM/ns0:DataArea/ns0:CreateDeliverySchedule/ns0:DeliverySchedule/ns0:DATA/ns0:InVoSchedulingRequestITM/ns0:ShipmentId/ns0:Creator/ns0:Code"/>
              </tns:Code>
              <tns:BuType>
                <xsl:value-of select="/ns0:CreateDeliveryScheduleEBM/ns0:DataArea/ns0:CreateDeliverySchedule/ns0:DeliverySchedule/ns0:DATA/ns0:InVoSchedulingRequestITM/ns0:ShipmentId/ns0:Creator/ns0:BuType"/>
              </tns:BuType>
            </tns:Creator>
          </tns:ShipmentId>
          <xsl:if test="/ns0:CreateDeliveryScheduleEBM/ns0:DataArea/ns0:CreateDeliverySchedule/ns0:DeliverySchedule/ns0:DATA/ns0:InVoSchedulingRequestITM/ns0:TransportAgreementId">
            <tns:TransportAgreementId>
              <xsl:if test="/ns0:CreateDeliveryScheduleEBM/ns0:DataArea/ns0:CreateDeliverySchedule/ns0:DeliverySchedule/ns0:DATA/ns0:InVoSchedulingRequestITM/ns0:TransportAgreementId/ns0:Creator">
                <tns:Creator>
                  <xsl:if test="/ns0:CreateDeliveryScheduleEBM/ns0:DataArea/ns0:CreateDeliverySchedule/ns0:DeliverySchedule/ns0:DATA/ns0:InVoSchedulingRequestITM/ns0:TransportAgreementId/ns0:Creator/ns0:Code">
                    <tns:Code>
                      <xsl:value-of select="/ns0:CreateDeliveryScheduleEBM/ns0:DataArea/ns0:CreateDeliverySchedule/ns0:DeliverySchedule/ns0:DATA/ns0:InVoSchedulingRequestITM/ns0:TransportAgreementId/ns0:Creator/ns0:Code"/>
                    </tns:Code>
                  </xsl:if>
                  <xsl:if test="/ns0:CreateDeliveryScheduleEBM/ns0:DataArea/ns0:CreateDeliverySchedule/ns0:DeliverySchedule/ns0:DATA/ns0:InVoSchedulingRequestITM/ns0:TransportAgreementId/ns0:Creator/ns0:BuType">
                    <tns:BuType>
                      <xsl:value-of select="/ns0:CreateDeliveryScheduleEBM/ns0:DataArea/ns0:CreateDeliverySchedule/ns0:DeliverySchedule/ns0:DATA/ns0:InVoSchedulingRequestITM/ns0:TransportAgreementId/ns0:Creator/ns0:BuType"/>
                    </tns:BuType>
                  </xsl:if>
                </tns:Creator>
              </xsl:if>
              <xsl:if test="/ns0:CreateDeliveryScheduleEBM/ns0:DataArea/ns0:CreateDeliverySchedule/ns0:DeliverySchedule/ns0:DATA/ns0:InVoSchedulingRequestITM/ns0:TransportAgreementId/ns0:TransportAgreementNumber">
                <tns:TransportAgreementNumber>
                  <xsl:value-of select="/ns0:CreateDeliveryScheduleEBM/ns0:DataArea/ns0:CreateDeliverySchedule/ns0:DeliverySchedule/ns0:DATA/ns0:InVoSchedulingRequestITM/ns0:TransportAgreementId/ns0:TransportAgreementNumber"/>
                </tns:TransportAgreementNumber>
              </xsl:if>
            </tns:TransportAgreementId>
          </xsl:if>
          <!-- ITMINT-2185 Changes Started -->
          <xsl:if test="/ns0:CreateDeliveryScheduleEBM/ns0:DataArea/ns0:CreateDeliverySchedule/ns0:DeliverySchedule/ns0:DATA/ns0:InVoSchedulingRequestITM/ns0:MainCarrierId">
            <tns:MainCarrierId>
                  <xsl:if test="/ns0:CreateDeliveryScheduleEBM/ns0:DataArea/ns0:CreateDeliverySchedule/ns0:DeliverySchedule/ns0:DATA/ns0:InVoSchedulingRequestITM/ns0:MainCarrierId/ns0:Code">
                    <tns:Code>
                      <xsl:value-of select="/ns0:CreateDeliveryScheduleEBM/ns0:DataArea/ns0:CreateDeliverySchedule/ns0:DeliverySchedule/ns0:DATA/ns0:InVoSchedulingRequestITM/ns0:MainCarrierId/ns0:Code"/>
                    </tns:Code>
                  </xsl:if>
                  <xsl:if test="/ns0:CreateDeliveryScheduleEBM/ns0:DataArea/ns0:CreateDeliverySchedule/ns0:DeliverySchedule/ns0:DATA/ns0:InVoSchedulingRequestITM/ns0:MainCarrierId/ns0:BuType">
                    <tns:BuType>
                      <xsl:value-of select="/ns0:CreateDeliveryScheduleEBM/ns0:DataArea/ns0:CreateDeliverySchedule/ns0:DeliverySchedule/ns0:DATA/ns0:InVoSchedulingRequestITM/ns0:MainCarrierId/ns0:BuType"/>
                    </tns:BuType>
                  </xsl:if>              
            </tns:MainCarrierId>
          </xsl:if>
          <!-- ITMINT-2185 Changes Ended  -->
          <tns:SchedulingLocationList>
            <xsl:for-each select="/ns0:CreateDeliveryScheduleEBM/ns0:DataArea/ns0:CreateDeliverySchedule/ns0:DeliverySchedule/ns0:DATA/ns0:InVoSchedulingRequestITM/ns0:SchedulingLocationList/ns0:VoSchedulingLocation">
              <tns:VoSchedulingLocation>
                <tns:Activity>
                  <xsl:value-of select="ns0:Activity"/>
                </tns:Activity>
                <tns:ActivityDate>
                  <xsl:value-of select="ns0:ActivityDate"/>
                </tns:ActivityDate>
                <tns:ActivitySequence>
                  <xsl:value-of select="ns0:ActivitySequence"/>
                </tns:ActivitySequence>
                <tns:ConsiderPlannedTimeFlag>
                  <xsl:value-of select="ns0:ConsiderPlannedTimeFlag"/>
                </tns:ConsiderPlannedTimeFlag>
                <tns:Distance>
                  <xsl:value-of select="ns0:Distance"/>
                </tns:Distance>
                <tns:OrderedVolumeSum>
                  <xsl:value-of select="ns0:OrderedVolumeSum"/>
                </tns:OrderedVolumeSum>
                <tns:OrderedTransitVolumeSum>
                  <xsl:value-of select="ns0:OrderedTransitVolumeSum"/>
                </tns:OrderedTransitVolumeSum>
                <tns:PmCodeMin>
                  <xsl:value-of select="ns0:PmCodeMin"/>
                </tns:PmCodeMin>
                <tns:HandlingMaterialFlag>
                  <xsl:value-of select="ns0:HandlingMaterialFlag"/>
                </tns:HandlingMaterialFlag>
                <tns:BuAddress>
                  <tns:Sequence>
                    <xsl:value-of select="ns0:BuAddress/ns0:Sequence"/>
                  </tns:Sequence>
                  <tns:ValidFlag>
                    <xsl:value-of select="ns0:BuAddress/ns0:ValidFlag"/>
                  </tns:ValidFlag>
                  <tns:BusinessUnit>
                    <tns:Code>
                      <xsl:value-of select="ns0:BuAddress/ns0:BusinessUnit/ns0:Code"/>
                    </tns:Code>
                    <tns:BuType>
                      <xsl:value-of select="ns0:BuAddress/ns0:BusinessUnit/ns0:BuType"/>
                    </tns:BuType>
                    <tns:BuName>
                      <xsl:value-of select="ns0:BuAddress/ns0:BusinessUnit/ns0:BuName"/>
                    </tns:BuName>
                  </tns:BusinessUnit>
                  <tns:Country>
                    <tns:GaCodeCountry>
                      <xsl:value-of select="ns0:BuAddress/ns0:Country/ns0:GaCodeCountry"/>
                    </tns:GaCodeCountry>
                    <tns:GaTypeCountry>
                      <xsl:value-of select="ns0:BuAddress/ns0:Country/ns0:GaTypeCountry"/>
                    </tns:GaTypeCountry>
                    <tns:CountryName>
                      <xsl:value-of select="ns0:BuAddress/ns0:Country/ns0:CountryName"/>
                    </tns:CountryName>
                  </tns:Country>
                </tns:BuAddress>
                <tns:SchedulingConsignmentList>
                  <xsl:for-each select="ns0:SchedulingConsignmentList/ns0:VoSchedulingConsignment">
                    <tns:VoSchedulingConsignment>
                      <tns:Message>
                        <xsl:value-of select="ns0:Message"/>
                      </tns:Message>
                      <tns:ConsignmentNumber>
                        <xsl:value-of select="ns0:ConsignmentNumber"/>
                      </tns:ConsignmentNumber>
                      <tns:Creator>
                        <tns:Code>
                          <xsl:value-of select="ns0:Creator/ns0:Code"/>
                        </tns:Code>
                        <tns:BuType>
                          <xsl:value-of select="ns0:Creator/ns0:BuType"/>
                        </tns:BuType>
                      </tns:Creator>
                      <tns:Consignor>
                        <tns:Sequence>
                          <xsl:value-of select="ns0:Consignor/ns0:Sequence"/>
                        </tns:Sequence>
                        <tns:BusinessUnit>
                          <tns:Code>
                            <xsl:value-of select="ns0:Consignor/ns0:BusinessUnit/ns0:Code"/>
                          </tns:Code>
                          <tns:BuType>
                            <xsl:value-of select="ns0:Consignor/ns0:BusinessUnit/ns0:BuType"/>
                          </tns:BuType>
                        </tns:BusinessUnit>
                      </tns:Consignor>
                      <tns:Consignee>
                        <tns:Sequence>
                          <xsl:value-of select="ns0:Consignee/ns0:Sequence"/>
                        </tns:Sequence>
                        <tns:BusinessUnit>
                          <tns:Code>
                            <xsl:value-of select="ns0:Consignee/ns0:BusinessUnit/ns0:Code"/>
                          </tns:Code>
                          <tns:BuType>
                            <xsl:value-of select="ns0:Consignee/ns0:BusinessUnit/ns0:BuType"/>
                          </tns:BuType>
                        </tns:BusinessUnit>
                      </tns:Consignee>
                      <tns:OrderedVolume>
                        <xsl:value-of select="ns0:OrderedVolume"/>
                      </tns:OrderedVolume>
                      <tns:PmCode>
                        <xsl:value-of select="ns0:PmCode"/>
                      </tns:PmCode>
                      <tns:TransitFlag>
                        <xsl:value-of select="ns0:TransitFlag"/>
                      </tns:TransitFlag>
                    </tns:VoSchedulingConsignment>
                  </xsl:for-each>
                </tns:SchedulingConsignmentList>
              </tns:VoSchedulingLocation>
            </xsl:for-each>
          </tns:SchedulingLocationList>
        </tns:InVoSchedulingRequestITM>
      </tns:BsScheduleLocationsRequestPayload>
    </tns:BsScheduleLocationsRequest>
  </xsl:template>
</xsl:stylesheet>
