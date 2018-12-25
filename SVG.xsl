<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                version="2.0" xmlns="http://www.w3.org/2000/svg">

    <xsl:template match="AlcoholWholesaleReport">
        <svg width="40cm" height="60cm">

            <script><![CDATA[
		    function changeColor(evt) {
		      	var rect = evt.target;
		      	var currentFill = rect.getAttribute("fill");
		      	if (currentFill == "#4d79ff")
		        	rect.setAttribute("fill", "#cc0099");
		      	else
		        	rect.setAttribute("fill", "#4d79ff");
		   		}


            function drowCircle(evt){
                var rect = evt.target;
                var currentFill = rect.getAttribute("fill");
                rect.setAttribute("fill", "#9966ff");
                pie.

            }
	  		]]>
            </script>

            <style type="text/css">
                @import url('https://fonts.googleapis.com/css?family=Montserrat&amp;subset=latin-ext');
                svg{ font-family: 'Montserrat', sans-serif;}

                .text {
                font-weight: 700;
                font-size: 30;
                fill: #993399;
                }
                .text:hover,
                .text:focus {
                fill: #ff6600;
                }


                .label {
                font-size: 15px;
                fill: black;
                }

                .circe1{
                fill: #cc3399;
                stroke: #8f246b;
                }

                .button{
                fill: #cc0099;
                }

                .circle2 {
                fill: #ddd;
                stroke: $primaryColor;
                stroke-width: 50;
                stroke-dasharray: 0 158;
                transition: stroke-dasharray .3s ease;
                }

            </style>

            <text x="11cm" y="2cm" font-family="Arial" font-size="60" font-weight="700" fill="#33cc33">Alcohol Wholesale Report:</text>

            <xsl:variable name="XforBar" select="'12cm'"/>

            <text x="2cm" y="4cm" font-family="Arial" font-size="35" text-decoration="underline" font-weight="700" fill="#33cc33">Element Sums:</text>

            <xsl:for-each select="Podsumowanie">
                    <text class="text" x="2cm" y="5cm" font-family="Arial" font-size="30" fill="blue"> Manufacturers Sum: <xsl:value-of select="Manufacturers_Sum"/> </text>
                    <rect onclick="changeColor(evt)" x="{$XforBar}" y="4.5cm" rx="1" ry="1"  height="0.5cm" width="0" fill="#4d79ff" stroke="black" stroke-width="1">
                        <animate attributeType="XML" attributeName="width" from="0" to="{10*Manufacturers_Sum}" dur="2s" fill="freeze"/>
                    </rect>
                    <text class="text" x="2cm" y="6cm" font-family="Arial" font-size="30" fill="blue"> Categories Sum: <xsl:value-of select="Categories_Sum"/> </text>
                    <rect onclick="changeColor(evt)" x="{$XforBar}" y="5.5cm"  rx="1" ry="1" height="0.5cm" width="0" fill="#4d79ff" stroke="black" stroke-width="1">
                        <animate attributeType="XML" attributeName="width" from="0" to="{10*Categories_Sum}" dur="2s" fill="freeze"/>
                    </rect>
                    <text class="text" x="2cm" y="7cm" font-family="Arial" font-size="30" fill="blue"> Units Sum: <xsl:value-of select="Units_Sum"/> </text>
                    <rect onclick="changeColor(evt)" x="{$XforBar}" y="6.5cm" rx="1" ry="1" height="0.5cm"  width="0" fill="#4d79ff" stroke="black" stroke-width="1">
                        <animate attributeType="XML" attributeName="width" from="0" to="{10*Units_Sum}" dur="2s" fill="freeze"/>
                    </rect>
                    <text class="text" x="2cm" y="8cm" font-family="Arial" font-size="30" fill="blue"> Products Sum: <xsl:value-of select="Products_Sum"/> </text>
                    <rect onclick="changeColor(evt)" x="{$XforBar}" y="7.5cm" rx="1" ry="1"  height="0.5cm" width="0" fill="#4d79ff" stroke="black" stroke-width="1">
                        <animate attributeType="XML" attributeName="width" from="0" to="{10*Products_Sum}" dur="2s" fill="freeze"/>
                    </rect>
                </xsl:for-each>

            <text x="2cm" y="10cm" font-family="Arial" font-size="35" text-decoration="underline" font-weight="700" fill="#33cc33">Alcochol Sums:</text>

            <g>
                <line x1="3cm" y1="10.9cm" x2="20cm" y2="10.9cm" style="stroke:rgb(255,0,0);stroke-width:2" />
                <line x1="3cm" y1="11.9cm" x2="20cm" y2="11.9cm" style="stroke:rgb(255,0,0);stroke-width:2" />
                <line x1="3cm" y1="12.9cm" x2="20cm" y2="12.9cm" style="stroke:rgb(255,0,0);stroke-width:2" />
                <line x1="3cm" y1="13.9cm" x2="20cm" y2="13.9cm" style="stroke:rgb(255,0,0);stroke-width:2" />
                <line x1="3cm" y1="14.9cm" x2="20cm" y2="14.9cm" style="stroke:rgb(255,0,0);stroke-width:2" />
                <line x1="3cm" y1="15.9cm" x2="20cm" y2="15.9cm" style="stroke:rgb(255,0,0);stroke-width:2" />
                <line x1="3cm" y1="16.9cm" x2="20cm" y2="16.9cm" style="stroke:rgb(255,0,0);stroke-width:2" />
                <line x1="3cm" y1="17.9cm" x2="20cm" y2="17.9cm" style="stroke:rgb(255,0,0);stroke-width:2" />
            </g>

            <g class="lable">
                <text x="2cm" y="11cm">7</text>
                <text x="2cm" y="12cm">6</text>
                <text x="2cm" y="13cm">5</text>
                <text x="2cm" y="14cm">4</text>
                <text x="2cm" y="15cm">3</text>
                <text x="2cm" y="16cm">2</text>
                <text x="2cm" y="17cm">1</text>
                <text x="2cm" y="18cm">0</text>
            </g>

            <g class="lable">
                <text x="3cm" y="19cm">Vodka</text>
                <text x="5cm" y="19cm">White-Wine</text>
                <text x="8cm" y="19cm">Red-Wine</text>
                <text x="10.8cm" y="19cm">Cognac</text>
                <text x="13cm" y="19cm">Whisky</text>
                <text x="15cm" y="19cm">Beer</text>
                <text x="17cm" y="19cm">Absinth</text>
            </g>

            <g class="circe1">
                <circle cx="3.5cm" cy="10.9cm" r="6"/>
                <circle cx="6.5cm" cy="17.9cm" r="6"/>
                <circle cx="9cm" cy="12.9cm" r="6"/>
                <circle cx="11.6cm" cy="12.9cm" r="6"/>
                <circle cx="14cm" cy="11.9cm" r="6"/>
                <circle cx="15.5cm" cy="10.9cm" r="6"/>
                <circle cx="17.8cm" cy="17.9cm" r="6"/>
            </g>

            <g class="button" >
                <rect onclick="drowCircle(evt)" x="2cm" y="21cm" width="3cm" height="1.5cm" rx="10"/>
                <text x="2.8cm" y="21.9cm" fill="white">Vodka</text>
                <rect onclick="drowCircle(evt)" x="5.5cm" y="21cm" width="3cm" height="1.5cm" rx="10"/>
                <text x="5.8cm" y="21.9cm" fill="white">White-Win</text>
                <rect onclick="drowCircle(evt)" x="9cm" y="21cm" width="3cm" height="1.5cm" rx="10"/>
                <text x="9.5cm" y="21.9cm" fill="white">Red-Wine</text>
                <rect onclick="drowCircle(evt)" x="12.5cm" y="21cm" width="3cm" height="1.5cm" rx="10"/>
                <text x="13.2cm" y="21.9cm" fill="white">Cognac</text>
                <rect onclick="drowCircle(evt)" x="16cm" y="21cm" width="3cm" height="1.5cm" rx="10"/>
                <text x="16.8cm" y="21.9cm" fill="white">Whisky</text>
                <rect onclick="drowCircle(evt)" x="19.5cm" y="21cm" width="3cm" height="1.5cm" rx="10"/>
                <text x="20.5cm" y="21.9cm" fill="white">Beer</text>
                <rect onclick="drowCircle(evt)" x="23cm" y="21cm" width="3cm" height="1.5cm"  rx="10"/>
                <text x="23.7cm" y="21.9cm" fill="white">Absinth</text>
            </g>

            <g>
                <circle r="5cm" cx="14cm" cy="30cm" class="pie"/>
                <path
            </g>


        </svg>
    </xsl:template>
</xsl:stylesheet>