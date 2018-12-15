<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="text" indent="yes"/>

    <xsl:variable name="spaces" select="'                                                                                    '"/>

    <xsl:variable name="newline" select="'&#xa;'"/>
    
    <xsl:template match="/AlcoholWholesaleReport">

        <xsl:element name="Start">| Name                                   | Category       | Producent               | Volume         | Strength       | Price          |&#xa;</xsl:element>
        
        <xsl:element name="space">----------------------------------------------------------------------------------------------------------------------------------------</xsl:element>
        <xsl:value-of select="$newline" />
            <xsl:apply-templates select="Product"/>
        <xsl:value-of select="$newline" />
        <xsl:apply-templates select="Podsumowanie"/>
    </xsl:template>

    <xsl:template match="Product">
        <xsl:call-template name="pattern">
            <xsl:with-param name="Name" select="concat(@Name, substring($spaces, 0, 40 - string-length(@Name)))"/>
            <xsl:with-param name="Category" select="concat(@Category, substring($spaces, 0, 16 - string-length(@Category)))"/>
            <xsl:with-param name="Producent" select="concat(@Producent, substring($spaces, 0, 25 - string-length(@Producent)))"/>
            <xsl:with-param name="Volume" select="concat(@Volume, substring($spaces, 0, 16 - string-length(@Volume)))"/>
            <xsl:with-param name="Strength" select="concat(@Strength, substring($spaces, 0, 16 - string-length(@Strength)))"/>
            <xsl:with-param name="Price" select="concat(@Price, substring($spaces, 0, 16 - string-length(@Price)))"/>
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
        <xsl:element name="Sum">| Elements Summary      |&#xa;</xsl:element>
        <xsl:element name="space">-------------------------&#xa;</xsl:element>
        <xsl:variable name="size1" select="string-length('| Elements Summary      |')"/>
        <xsl:value-of select="concat('| Manufacturers Sum', '| ',Manufacturers_Sum, substring($spaces, 0, 2),'|','&#xa;')"/>
        <xsl:value-of select="concat('| Categories Sum',substring($spaces, 0, $size1 -2 - string-length('| Manufacturers Sum')),'| ',Categories_Sum, substring($spaces, 0, 3),'|','&#xa;')"/>
        <xsl:value-of select="concat('| Units Sum',substring($spaces, 0,  $size1 -5 - string-length('| Units Sum')),'| ',Units_Sum, substring($spaces, 0, 3),'|','&#xa;')"/>
        <xsl:value-of select="concat('| Products Sum', substring($spaces, 0,  $size1 -5  - string-length('| Products Sum')),'| ',Products_Sum, substring($spaces, 0, 2),'|','&#xa;&#xa;')"/>

        <xsl:element name="Alcochol">| Alcochol Summary      |&#xa;</xsl:element>
        <xsl:element name="space">-------------------------&#xa;</xsl:element>
        <xsl:variable name="size2" select="string-length('| Alcochol Summary      |')"/>
        <xsl:value-of select="concat('| Vodka Number', substring($spaces, 0, $size2 - 4 - string-length('| Vodka Number')), '| ',VodkaNumber, substring($spaces, 0, 2),'|','&#xa;')"/>
        <xsl:value-of select="concat('| White WineNumber', substring($spaces, 0, 3), '| ',White-WineNumber, substring($spaces, 0, 2),'|','&#xa;')"/>
        <xsl:value-of select="concat('| Red Wine', substring($spaces, 0, $size2 - 4 - string-length('| Red Wine')), '| ',Red-Wine, substring($spaces, 0, 2),'|','&#xa;')"/>
        <xsl:value-of select="concat('| Whisky', substring($spaces, 0, $size2 - 4 - string-length('| Whisky')), '| ',Whisky, substring($spaces, 0, 2),'|','&#xa;')"/>
        <xsl:value-of select="concat('| Beer', substring($spaces, 0, $size2 - 4 - string-length('| Beer')), '| ',Beer, substring($spaces, 0, 2),'|','&#xa;')"/>
        <xsl:value-of select="concat('| Absinth', substring($spaces, 0, $size2 - 4 - string-length('| Absinth')), '| ',Absinth, substring($spaces, 0, 2),'|','&#xa;&#xa;')"/>


        <xsl:element name="Price">| Average Summary Price              |&#xa;</xsl:element>
        <xsl:element name="space">--------------------------------------&#xa;</xsl:element>
        <xsl:value-of select="concat('| Average Alcohol Price    ', '| ',Average_Alcohol_Price,'     |','&#xa;')"/>
        <xsl:value-of select="concat('| Average Vodka Price      ', '| ',Average_White_Wine_Price,'       |','&#xa;')"/>
        <xsl:value-of select="concat('| Average White Wine Price ', '| ',Average_Red_Wine_Price,'  |','&#xa;')"/>
        <xsl:value-of select="concat('| Average Red Wine Price   ', '| ',Average_Cognac_Price,' |','&#xa;')"/>
        <xsl:value-of select="concat('| Average Red Wine Price   ', '| ',Average_Whisky_Price,'  |','&#xa;')"/>
        <xsl:value-of select="concat('| Average Red Wine Price   ', '| ',Average_Beer_Price,'     |','&#xa;')"/>
        <xsl:value-of select="concat('| Average Red Wine Price   ', '| ',Average_Absinth_Price,'       |','&#xa;&#xa;')"/>

        <xsl:value-of select="concat('DATE: ',RaportDateGeneration,'&#xa;')"/>

    </xsl:template>

</xsl:stylesheet>