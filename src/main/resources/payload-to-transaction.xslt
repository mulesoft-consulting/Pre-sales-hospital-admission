<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:soapenv="http://schemas.xmlsoap.org/soap/envelope/" 
xmlns:mes="http://www.mule-health.com/SOA/message/1.0" xmlns:mod="http://www.mule-health.com/SOA/model/1.0" version="2.0" exclude-result-prefixes="xs">
	<xsl:output indent="yes" />
	<xsl:param name="transactionType"/>
	<xsl:template match="/">
		<mes:auditTransaction>
			<mod:Transaction>
				<dateTime>
					<xsl:value-of select="current-dateTime()"/>
				</dateTime>
				<type>
					<xsl:value-of select="$transactionType" />
				</type>
				<xsl:copy-of select="*" />
			</mod:Transaction>
		</mes:auditTransaction>
	</xsl:template>
</xsl:stylesheet>