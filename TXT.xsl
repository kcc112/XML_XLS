<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="text" indent="yes"/>

    <xsl:variable name="spaces" select="'                                                                                    '"/>

    <xsl:variable name="newline" select="'&#xa;'"/>
    
    <xsl:template match="/AlcoholWholesaleReport">

        <xsl:element name="Start">| Name                                   | Category       | Producent               | Volume  | Strength    | Price          |&#xa;</xsl:element>
        <xsl:element name="space">------------------------------------------------------------------------------------------------------------------------------</xsl:element>
        <xsl:value-of select="$newline" />
            <xsl:apply-templates select="Product"/>
        <xsl:value-of select="$newline" />
        <xsl:apply-templates select="Podsumowanie"/>
    </xsl:template>

    <xsl:template match="Product">

        <xsl:variable name="sName" select="string-length(' Name                                   ')"/>
        <xsl:variable name="sCategory" select="string-length(' Category       ')"/>
        <xsl:variable name="sProducent" select="string-length(' Producent               ')"/>
        <xsl:variable name="sVolume" select="string-length(' Volume  ')"/>
        <xsl:variable name="sStrength" select="string-length(' Strength    ')"/>
        <xsl:variable name="sPrice" select="string-length(' Price          ')"/>

        <xsl:call-template name="pattern">
            <xsl:with-param name="Name" select="concat(@Name, substring($spaces, 0, $sName - string-length(@Name)))"/>
            <xsl:with-param name="Category" select="concat(@Category, substring($spaces, 0, $sCategory - string-length(@Category)))"/>
            <xsl:with-param name="Producent" select="concat(@Producent, substring($spaces, 0, $sProducent - string-length(@Producent)))"/>
            <xsl:with-param name="Volume" select="concat(@Volume, substring($spaces, 0, $sVolume - string-length(@Volume)))"/>
            <xsl:with-param name="Strength" select="concat(@Strength, substring($spaces, 0, $sStrength - string-length(@Strength)))"/>
            <xsl:with-param name="Price" select="concat(@Price, substring($spaces, 0, $sPrice - string-length(@Price)))"/>
        </xsl:call-template>
    </xsl:template>

    <xsl:template name="pattern">
        <xsl:param name="Name" />
        <xsl:param name="Category" />
        <xsl:param name="Producent" />
        <xsl:param name="Volume" />
        <xsl:param name="Strength" />
        <xsl:param name="Price" />
        <xsl:value-of select="concat('| ',$Name,'| ', $Category, '| ', $Producent, '| ', $Volume, '| ', $Strength, '| ', $Price, '|', '&#xa;')" />
    </xsl:template>

    <xsl:template match="Podsumowanie">
        <xsl:element name="Sum">| Elements Summary        |&#xa;</xsl:element>
        <xsl:element name="space">---------------------------&#xa;</xsl:element>
        <xsl:variable name="size1" select="string-length(' Elements Summary        ')"/>
        <xsl:value-of select="concat('| Manufacturers Sum  | ',Manufacturers_Sum, substring($spaces, 0, $size1 - string-length('| Manufacturers Sum  |') - string-length(Manufacturers_Sum)),' |','&#xa;')"/>
        <xsl:value-of select="concat('| Categories Sum     | ',Categories_Sum, substring($spaces, 0, $size1 - string-length('| Categories Sum     |') - string-length(Categories_Sum)),' |','&#xa;')"/>
        <xsl:value-of select="concat('| Units Sum          | ',Units_Sum, substring($spaces, 0, $size1 - string-length('| Units Sum          |') - string-length(Units_Sum)),' |','&#xa;')"/>
        <xsl:value-of select="concat('| Products Sum       | ',Products_Sum, substring($spaces, 0, $size1 - string-length('| Products Sum       |') - string-length(Products_Sum)),' |','&#xa;&#xa;')"/>


        <xsl:element name="Alcochol">| Alcochol Summary      |&#xa;</xsl:element>
        <xsl:element name="space">-------------------------&#xa;</xsl:element>
        <xsl:variable name="size2" select="string-length(' Alcochol Summary      ')"/>
        <xsl:value-of select="concat('| Vodka Number      | ',VodkaNumber, substring($spaces, 0, $size2 - string-length('| Vodka Number      |') - string-length(VodkaNumber)),' |','&#xa;')"/>
        <xsl:value-of select="concat('| White WineNumber  | ',White-WineNumber, substring($spaces, 0, $size2 - string-length('| White WineNumber  |') - string-length(White-WineNumber)),' |','&#xa;')"/>
        <xsl:value-of select="concat('| Red Wine          | ',Red-Wine, substring($spaces, 0, $size2 - string-length('| Red Wine          |') - string-length(Red-Wine)),' |','&#xa;')"/>
        <xsl:value-of select="concat('| Whisky            | ',Whisky, substring($spaces, 0, $size2 - string-length('| Whisky            |') - string-length(Whisky)),' |','&#xa;')"/>
        <xsl:value-of select="concat('| Beer              | ',Beer, substring($spaces, 0, $size2 - string-length('| Beer              |') - string-length(Beer)),' |','&#xa;')"/>
        <xsl:value-of select="concat('| Absinth           | ',Absinth, substring($spaces, 0, $size2 - string-length('| Absinth           |') - string-length(Absinth)),' |','&#xa;&#xa;')"/>


        <xsl:element name="Price">| Average Summary Price              |&#xa;</xsl:element>
        <xsl:element name="space">--------------------------------------&#xa;</xsl:element>
        <xsl:variable name="size3" select="string-length(' Average Summary Price              ')"/>
        <xsl:value-of select="concat('| Average Alcohol Price    | ',Average_Alcohol_Price, substring($spaces, 0, $size3 - string-length('| Average Alcohol Price    |') - string-length(Average_Alcohol_Price)),' |','&#xa;')"/>
        <xsl:value-of select="concat('| Average White Wine Price | ',Average_White_Wine_Price, substring($spaces, 0, $size3 - string-length('| Average White Wine Price |') - string-length(Average_White_Wine_Price)),' |','&#xa;')"/>
        <xsl:value-of select="concat('| Average Red Wine Price   | ',Average_Red_Wine_Price, substring($spaces, 0, $size3 - string-length('| Average Red Wine Price   |') - string-length(Average_Red_Wine_Price)),' |','&#xa;')"/>
        <xsl:value-of select="concat('| Average Cognac Price     | ',Average_Cognac_Price, substring($spaces, 0, $size3 - string-length('| Average Cognac Price     |') - string-length(Average_Cognac_Price)),' |','&#xa;')"/>
        <xsl:value-of select="concat('| Average Whisky Price     | ',Average_Whisky_Price, substring($spaces, 0, $size3 - string-length('| Average Whisky Price     |') - string-length(Average_Whisky_Price)),' |','&#xa;')"/>
        <xsl:value-of select="concat('| Average Beer Price       | ',Average_Beer_Price, substring($spaces, 0, $size3 - string-length('| Average Beer Price       |') - string-length(Average_Beer_Price)),' |','&#xa;')"/>
        <xsl:value-of select="concat('| Average Absinth Price    | ',Average_Absinth_Price, substring($spaces, 0, $size3 - string-length('| Average Absinth Price    |') - string-length(Average_Absinth_Price)),' |','&#xa;&#xa;')"/>

        <xsl:value-of select="concat('DATE: ',RaportDateGeneration,'&#xa;')"/>

    </xsl:template>

</xsl:stylesheet>