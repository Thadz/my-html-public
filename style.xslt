<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html><head><title>XPathsServlet Display</title></head>
  <body>
  <h2>Formatted Display</h2>
    <table border="2">
      <tr bgcolor="#9093f2">
        <th>Last Crawled Time</th>
        <th>XML Url</th>
      </tr>
      <xsl:for-each select="documentcollection">
      <tr>
        <td><xsl:value-of select="document/@crawled"/></td>
        <td><xsl:value-of select="document/@location"/></td>
      </tr>
      </xsl:for-each>
    </table>
  </body>
  </html>
</xsl:template>
</xsl:stylesheet>