<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="xml" indent="yes" encoding="utf-8"/>
  <xsl:strip-space elements="*"/>

  <xsl:param name="pNewType" select="'UNKNOWN'"/>

  <xsl:template match="@* | node()">
    <xsl:copy>
      <xsl:apply-templates select="@* | node()"/>
    </xsl:copy>
  </xsl:template>

  <xsl:template match="@target_type [../@target_type='']">
    <xsl:attribute name="target_type">
      <xsl:value-of select="$pNewType"/>
    </xsl:attribute>
  </xsl:template>

</xsl:stylesheet>