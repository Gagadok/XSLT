<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="xml" indent="yes" encoding="utf-8"/>
  <xsl:strip-space elements="*"/>

  <xsl:key name="srcParam" match="//Param" use="@Name"/>

  <xsl:template match="@* | node()">
    <xsl:copy>
      <xsl:apply-templates select="@* | node()"/>
    </xsl:copy>
  </xsl:template>

  <xsl:template match="//Param/@Name">
    <xsl:choose>
      <xsl:when test="count(key('srcParam', ../@Name)) &gt; 1">
        <xsl:attribute name="Name">
          <xsl:value-of select="concat(../@Name, ../@pos)"/>
        </xsl:attribute>
      </xsl:when>
      <xsl:otherwise>
        <xsl:attribute name="Name">
          <xsl:value-of select="../@Name"/>
        </xsl:attribute>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>

</xsl:stylesheet>