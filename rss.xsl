<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html" version="1.0" encoding="iso-8859-1" indent="yes"/>

<xsl:template match="/">
  <html><head><title>RSS 2.0 Aggregator
  </title></head>
  <body>
  <h2>RSS 2.0 Aggregator Powered by XPathServlet</h2>
    <table border="0">
      <xsl:for-each select="documentcollection/document[rss/channel/item[title[contains(text(), 'war')] or title[contains(text(), 'peace')] or description[contains(text(), 'war')] or description[contains(text(), 'peace')]]]">
      <tr bgcolor="#9093f2">
        <td><xsl:element name="a"><xsl:attribute name="href"><xsl:value-of select="rss/channel/title"/></xsl:attribute><xsl:value-of select="rss/channel/title"/></xsl:element></td>
      </tr>
      <xsl:for-each select="rss/channel/item[title[contains(text(), 'war')] or title[contains(text(), 'peace')] or description[contains(text(), 'war')] or description[contains(text(), 'peace')]]">
      <tr bgcolor="#C85BCB">
        <td><xsl:value-of select="title"/></td>
      </tr>
      <tr>
        <td><xsl:value-of select="description"/></td>
      </tr>
      <xsl:if test="link">
      <tr>
      <td><xsl:element name="a"><xsl:attribute name="href"><xsl:value-of select="link"/></xsl:attribute><xsl:value-of select="link"/></xsl:element></td>
      </tr>
      </xsl:if>
      </xsl:for-each>
      </xsl:for-each>
    </table>
  </body>
  </html>
</xsl:template>
</xsl:stylesheet>
