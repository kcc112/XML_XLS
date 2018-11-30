<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" version="1.0" encoding="UTF-8"  indent="yes"/>

    <xsl:template match="/">
        <xsl:element name="AlcoholWholesaleReport">

            <xsl:apply-templates select="document/alcohol_wholesale/products"/>

            <xsl:element name="Podsumowanie">
                <xsl:element name="Manufacturers_Sum">
                    <xsl:value-of select="count(document/alcohol_wholesale/manufacturers/manufacturer)"/>
                </xsl:element>
            </xsl:element>

        </xsl:element>
    </xsl:template>

    <xsl:template match="document/alcohol_wholesale/products">
        <xsl:for-each select="product">
            <xsl:element name="Product">
                <xsl:attribute name="Name">
                    <xsl:value-of select="name"/>
                </xsl:attribute>
                <xsl:attribute name="Producent">
                    <xsl:value-of select="producent"/>
                </xsl:attribute>
                <xsl:attribute name="Volume">
                    <xsl:value-of select="volume"/>
                </xsl:attribute>
                <xsl:attribute name="Strength">
                    <xsl:value-of select="strength"/>
                </xsl:attribute>
                <xsl:choose>
                    <xsl:when test="string(@catId) = 'c01'">
                        <xsl:attribute name="Category">wódka</xsl:attribute>
                    </xsl:when>
                    <xsl:when test="string(@catId) = 'c02'">
                        <xsl:attribute name="Category">białe wino</xsl:attribute>
                    </xsl:when>
                    <xsl:when test="string(@catId) = 'c03'">
                        <xsl:attribute name="Category">czerwone wino</xsl:attribute>
                    </xsl:when>
                    <xsl:when test="string(@catId) = 'c04'">
                        <xsl:attribute name="Category">koniak</xsl:attribute>
                    </xsl:when>
                    <xsl:when test="string(@catId) = 'c05'">
                        <xsl:attribute name="Category">whisky</xsl:attribute>
                    </xsl:when>
                    <xsl:when test="string(@catId) = 'c06'">
                        <xsl:attribute name="Category">piwo</xsl:attribute>
                    </xsl:when>
                    <xsl:when test="string(@catId) = 'c07'">
                        <xsl:attribute name="Category">absynt</xsl:attribute>
                    </xsl:when>
                </xsl:choose>
            </xsl:element>
        </xsl:for-each>
    </xsl:template>

</xsl:stylesheet>