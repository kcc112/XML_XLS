<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" >

    <xsl:output method="xml" doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"
                doctype-public="-//W3C//DTD XHTML 1.0 Transitional//EN" indent="yes"/>

    <xsl:template match="/">
        <html xmlns="http://www.w3.org/1999/xhtml" xml:lang="pl" lang="pl">
            <head>
                <title>Alcohol Wholesale</title>
            </head>
            <body>
                <h2>Alcohol Wholesale Report</h2>
                <table border="2">
                    <caption><b>Inventory List</b></caption>
                    <tr>
                        <th>Name</th>
                        <th>Category</th>
                        <th>Producent</th>
                        <th>Volume</th>
                        <th>Strength</th>
                        <th>Price</th>
                    </tr>
                    <xsl:for-each select="AlcoholWholesaleReport/Product">
                        <tr>
                            <td><xsl:value-of select="@Name"/></td>
                            <td><xsl:value-of select="@Category"/></td>
                            <td><xsl:value-of select="@Producent"/></td>
                            <td><xsl:value-of select="@Volume"/></td>
                            <td><xsl:value-of select="@Strength"/></td>
                            <td><xsl:value-of select="@Price"/></td>
                        </tr>
                    </xsl:for-each>
                </table>

                <table border="2">
                    <caption><b>Elements Summary</b></caption>
                    <tr>
                        <th>Manufacturers Sum</th>
                        <th>Categories Sum</th>
                        <th>Units Sum</th>
                        <th>Products Sum</th>
                    </tr>
                    <tr>
                        <td><xsl:value-of select="AlcoholWholesaleReport/Podsumowanie/Manufacturers_Sum"/></td>
                        <td><xsl:value-of select="AlcoholWholesaleReport/Podsumowanie/Categories_Sum"/></td>
                        <td><xsl:value-of select="AlcoholWholesaleReport/Podsumowanie/Units_Sum"/></td>
                        <td><xsl:value-of select="AlcoholWholesaleReport/Podsumowanie/Products_Sum"/></td>
                    </tr>
                </table>

                <table border="2">
                <caption><b>Alcohol Summary</b></caption>
                <tr>
                    <th>VodkaNumber</th>
                    <th>White WineNumber</th>
                    <th>Red Wine</th>
                    <th>Cognac</th>
                    <th>Whisky</th>
                    <th>Beer</th>
                    <th>Absinth</th>
                </tr>
                <tr>
                    <td><xsl:value-of select="AlcoholWholesaleReport/Podsumowanie/VodkaNumber"/></td>
                    <td><xsl:value-of select="AlcoholWholesaleReport/Podsumowanie/White-WineNumber"/></td>
                    <td><xsl:value-of select="AlcoholWholesaleReport/Podsumowanie/Red-Wine"/></td>
                    <td><xsl:value-of select="AlcoholWholesaleReport/Podsumowanie/Cognac"/></td>
                    <td><xsl:value-of select="AlcoholWholesaleReport/Podsumowanie/Whisky"/></td>
                    <td><xsl:value-of select="AlcoholWholesaleReport/Podsumowanie/Beer"/></td>
                    <td><xsl:value-of select="AlcoholWholesaleReport/Podsumowanie/Absinth"/></td>
                </tr>
            </table>

                <table border="2">
                    <caption><b>Price Summary</b></caption>
                    <tr>
                        <th>Average Alcohol Price</th>
                        <th>Average Vodka Price</th>
                        <th>Average White Wine Price</th>
                        <th>Average Red Wine Price</th>
                        <th>Average Cognac Price</th>
                        <th>Average Whisky Price</th>
                        <th>Average Beer Price</th>
                        <th>Average Absinth Price</th>
                    </tr>
                    <tr>
                        <td><xsl:value-of select="AlcoholWholesaleReport/Podsumowanie/Average_Alcohol_Price"/></td>
                        <td><xsl:value-of select="AlcoholWholesaleReport/Podsumowanie/Average_Vodka_Price"/></td>
                        <td><xsl:value-of select="AlcoholWholesaleReport/Podsumowanie/Average_White_Wine_Price"/></td>
                        <td><xsl:value-of select="AlcoholWholesaleReport/Podsumowanie/Average_Red_Wine_Price"/></td>
                        <td><xsl:value-of select="AlcoholWholesaleReport/Podsumowanie/Average_Cognac_Price"/></td>
                        <td><xsl:value-of select="AlcoholWholesaleReport/Podsumowanie/Average_Whisky_Price"/></td>
                        <td><xsl:value-of select="AlcoholWholesaleReport/Podsumowanie/Average_Beer_Price"/></td>
                        <td><xsl:value-of select="AlcoholWholesaleReport/Podsumowanie/Average_Absinth_Price"/></td>
                    </tr>
                </table>

            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>