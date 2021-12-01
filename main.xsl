<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" />
    <xsl:template match="/">
        <link rel="stylesheet" type="text/css" href="maintable.css"/>
        <html>
            <head>
                <title>
유럽 추천 여행지
                </title>
            </head>
            <body>
                <h1><a href="Euro_travel.xml"><img src="ui/main.jpg" width="50" height="50" />
유럽 추천 여행지
                </a></h1>
                <nav id="topMenu">
                    <ul>
                        <li>
                            <a class="menuLink" href="./그리스.xml">그리스</a>
                        </li>
                        <li>
                            <a class="menuLink" href="./영국.xml">영국</a>
                        </li>
                        <li>
                            <a class="menuLink" href="./프랑스.xml">프랑스</a>
                        </li>
                        <li>
                            <a class="menuLink" href="./독일.xml">독일</a>
                        </li>
                    </ul>
                </nav>
                <div style="white-space:nowrap; overflow:auto;  width:800px; height:510px; margin: 0 auto;">
                    <xsl:for-each select="web/Europe/travel[position()&lt;=4]">
                    <a>
                        <xsl:attribute name="href"><xsl:value-of select="concat('./',name,'.xml')" /></xsl:attribute>
                        <img id="scrimg">
                            <xsl:attribute name="src">
                                        <xsl:value-of select="concat('./image/',picture1/@file)" />
                                    </xsl:attribute>
                                    <xsl:attribute name="width">
                                        <xsl:value-of select="concat('./image/',picture1/@w)" />
                                    </xsl:attribute>
                                    <xsl:attribute name="height">
                                        <xsl:value-of select="concat('./image/',picture1/@h)" />
                                    </xsl:attribute>
                        </img>
                    </a>
                    </xsl:for-each>
                </div>
                <h2>
                    이달의 유럽 추천 여행지
                </h2>
                <div style="white-space:nowrap; overflow:auto;  width:1000px; height:400px; margin: 0 auto;">
                <table id="maintable">
                        <tr>
                            <xsl:for-each select="web/Europe/travel[position()&lt;=4]">
                            <td>
                                <a>
                                    <xsl:attribute name="href"><xsl:value-of select="concat('./',name,'.xml')" /></xsl:attribute>
                                <img id="mainimg">
                                    <xsl:attribute name="src">
                                        <xsl:value-of select="concat('./image/',picture1/@file)" />
                                    </xsl:attribute>
                                    <xsl:attribute name="width">
                                        <xsl:value-of select="concat('./image/',picture1/@w)" />
                                    </xsl:attribute>
                                    <xsl:attribute name="height">
                                        <xsl:value-of select="concat('./image/',picture1/@h)" />
                                    </xsl:attribute>
                                </img>
                                <br/>
                                <h4><xsl:value-of select="name" /></h4>
                                <xsl:value-of select="city" />
                            </a>
                            </td>
                        </xsl:for-each>
                        </tr>
                    
                </table>
                </div>
                <hr/>
                <h2>
                    Best 리뷰
                </h2>
                <table>
                    <tr>
                <xsl:for-each select="web/reviews/review[position()&lt;=3]">
                <td valign="top" style="width:330px; margin: 0 auto;">
                        <h3><xsl:value-of select="travel" /></h3>
                        <h4><xsl:value-of select="name" /></h4>
                        <p>
                        <xsl:value-of select="text" />
                    </p>
                    </td>
                </xsl:for-each>
                </tr>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>