<?xml version="1.0"?>

<!-- PACKING LIST -->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<!-- <xsl:stylesheet xmlns:xsl="http://www.w3.org/tr/wd-xls" version="1.0"> -->
<!-- HEADER NAME -->
<xsl:variable name="header" select="'PACKING LIST'"/>
<!-- HEADER CONSTANTS -->
<xsl:variable name="hddte" select="'Date'"/>
<xsl:variable name="hdbvn" select="'Buyers VAT-number'"/>
<xsl:variable name="hdbid" select="'Customer'"/>
<xsl:variable name="hdlo" select="'Loading Order'"/>
<xsl:variable name="hdldate" select="'Loading Date'"/>
<xsl:variable name="hdcntrct" select="'Contract'"/>
<!-- SHIPMENT ITEM HEADERS -->
<xsl:variable name="itm0" select="'B/L:'"/>
<xsl:variable name="itm8" select="'Material:'"/>
<xsl:variable name="itm1" select="'Package No.'"/>
<xsl:variable name="itm2" select="'Pac.'"/>
<xsl:variable name="itm3" select="'Pieces tot.'"/>
<xsl:variable name="itm4" select="'Rm'"/>
<xsl:variable name="itm6" select="'M3'"/>
<xsl:variable name="short" select="1800"/>
<xsl:variable name="long" select="7200"/>
<xsl:variable name="delta" select="300"/>
<xsl:variable name="unknown" select="''"/>

<xsl:template match="/">
<html>
     <head>
     <meta http-equiv="Content-Type" content="text/html" charset="windows-1252"/>
     <!-- STYLE DEFINITIONS -->
     <STYLE TYPE="text/css">
      body
      {
       font-family: Verdana, Arial, Helvetica;
       background-color: rgb(256,256,256);
       color: black;
      }
      H1
      {
       font-family: Verdana, Arial, Helvetica, sans-serif;
       font-size: 20px;
       color: rgb(0,0,0);
      }
      .header16_
      {
       font-size: 13px;
       font-weight: bold;
       background-color: rgb(256,256,256);
       color: black;
       text-align: left;
       vertical-align: top;
       padding-left: 0px;
      }
      .datatable13_
      {
       font-size: 10px;
       background-color: rgb(256,256,256);
       color: black;
       text-align: left;
       vertical-align: top;
       padding-left: 0px;
      }
      .datatable13right_
      {
       font-size: 10px;
       background-color: rgb(256,256,256);
       color: black;
       text-align: right;
       vertical-align: top;
       padding-left: 0px;
      }
      .datatable10_
      {
       font-size: 8px;
       background-color: rgb(256,256,256);
       color: black;
       text-align: left;
       vertical-align: top;
       padding-left: 0px;
      }
      .datatable13gray_
      {
       font-size: 10px;
       background-color:rgb(211,211,211);
       color: black;
       text-align: left;
       vertical-align: top;
       padding-left: 0px;
      }
      .datatable13rightgray_
      {
       font-size: 10px;
       background-color:rgb(211,211,211);
       color: black;
       text-align: right;
       vertical-align: top;
       padding-left: 0px;
      }
      .datatable10gray_
      {
       font-size: 8px;
       background-color:lightgray;
       color: black;
       text-align: left;
       vertical-align: top;
       padding-left: 0px;
      }
      .dataheader12u_
      {
       font-size: 9px;
       font-weight: bold;
       background-color: rgb(256,256,256);
       color: black;
       text-align: left;
       vertical-align: top;
       padding-left: 0px;
       BORDER-BOTTOM: #000080 1px ridge;
      }
      .dataheader12uright_
      {
       font-size: 9px;
       font-weight: bold;
       background-color: rgb(256,256,256);
       color: black;
       text-align: right;
       vertical-align: top;
       padding-left: 0px;
       BORDER-BOTTOM: #000080 1px ridge;
      }
      .dataheader13uright_
      {
       font-size: 10px;
       font-weight: bold;
       background-color: rgb(256,256,256);
       color: black;
       text-align: right;
       vertical-align: top;
       padding-left: 0px;
       BORDER-BOTTOM: #000080 1px ridge;
      }
      .dataheader13u_
      {
       font-size: 10px;
       font-weight: bold;
       background-color: rgb(256,256,256);
       color: black;
       text-align: left;
       vertical-align: top;
       padding-left: 0px;
       BORDER-BOTTOM: #000080 1px ridge;
      }
      .dataheader9_
      {
       font-size: 7px;
       font-weight: bold;
       background-color: rgb(256,256,256);
       color: black;
       text-align: left;
       vertical-align: top;
       padding-left: 0px;
      }
      .dataheader12_
      {
       font-size: 9px;
       font-weight: bold;
       background-color: rgb(256,256,256);
       color: black;
       text-align: left;
       vertical-align: top;
       padding-left: 0px;
      }
      .dataheader12center_
      {
       font-size: 9px;
       font-weight: bold;
       background-color: rgb(256,256,256);
       color: black;
       text-align: center; <!-- right -->
       vertical-align: top;
       padding-left: 0px;
      }
      .dataheader12right_
      {
       font-size: 9px;
       font-weight: bold;
       background-color: rgb(256,256,256);
       color: black;
       text-align: right;
       vertical-align: top;
       padding-left: 0px;
      }
      .dataheader13_
      {
       font-size: 9px;
       font-weight: bold;
       background-color: rgb(256,256,256);
       color: black;
       text-align: left;
       vertical-align: top;
       padding-left: 0px;
      }
      .dataheader13right_
      {
       font-size: 9px;
       font-weight: bold;
       background-color: rgb(256,256,256);
       color: black;
       text-align: right;
       vertical-align: top;
       padding-left: 0px;
      }
      .dataheader13center_
      {
       font-size: 9px;
       font-weight: bold;
       background-color: rgb(256,256,256);
       color: black;
       text-align: center; <!-- right -->
       vertical-align: top;
       padding-left: 0px;
      }
      .dataheader15right_
      {
       font-size: 12px;
       font-weight: bold;
       background-color: rgb(256,256,256);
       color: black;
       text-align: right;
       vertical-align: top;
       padding-right: 10px;
      }
   </STYLE>
     <title> <xsl:value-of select="$header"/> </title>
     </head>
     <body>  
         <!-- BUILD HEADER -->
         <xsl:call-template name="header">
         <xsl:with-param name="element" select=".//DeliveryMessageWood/DeliveryMessageWoodHeader"/>
         </xsl:call-template>      
         <hr width="100%" align="left"/>   
         <!-- BILLING DATA -->
         <xsl:call-template name="billingdata">
         <xsl:with-param name="element" select=".//DeliveryMessageWood/DeliveryMessageWoodHeader"/>
         <xsl:with-param name="element2" select=".//DeliveryMessageWood/DeliveryMessageWoodHeader"/>
         </xsl:call-template>   
         <hr width="100%" align="left"/>   
         <table border="0" cellpadding="2" cellspacing="0" width="100%">   
			 <!-- BUILD SHIPMENT HEADER -->
			 <xsl:call-template name="shipmentheader">
			 </xsl:call-template>
			 <!-- BUILD GROUP LEVEL 1 ROWS -->
			 <xsl:for-each select=".//DeliveryMessageWood/DeliveryMessageShipment">
				 <xsl:call-template name="LevelOne">
				 <xsl:with-param name="element" select="."/>
				 <xsl:with-param name="shipmentid" select="ShipmentID"/>
				 </xsl:call-template>
			 </xsl:for-each>
			 <tr/>
			 <!-- BUILD SHIPMENT ROWS -->
			 <xsl:for-each select=".//DeliveryMessageWood/DeliveryMessageShipment/DeliveryMessageProductGroup">
				 <xsl:call-template name="shipmentrow">
				 <xsl:with-param name="element" select="."/>
				 <!--xsl:with-param name="shipmentid" select="ProductGroupID"/>-->
				 </xsl:call-template>
			 </xsl:for-each>
			 <tr/>
			 <!-- BUILD Shipment Level One Totals Summary -->
			 <xsl:call-template name="summary">
			 <xsl:with-param name="element" select=".//DeliveryMessageWood/DeliveryMessageShipment/ShipmentSummary"/>
			 <xsl:with-param name="element2" select=".//DeliveryMessageWood/DeliveryMessageShipment/ShipmentSummary"/>
			 <xsl:with-param name="item" select=".//DeliveryMessageWood/DeliveryMessageShipment/ShipmentID"/>
			 <xsl:with-param name="tclass" select="'Subtotal of: '"/>
			 <xsl:with-param name="TextFont" select="normal"/>
			 </xsl:call-template>
			 <tr/>     
			 <!-- BUILD DeliveryMessageWoodSummary Summary  -->
			 <xsl:call-template name="summary">
			 <xsl:with-param name="element" select=".//DeliveryMessageWood/DeliveryMessageWoodSummary"/>
			 <xsl:with-param name="element2" select=".//DeliveryMessageWood/DeliveryMessageWoodSummary/LengthSpecification"/>
			 <xsl:with-param name="item"  select="'message:'"/>
			 <xsl:with-param name="tclass" select="'Total of: '"/>
			 <xsl:with-param name="TextFont" select="normal"/>    
			 </xsl:call-template>
		 </table>
     <hr width="100%" align="left"/>
     </body>
</html>
     </xsl:template> <!-- match -->
<!-- _______________________________________________
     This template (header) shows the Company Logo and document
     Heading. Also the Loading Order Number
     params: 
     element : contains header construction elements
     _______________________________________________ --> 
     <xsl:template name="header">
     <xsl:param name="element"/>
     <table border="0" cellpadding="2" cellspacing="0" width="100%">   
     <!-- 'HEADER' ROW -->
         <td width="40%" class="datatableimg">
         <img src="SEvari2.gif"/>
         <br/><br/><br/>         
         </td>
         <td width="23%">
         <h1><xsl:value-of select="$header"/></h1>
         <br/><br/><br/>         
         </td>
		 <td width="23%" class="datatable13_">
         </td>
         <td width="14%" class="datatable13_">
         </td>
         <tr/>
         <td/>
         <td class="datatable13_">
         </td>
         <td class="datatable13_">
         </td>
         <tr/>
         <td/>
         <td class="datatable13_">
         <b><xsl:value-of select="$hddte"/></b><br/>
         <xsl:value-of select="concat($element/DeliveryMessageDate/Date/Day,'.',$element/DeliveryMessageDate/Date/Month,'.',$element/DeliveryMessageDate/Date/Year)"/>
         </td>
         <td class="datatable13_">
         </td>
         <td class="datatable13_">
         <b><xsl:value-of select="$hdlo"/></b><br/>
         <xsl:value-of select="$element/DeliveryMessageReference[@DeliveryMessageReferenceType='LoadingOrderNumber']"/>
         </td>
         <tr/>
         <td/>
         <td class="datatable13_">
         </td>
         <td class="datatable13_">
         </td>
     </table>
     </xsl:template>
<!-- _________________________________________________
   
     This template (billingdata) shows the Customer Name & address
     Delivery Address, Loading Date, Contract Number
     Loading Port, Discharging Port, Final Destination
     Delivery Terms, Vessel, Buyer's Ref, Dispatch Place
     params: 
     - element : contains header construction elements
     - element2 : contains summary construction elements
   ________________________________________________ --> 
     <xsl:template name="billingdata">
     <xsl:param name="element"/>
     <xsl:param name="element2"/>
     <table border="0" cellpadding="2" cellspacing="0" width="99%">
         <td width="20%" class="datatable13_">
         <b>Customer</b>&#160;&#160;
         <xsl:value-of select="$element/BuyerParty/PartyIdentifier[@PartyIdentifierType='AssignedBySeller']"/>   
         <br/>
         <br/>
         <xsl:value-of select="$element/BuyerParty/NameAddress/Name1"/>
         <br/>
         <xsl:value-of select="$element/BuyerParty/NameAddress/Address1"/>
         <br/>
         <xsl:value-of select="$element/BuyerParty/NameAddress/City"/>
         <br/>
         <xsl:value-of select="$element/BuyerParty/NameAddress/County"/>
         <br/>
         <xsl:value-of select="$element/BuyerParty/NameAddress/PostalCode"/>
         <br/>
         <xsl:value-of select="$element/BuyerParty/NameAddress/Country"/>
         <br/>
         <br/>VAT:&#160;
         <xsl:value-of select="$element/BuyerParty/PartyIdentifier[@PartyIdentifierType='VATIdentificationNumber']"/>
         </td>
         <td width="20%" class="datatable13_">
         <b>Delivery Address</b>&#160;&#160;
         <xsl:value-of select="$element/ShipToInformation/ShipToCharacteristics/ShipToParty/PartyIdentifier[@PartyIdentifierType='AssignedBySeller']"/>         
         <br/>
         <br/>
         <xsl:value-of select="$element/ShipToInformation/ShipToCharacteristics/ShipToParty/NameAddress/Name1"/><br/> 
         <xsl:value-of select="$element/ShipToInformation/ShipToCharacteristics/ShipToParty/NameAddress/Address1"/><br/>
         <xsl:value-of select="$element/ShipToInformation/ShipToCharacteristics/ShipToParty/NameAddress/City"/><br/>
         <xsl:value-of select="$element/ShipToInformation/ShipToCharacteristics/ShipToParty/NameAddress/County"/><br/>
         <xsl:value-of select="$element/ShipToInformation/ShipToCharacteristics/ShipToParty/NameAddress/PostalCode"/><br/>
         <xsl:value-of select="$element/ShipToInformation/ShipToCharacteristics/ShipToParty/NameAddress/Country"/>
         <br/>
         <br/>VAT:&#160;
         <xsl:value-of select="$element/ShipToInformation/ShipToCharacteristics/ShipToParty/PartyIdentifier[@PartyIdentifierType='VATIdentificationNumber']"/> 
         </td>
         <td width="20%" class="datatable13_">
         <b>Loading Date:</b>
         <br/>
         <b>Contract:</b>
         <br/>
         <b>Loading Port:</b>
         <br/>
         <b>Discharging Port:</b>
         <br/>
         <b>Final Destination:</b>
         <br/>
         <b>Delivery Terms:</b>
         <br/>
         <b>Vessel:</b>
         <br/>
         <b>Buyer's Reference:</b>
         </td>
         <td width="20%" class="datatable13_">
         <xsl:value-of select="concat($element/ShipToInformation/DeliverySchedule/DeliveryLeg/DeliveryOrigin/Date/Day,'.', $element/ShipToInformation/DeliverySchedule/DeliveryLeg/DeliveryOrigin/Date/Month,'.',$element/ShipToInformation/DeliverySchedule/DeliveryLeg/DeliveryOrigin/Date/Year)"/>
         <br/>
         <xsl:value-of select="$element/DeliveryMessageReference[@DeliveryMessageReferenceType='ContractNumber']"/>
         <br/>
         <xsl:value-of select="$element/ShipToInformation/DeliverySchedule/DeliveryLeg/DeliveryOrigin/LocationParty[@PartyType='PlaceOfLoading']/NameAddress/Name1"/>
         <br/>
         <!--<xsl:value-of select="$element/ShipToInformation/ShipToCharacteristics/ShipToParty[@PartyType='Consignee']/NameAddress/County"/>-->
         <!-- xsl:value-of select="$element/ShipToInformation/DeliverySchedule/DeliveryLeg/OtherParty[@PartyType='PlaceOfDischarge']/NameAddress/Name1"/ -->
         <xsl:value-of select="$element/ShipToInformation/DeliverySchedule/DeliveryLeg/OtherParty[@PartyType='PlaceOfDischarge']/NameAddress/Name1"/>
         <!--<xsl:value-of select="$element/OtherParty[@PartyType='PlaceOfDischarge']"/>-->
         <br/>
         <!--<xsl:value-of select="$element/ShipToInformation/ShipToCharacteristics/ShipToParty[@PartyType='Consignee']/NameAddress/County"/>-->
         <!--xsl:value-of select="$element/ShipToInformation/DeliverySchedule/DeliveryLeg/OtherParty[@PartyType='PlaceOfDischarge']/NameAddress/Name1"/>-->
         <xsl:value-of select="$element/ShipToInformation/ShipToCharacteristics/ShipToParty[@PartyType='Buyer']/NameAddress/City"/>
         <!--<xsl:value-of select="$element/OtherParty[@PartyType='PlaceOfDischarge']"/>-->
         <br/>
         <xsl:value-of select="$element/ShipToInformation/ShipToCharacteristics/TermsOfDelivery"/>
         <br/>
         <xsl:value-of select="$element/ShipToInformation/DeliverySchedule/DeliveryLeg/TransportVehicleCharacteristics/TransportVehicleIdentifier[@TransportVehicleIdentifierType='VesselName']"/>
         <br/>
         <xsl:value-of select="DeliveryMessageWood/DeliveryMessageShipment/DeliveryMessageProductGroup/DeliveryShipmentLineItem/PurchaseOrderInformation/PurchaseOrderNumber"/>
         </td>
         <td width="20%" class="datatable13_">
         <b>Handled By:</b>&#160;
         <br/>
         <b>Dispatch Place:</b>&#160;
         <xsl:value-of select="$element/SupplierParty/NameAddress/City"/>
         </td>
         <tr/>
     </table>
     </xsl:template> <!-- BillingData -->

<!-- __________________________________________________________   
   This template (shipmentheader) displays the headings from Package No.
   to M3    
   ____________________________________________________________ --> 
<xsl:template name="shipmentheader">
     <tr>
   	 <td class="dataheader13u_" width="15%"><xsl:value-of select="$itm1"/></td>
   	 <td class="dataheader13uright_" width="6%"><xsl:value-of select="$itm2"/></td>
   	 <td class="dataheader13uright_" width="6%"><xsl:value-of select="$itm3"/></td>
   	 <td class="dataheader13uright_" width="6%"><xsl:value-of select="$itm4"/></td>
   	 <td class="dataheader13uright_" width="6%"><xsl:value-of select="$itm6"/></td>
         <xsl:call-template name="unit">
         <xsl:with-param name="current" select="$short"/>
         <xsl:with-param name="add" select="$delta"/>
         <xsl:with-param name="top" select="$long"/>
         </xsl:call-template>
     </tr>
</xsl:template>

<!-- _________________________________________________________________________   
      This template (unit) recursively builds measure units of the header row of shipment rows
      It displays the length headers from 1800 to 7200
      params: 
     -  current : current length of unit
     -  add : amount to add to lgth
     -  top : top value
   ____________________________________________________________________________ --> 
     <xsl:template name="unit">  
         <xsl:param name="current"/>  
		 <xsl:param name="add"/>  
		 <xsl:param name="top"/>    
		 <td class="dataheader13uright_" width="3.49%"><xsl:value-of select="$current"/></td>
		 <xsl:if test="$current &lt; $top">
			 <xsl:call-template name="unit">
			 <xsl:with-param name="current" select="$current + $add"/>
			 <xsl:with-param name="add" select="$add"/>
			 <xsl:with-param name="top" select="$top"/>
			 </xsl:call-template>   
		 </xsl:if>
	 </xsl:template>

<!-- _____________________________________________
      Template LevelOne
      This template will display the level one identifier
   _______________________________________________ -->
     <xsl:template name="LevelOne">
         <xsl:param name="shipmentid"/>
         <tr>
         <td class="dataheader13_" width="15%">
         <xsl:value-of  disable-output-escaping="yes" select="ShipmentID/@ShipmentIDType"/>&#160;
         <xsl:value-of select="$shipmentid"/>
         </td>
         </tr>
</xsl:template> <!-- LevelOne -->

<!-- _________________________________________________
     ************************
     *** Template ShipmentRow ***
     ************************ 
      This template displays the Bill Of Lading Number
      Product code and description.
      Shipment lines. Product and BOL summaries
      params: 
     - element     : contains shipment row elements
     - shipmentid : contains Product Group
   ____________________________________________________  -->
	 <xsl:template name="shipmentrow">
		 <xsl:param name="element"/>      
         <xsl:param name="shipmentid"/>
         <tr>
            <!--td class="dataheader13center_" width="15%">
             <xsl:value-of  disable-output-escaping="yes" select="$shipmentid/@ProductGroupIDType"/>&#160;
             <xsl:value-of select="$shipmentid"/>
             </td>-->
         </tr>
         <td class="dataheader13right_" width="10%">
             <!--xsl:value-of  disable-output-escaping="yes" select="$element/DeliveryShipmentLineItem/Product/ProductIdentifier/@Agency"/>&#160;-->
             <xsl:value-of select="$element/DeliveryShipmentLineItem/Product/ProductIdentifier[@Agency='Supplier']"/>&#160;
             <td class="dataheader13right_" width="0%">
             <!-- tässä edellä oli ennen 20%-->
             <xsl:value-of select="$element/DeliveryShipmentLineItem/Product/ProductDescription"/>
         </td>
         </td>
         <tr/>
   <!-- BUILD PACKAGE ROWS -->
     <xsl:for-each select="$element/DeliveryShipmentLineItem">
         <xsl:call-template name="shipmentlineitem">         
         <xsl:with-param name="element" select="."/>
         </xsl:call-template>
   <!-- BUILD Product Summary -->
         <xsl:call-template name="summary">
         <xsl:with-param name="element" select="$element/DeliveryShipmentLineItem/ProductSummary"/>
         <xsl:with-param name="element2" select="$element/DeliveryShipmentLineItem/LengthSpecification"/>
         <xsl:with-param name="item" select="$element/DeliveryShipmentLineItem/Product/ProductIdentifier[@Agency='Supplier']"/>
         <xsl:with-param name="tclass" select="'Subtotal of: '"/>
         <xsl:with-param name="TextFont" select="normal"/>
         </xsl:call-template>
   </xsl:for-each>
   <!-- BUILD Product Group Summary -->
     <tr/>
         <xsl:call-template name="summary">
         <xsl:with-param name="element" select="$element/ProductGroupSummary"/>
         <xsl:with-param name="element2" select="$element/ProductGroupSummary/LengthSpecification"/>
         <!--xsl:with-param name="item" select="$element/ProductGroupID"/>-->
         <xsl:with-param name="tclass" select="'Subtotal of: '"/>
         <xsl:with-param name="TextFont" select="center"/>
         </xsl:call-template>
     <tr/>
</xsl:template> <!-- ShipmentRow -->

<!-- _________________________________________________   
      This template (shipmentlineitem) builds shipment lineitems
      params: 
     - element : contains shipment lineitem element
     __________________________________________________ --> 
     <xsl:template name="shipmentlineitem">
         <xsl:param name="element"/>
         <xsl:for-each select="$element/TransportPackageInformation">
			 <xsl:call-template name="shipmentsubrow">
			 <xsl:with-param name="element" select="."/>
			 <xsl:with-param name="pos" select="position()"/>
			 </xsl:call-template>
		 <tr/>
	     </xsl:for-each>
	 </xsl:template>

<!-- _________________________________________________   
     This template (shipmentsubrow) builds shipment subrow      
     params: 
     -  element : contains shipment subrow elements
     -  pos : # or row
   _______________________________________________ --> 
     <xsl:template name="shipmentsubrow">
         <xsl:param name="element"/>      
	     <xsl:param name="pos"/>
         <xsl:if test="$pos mod 2 = 0">
			 <td class="datatable13_" width="15%">
			 <xsl:value-of select="$element/Identifier"/>
			 </td>
			 <td class="datatable13right_">
			 <xsl:value-of select="$unknown"/>
			 </td>
			 <td class="datatable13right_" width="6%">
			 <xsl:value-of select="$element/ItemCount"/>
			 </td>
			 <td class="datatable13right_" width="6%">
			 <xsl:value-of select="$element/InformationalQuantity[@QuantityType='RunningLength']/Value"/>
			 </td>
			 <td class="datatable13right_" width="6%">
			 <xsl:value-of select="$element/Quantity[@QuantityType='Volume']/Value "/>
			 </td>
	     </xsl:if>
	     <xsl:if test="$pos mod 2 != 0">
			 <td class="datatable13gray_" width="15%">
			 <xsl:value-of select="$element/Identifier"/>
			 </td>
			 <td class="datatable13rightgray_">
			 <xsl:value-of select="$unknown"/>
			 </td>
			 <td class="datatable13rightgray_" width="6%">
			 <xsl:value-of select="$element/ItemCount"/>
			 </td>
			 <td class="datatable13rightgray_" width="6%">
			 <xsl:value-of select="$element/InformationalQuantity[@QuantityType='RunningLength']/Value"/>
			 </td>
			 <td class="datatable13rightgray_" width="6%">
			 <xsl:value-of select="$element/Quantity[@QuantityType='Volume']/Value "/>
			 </td>
		 </xsl:if>
		 <xsl:call-template name="lengthData">
		 <xsl:with-param name="element" select="$element/WoodItem/LengthSpecification"/>
		 <xsl:with-param name="cnt" select="count($element/WoodItem/LengthSpecification)"/>
		 <xsl:with-param name="header" select="0"/>
		 <xsl:with-param name="pos2" select="$pos"/>
		 </xsl:call-template>
     </xsl:template> <!-- shipmentsubrow -->

<!-- _________________________________________________   
      This template (lengthData) searches length category
     
      params: 
     -  element : contains length data
     -  cnt : # of elements
     -  header : header-type row
     __________________________________________________ --> 
     <xsl:template name="lengthData">  
	     <xsl:param name="element"/>    
		 <xsl:param name="cnt"/>    
	     <xsl:param name="header"/>    
	     <xsl:param name="pos2"/>      
	     <xsl:for-each select="$element">
			 <xsl:sort select="./LengthCategory"/>   
			 <xsl:if test="position()=1">
				 <xsl:call-template name="category">
				 <xsl:with-param name="current" select="$short"/>
				 <xsl:with-param name="add" select="$delta"/>
				 <xsl:with-param name="top" select="./LengthCategory"/>
				 <xsl:with-param name="category" select="./LengthCategory"/>
				 <xsl:with-param name="units" select="TotalNumberOfUnits"/>
				 <xsl:with-param name="header" select="$header"/>
				 <xsl:with-param name="pos" select="$pos2"/>
				 </xsl:call-template>        
			 </xsl:if>
			 <xsl:if test="position() &gt; 1">   
				 <xsl:variable name="pos" select="position()-1"/>
				 <xsl:call-template name="category">
				 <xsl:with-param name="current" select="$element[$pos]/LengthCategory + $delta"/>
				 <xsl:with-param name="add" select="$delta"/>
				 <xsl:with-param name="top" select="./LengthCategory"/>
				 <xsl:with-param name="category" select="./LengthCategory"/>
				 <xsl:with-param name="units" select="TotalNumberOfUnits"/>
				 <xsl:with-param name="header" select="$header"/>
				 <xsl:with-param name="pos" select="$pos2"/>
				 </xsl:call-template>        
			 </xsl:if>
	     </xsl:for-each>
		 <xsl:call-template name="category">
		 <xsl:with-param name="current" select="$element[$cnt]/LengthCategory + $delta"/>
		 <xsl:with-param name="add" select="$delta"/>
		 <xsl:with-param name="top" select="$long"/>
		 <xsl:with-param name="category" select="0"/>
		 <xsl:with-param name="units" select="0"/>
		 <xsl:with-param name="header" select="$header"/>
		 <xsl:with-param name="pos" select="$pos2"/>
		 </xsl:call-template>        
	 </xsl:template> <!-- lengthdata -->

<!-- ____________________________________________________   
     This template (category), recursively searches length category
     
      params: 
     -  current : current length of unit
     -  add : amount to add to lgth
     -  top : top value
     -  category : actual category
     -  units : # of units in actual category
     -  category : actual category
     -  header : header-type row
     _____________________________________________________ --> 
	 <xsl:template name="category">  
		 <xsl:param name="current"/>  
         <xsl:param name="add"/>  
	     <xsl:param name="top"/>    
	     <xsl:param name="category"/>    
	     <xsl:param name="units"/>    
	     <xsl:param name="header"/>    
	     <xsl:param name="pos"/>      
	     <xsl:if test="$pos mod 2 = 0">   
			 <xsl:choose>
				 <xsl:when test="$header=1">
					 <td>
					 <xsl:if test="$category=$current">
						 <xsl:value-of select="$units"/>
					 </xsl:if>
					 </td>
				 </xsl:when>
				 <xsl:otherwise>
					 <td class="datatable13right_">
					 <xsl:if test="$category=$current">
						 <xsl:value-of select="$units"/>
					 </xsl:if>
					 </td>
				 </xsl:otherwise>
			 </xsl:choose>
		 </xsl:if>
		 <xsl:if test="$pos mod 2 != 0">   
			 <xsl:choose>
				 <xsl:when test="$header=1">
					 <td class="dataheader12uright_">
					 <xsl:if test="$category=$current">
						 <xsl:value-of select="$units"/>
					 </xsl:if>
					 </td>
				 </xsl:when>
				 <xsl:otherwise>
					 <td class="datatable13rightgray_">
						 <xsl:if test="$category=$current">
							 <xsl:value-of select="$units"/>
						 </xsl:if>
					 </td>
				 </xsl:otherwise>
		     </xsl:choose>
	     </xsl:if>
		 <xsl:if test="$current &lt; $top">
			 <xsl:call-template name="category">
			 <xsl:with-param name="current" select="$current + $add"/>
			 <xsl:with-param name="add" select="$add"/>
			 <xsl:with-param name="top" select="$top"/>
			 <xsl:with-param name="category" select="$category"/>
			 <xsl:with-param name="units" select="$units"/>
			 <xsl:with-param name="header" select="$header"/>
			 <xsl:with-param name="pos" select="$pos"/>
			 </xsl:call-template>   
		 </xsl:if>
	 </xsl:template> <!-- category -->

<!-- _________________________________________________
      Template : "Summary"
      This template builds product summary rows
      params: 
     -  element : product group sub-summary elements
     -  element2 : length data
     -  item : product item name
     _______________________________________________ --> 
     <xsl:template name="summary">
	     <xsl:param name="element"/>      
	     <xsl:param name="element2"/>      
	     <xsl:param name="item"/>      
	     <xsl:param name="tclass"/>      
	     <xsl:param name="TextFont"/>
	     <td class="dataheader12_">
         <xsl:value-of select="$tclass"/>
         <xsl:value-of select="$item"/>
	     </td>
		 <td class="dataheader12uright_">
		 <xsl:value-of select="$element/TotalInformationalQuantity[@QuantityType='Count']/Value "/> 
		 </td>     
	     <td class="dataheader12uright_">
		 <xsl:value-of select="$element/TotalQuantity/Value"/>
		 </td>
		 <td class="dataheader12uright_">
		 <xsl:value-of select="$element/TotalInformationalQuantity[@QuantityType='Count']/Value "/> 
		 </td>
	     <td class="dataheader12uright_">
		 <xsl:value-of select="$element/TotalInformationalQuantity[@QuantityType='RunningLength']/Value"/>
	     </td>
	     <td class="dataheader12uright_">
         <xsl:value-of select="$element/TotalQuantity[@QuantityType='Volume']/Value "/>
		   </td>
	     <xsl:call-template name="lengthData">
         <xsl:with-param name="element" select="$element2"/>
         <xsl:with-param name="cnt" select="count($element2)"/>
         <xsl:with-param name="header" select="'1'"/>
	     </xsl:call-template>
	 </xsl:template> <!-- Summary -->

</xsl:stylesheet>
