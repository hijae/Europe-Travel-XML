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
                <h1>
유럽 추천 여행지
                </h1>
                <nav id="topMenu">
                    <ul>
                        <li>
                            <a class="menuLink" href="#">그리스</a>
                        </li>
                        <li>
                            <a class="menuLink" href="#">영국</a>
                        </li>
                        <li>
                            <a class="menuLink" href="#">프랑스</a>
                        </li>
                        <li>
                            <a class="menuLink" href="#">독일</a>
                        </li>
                    </ul>
                </nav>
                <div id="mainimg">
                    <xsl:for-each select="web/Europe/travel[position()&lt;=4]">
                        <img>
                            <xsl:attribute name="src">
                                <xsl:value-of select="picture1/@file" />
                            </xsl:attribute>
                            <xsl:attribute name="width">
                                <xsl:value-of select="picture1/@w" />
                            </xsl:attribute>
                            <xsl:attribute name="height">
                                <xsl:value-of select="picture1/@h" />
                            </xsl:attribute>
                        </img>
                    image
                    </xsl:for-each>
                </div>
                <h2>
                    이달의 유럽 추천 여행지
                </h2>
                <table id="maintable">
                    <xsl:for-each select="web/Europe/travel[position()&lt;=4]">
                        <tr>
                            <td>
                                <img>
                                    <xsl:attribute name="src">
                                        <xsl:value-of select="picture1/@file" />
                                    </xsl:attribute>
                                    <xsl:attribute name="width">
                                        <xsl:value-of select="picture1/@w" />
                                    </xsl:attribute>
                                    <xsl:attribute name="height">
                                        <xsl:value-of select="picture1/@h" />
                                    </xsl:attribute>
                                </img>
                    image
                                <br/>
                                <xsl:value-of select="name" />
                                <br/>
                                <xsl:value-of select="city" />
                            </td>
                        </tr>
                    </xsl:for-each>
                </table>
                <h2>
                    Best 리뷰
                </h2>
                <xsl:for-each select="web/reviews/review[position()&lt;=2]">
                    <p>
                        <xsl:value-of select="name" />
                        <br/>
                        <xsl:value-of select="travel" />
                        <br/>
                        <xsl:value-of select="text" />
                    </p>
                </xsl:for-each>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>