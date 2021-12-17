<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/starwars">
<html>
<body>
<h1 align="center">Movies</h1>
<br/>
<table border="1" align="center" >
<tr align="left">
	<th>Title</th>
	<th>Episode</th>
	<th>Year</th>
</tr>
	<xsl:for-each select="movie">
        <xsl:choose>
            <xsl:when test="position() mod 3 = 0">
            <tr bgcolor="yellow">
                <td><xsl:value-of select="title"/></td>
                <td><xsl:value-of select="episode"/></td>
                <td><xsl:value-of select="year"/></td>
            </tr>
            </xsl:when>
            <xsl:otherwise>
            <tr bgcolor="white">
                <td><xsl:value-of select="title"/></td>
                <td><xsl:value-of select="episode"/></td>
                <td><xsl:value-of select="year"/></td>
            </tr>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:for-each>
</table>
</body>
</html>
</xsl:template>
</xsl:stylesheet>

