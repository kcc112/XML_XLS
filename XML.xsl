<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" version="1.0" encoding="UTF-8"  indent="yes"/>

    <xsl:template name="document" match="/">
        <xsl:element name="AlcoholWholesaleReport">
            <xsl:apply-templates select="document/alcohol_wholesale/products"/>
            <xsl:apply-templates select="document/information/creators"/>
            <xsl:call-template name="Statistics"/>
        </xsl:element>
    </xsl:template>

    <xsl:template match="document/alcohol_wholesale/products">
        <xsl:for-each select="product">
            <xsl:sort select="name"/>
            <xsl:element name="Product">
                <xsl:attribute name="Name">
                    <xsl:value-of select="name"/>
                </xsl:attribute>
                <xsl:attribute name="Category">
                    <xsl:variable name="catId" select="@catId" />
                    <xsl:value-of select="ancestor::*/categories/category[@catId = $catId]/@name" />
                </xsl:attribute>
                <xsl:attribute name="Producent">
                    <xsl:variable name="manId" select="producent/@manId" />
                    <xsl:value-of select="ancestor::*/manufacturers/manufacturer[@manId = $manId]/@name" />
                </xsl:attribute>
                <xsl:attribute name="Volume">
                    <xsl:variable name="unitId" select="volume/@unitId" />
                    <xsl:value-of select="concat(volume,'',ancestor::*/units/unit[@unitId = $unitId]/@name)"/>
                </xsl:attribute>
                <xsl:attribute name="Strength">
                    <xsl:variable name="unitId" select="strength/@unitId" />
                    <xsl:value-of select="concat(strength,' ',ancestor::*/units/unit[@unitId = $unitId]/@name)"/>
                </xsl:attribute>
                <xsl:attribute name="Price">
                    <xsl:variable name="unitId" select="price/@unitId" />
                    <xsl:value-of select="concat(price,' ',ancestor::*/units/unit[@unitId = $unitId]/@name)"/>
                </xsl:attribute>
            </xsl:element>
        </xsl:for-each>
    </xsl:template>

    <xsl:template match="document/information/creators">
        <xsl:element name="Authors">
            <xsl:for-each select="author">
                <xsl:element name="Author">
                    <xsl:value-of select="."/>
                </xsl:element>
            </xsl:for-each>
        </xsl:element>
    </xsl:template>

    <xsl:template name="Statistics">
        <xsl:element name="Podsumowanie">
            <xsl:element name="Manufacturers_Sum">
                <xsl:value-of select="count(document/alcohol_wholesale/manufacturers/manufacturer)"/>
            </xsl:element>
            <xsl:element name="Categories_Sum">
                <xsl:value-of select="count(document/alcohol_wholesale/categories/category)"/>
            </xsl:element>
            <xsl:element name="Units_Sum">
                <xsl:value-of select="count(document/alcohol_wholesale/units/unit)"/>
            </xsl:element>
            <xsl:element name="Products_Sum">
                <xsl:value-of select="count(document/alcohol_wholesale/products/product)"/>
            </xsl:element>
            <xsl:element name="VodkaNumber">
                <xsl:value-of select="count(document/alcohol_wholesale/products/product[@catId='c01'])"/>
            </xsl:element>
            <xsl:element name="White-WineNumber">
                <xsl:value-of select="count(document/alcohol_wholesale/products/product[@catId='c02'])"/>
            </xsl:element>
            <xsl:element name="Red-Wine">
                <xsl:value-of select="count(document/alcohol_wholesale/products/product[@catId='c03'])"/>
            </xsl:element>
            <xsl:element name="Cognac">
                <xsl:value-of select="count(document/alcohol_wholesale/products/product[@catId='c04'])"/>
            </xsl:element>
            <xsl:element name="Whisky">
                <xsl:value-of select="count(document/alcohol_wholesale/products/product[@catId='c05'])"/>
            </xsl:element>
            <xsl:element name="Beer">
                <xsl:value-of select="count(document/alcohol_wholesale/products/product[@catId='c06'])"/>
            </xsl:element>
            <xsl:element name="Absinth">
                <xsl:value-of select="count(document/alcohol_wholesale/products/product[@catId='c07'])"/>
            </xsl:element>
            <xsl:element name="Average_Alcohol_Price">
                <xsl:value-of select="round(sum(document/alcohol_wholesale/products/product/price) div count(document/alcohol_wholesale/products/product) * 10) div 10"/>
            </xsl:element>
            <xsl:element name="Average_Vodka_Price">
                <xsl:choose>
                    <xsl:when test="count(document/alcohol_wholesale/products/product[@catId='c01'])!=0">
                        <xsl:value-of select="round(sum(document/alcohol_wholesale/products/product[@catId='c01']/price) div count(document/alcohol_wholesale/products/product[@catId='c01']) * 100) div 100"/>
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:value-of select="0"/>
                    </xsl:otherwise>
                </xsl:choose>
            </xsl:element>
            <xsl:element name="Average_White_Wine_Price">
                <xsl:choose>
                    <xsl:when test="count(document/alcohol_wholesale/products/product[@catId='c02'])!=0">
                        <xsl:value-of select="round(sum(document/alcohol_wholesale/products/product[@catId='c02']/price) div count(document/alcohol_wholesale/products/product[@catId='c02']) * 100) div 100"/>
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:value-of select="0"/>
                    </xsl:otherwise>
                </xsl:choose>
            </xsl:element>
            <xsl:element name="Average_Red_Wine_Price">
                <xsl:choose>
                    <xsl:when test="count(document/alcohol_wholesale/products/product[@catId='c03'])!=0">
                        <xsl:value-of select="round(sum(document/alcohol_wholesale/products/product[@catId='c03']/price) div count(document/alcohol_wholesale/products/product[@catId='c03']) * 100) div 100"/>
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:value-of select="0"/>
                    </xsl:otherwise>
                </xsl:choose>
            </xsl:element>
            <xsl:element name="Average_Cognac_Price">
                <xsl:choose>
                    <xsl:when test="count(document/alcohol_wholesale/products/product[@catId='c04'])!=0">
                        <xsl:value-of select="round(sum(document/alcohol_wholesale/products/product[@catId='c04']/price) div count(document/alcohol_wholesale/products/product[@catId='c04']) * 100) div 100"/>
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:value-of select="0"/>
                    </xsl:otherwise>
                </xsl:choose>
            </xsl:element>
            <xsl:element name="Average_Whisky_Price">
                <xsl:choose>
                    <xsl:when test="count(document/alcohol_wholesale/products/product[@catId='c05'])!=0">
                        <xsl:value-of select="round(sum(document/alcohol_wholesale/products/product[@catId='c05']/price) div count(document/alcohol_wholesale/products/product[@catId='c05']) * 100) div 100"/>
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:value-of select="0"/>
                    </xsl:otherwise>
                </xsl:choose>
            </xsl:element>
            <xsl:element name="Average_Beer_Price">
                <xsl:choose>
                    <xsl:when test="count(document/alcohol_wholesale/products/product[@catId='c06'])!=0">
                        <xsl:value-of select="round(sum(document/alcohol_wholesale/products/product[@catId='c06']/price) div count(document/alcohol_wholesale/products/product[@catId='c06']) * 100) div 100"/>
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:value-of select="0"/>
                    </xsl:otherwise>
                </xsl:choose>
            </xsl:element>
            <xsl:element name="Average_Absinth_Price">
                <xsl:choose>
                    <xsl:when test="count(document/alcohol_wholesale/products/product[@catId='c07'])!=0">
                        <xsl:value-of select="round(sum(document/alcohol_wholesale/products/product[@catId='c07']/price) div count(document/alcohol_wholesale/products/product[@catId='c07']) * 100) div 100"/>
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:value-of select="0"/>
                    </xsl:otherwise>
                </xsl:choose>
            </xsl:element>
            <xsl:element name="RaportDateGeneration">
                <xsl:value-of select="format-dateTime(current-dateTime(),'[D01]-[M01]-[Y0001]')"/>
            </xsl:element>
        </xsl:element>
    </xsl:template>

</xsl:stylesheet>