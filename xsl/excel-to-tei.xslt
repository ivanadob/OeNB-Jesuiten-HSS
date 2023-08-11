<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xs="http://www.w3.org/2001/XMLSchema" exclude-result-prefixes="xs">   

    <xsl:template match="/">
        <teiCorpus xmlns="http://www.tei-c.org/ns/1.0" xmlns:xi="http://www.w3.org/2001/XInclude"
            xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" version="5.0"
            xsi:schemaLocation="http://www.tei-c.org/ns/1.0 https://diglib.hab.de/rules/schema/mss/v1.0/cataloguing.xsd">            
            <teiHeader>
                <fileDesc>
                    <titleStmt>
                        <title>Litterae Annuae SJ</title>
                        <respStmt>
                            <resp>Beschreibung und TEI-encoding</resp>
                            <persName>
                                <forename>Ivana</forename>
                                <surname>Dobcheva</surname>
                            </persName>
                        </respStmt>
                    </titleStmt>
                    <publicationStmt>
                        <publisher/>
                        <availability status="restricted">
                            <licence target="https://creativecommons.org/licenses/by/4.0/">This document
                                is published under the Creative Commons licence Attribution 4.0
                                International (CC BY 4.0).</licence>
                        </availability>
                    </publicationStmt>            
                    <sourceDesc>
                        <p>Born digital.</p>
                    </sourceDesc>
                </fileDesc>
            </teiHeader>
        <xsl:for-each select="//record">
            <TEI xmlns="http://www.tei-c.org/ns/1.0" xmlns:xi="http://www.w3.org/2001/XInclude" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" version="5.0" xsi:schemaLocation="http://www.tei-c.org/ns/1.0 https://diglib.hab.de/rules/schema/mss/v1.0/cataloguing.xsd">
                <xsl:attribute name="xml:id">
                    <xsl:text>OeNB_cod_</xsl:text><xsl:value-of select="substring-after(Signatur, ' ')"/><xsl:text>_tei-msDesc</xsl:text>
                </xsl:attribute>
                <teiHeader>
                    <fileDesc>
                        <titleStmt>
                            <title>Beschreibung von <xsl:value-of select="Signatur"/></title>
                            <respStmt>
                                <resp>Beschreibung und TEI-encoding</resp>
                                <persName>
                                    <forename>Ivana</forename>
                                    <surname>Dobcheva</surname>
                                </persName>
                            </respStmt>                
                        </titleStmt>
                        <publicationStmt>
                            <publisher></publisher>
                            <availability status="restricted">
                                <licence target="https://creativecommons.org/licenses/by/4.0/">This document is published under the Creative Commons licence Attribution 4.0 International (CC BY 4.0).</licence>
                            </availability>
                        </publicationStmt>
                        <sourceDesc>
                            <msDesc xml:lang="de"><xsl:attribute name="xml:id">
                                <xsl:text>cod_</xsl:text><xsl:value-of select="substring-after(Signatur, ' ')"/>
                            </xsl:attribute>
                                <msIdentifier>
                                    <country>Österreich</country>
                                    <settlement>Wien</settlement>
                                    <repository>Österreichische Nationalbibliothek</repository> 
                                    <idno><xsl:value-of select="Signatur"/></idno>                                               
                                </msIdentifier>
                                <head>
                                    <title><xsl:value-of select="Titel"/></title>
                                    <origDate notBefore="0001" notAfter="0010"></origDate>
                                    <origPlace></origPlace>
                                    <note type="facs"><ref target=""></ref></note>
                                    <note type="catalogue"><ref target=""></ref></note>
                                </head> 
                                <msContents>
                                    <textLang mainLang="lat"/>
                                    <msItem>
                                        <locus from="x" to="x"></locus>
                                        <note type="title"></note>                                
                                    </msItem>
                                </msContents>
                                <physDesc>
                                    <objectDesc form="codex">
                                        <supportDesc material="paper">
                                            <extent>
                                                <measure type="leavesCount" quantity="" unit="folio"></measure>
                                                <dimensions type="leaf_current" unit="mm">
                                                    <height></height>
                                                    <width></width>
                                                </dimensions>
                                            </extent>
                                            <collation></collation>
                                        </supportDesc>
                                        <accMat></accMat>
                                    </objectDesc>
                                </physDesc>
                            </msDesc>
                        </sourceDesc>
                    </fileDesc>    
                </teiHeader>
                <text>
                    <body>            
                        <p/>
                    </body>
                </text>
</TEI>
          </xsl:for-each>
          </teiCorpus>
    </xsl:template>

</xsl:stylesheet>