<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" >
    <xsl:output method="html" doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"
                doctype-public="-//W3C//DTD XHTML 1.0 Transitional//EN" indent="yes"/>

    <xsl:template match="/">
        <html xmlns="http://www.w3.org/1999/xhtml" xml:lang="pl" lang="pl">
            <body>
                <h2 style="text-align:center" >ALCOHOL WHOLESALE</h2>
                <table align="center" border="1">
                    <tr bgcolor = "#9acd32">
                        <th style="text-align:center">Producent</th>
                        <th style="text-align:center">Alcohol Name</th>
                        <th style="text-align:center">Price</th>
                        <th style="text-align:center">Volume</th>
                        <th style="text-align:center">Strength</th>
                    </tr>
                    <xsl:for-each select="document/alcohol_wholesale/products/product">
                        <xsl:sort select="name"/>
                        <tr>
                            <td><xsl:value-of select="name"/></td>
                            <td><xsl:value-of select="producent"/></td>
                            <td style="text-align:center"><xsl:value-of select="price"/></td>
                            <td style="text-align:center"><xsl:value-of select="volume"/>%</td>
                            <td style="text-align:center"><xsl:value-of select="strength"/>%</td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>