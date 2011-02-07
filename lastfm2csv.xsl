<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:output method="xml" encoding="UTF-8" indent="yes"/>

  <xsl:variable name="source">weblog-<xsl:value-of select="//blog_id"/></xsl:variable>

  <xsl:template match="track"><xsl:value-of select="artist"/> - <xsl:value-of select="name"/>
  </xsl:template>
</xsl:stylesheet>