<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:css="http://namespaces.plone.org/xdv+css" xmlns:dv="http://namespaces.plone.org/xdv" xmlns:dyn="http://exslt.org/dynamic" xmlns:esi="http://www.edge-delivery.org/esi/1.0" xmlns:exsl="http://exslt.org/common" xmlns:str="http://exslt.org/strings" xmlns:xhtml="http://www.w3.org/1999/xhtml" version="1.0" exclude-result-prefixes="exsl str css dv dyn xhtml esi">

    <xsl:output method="xml" indent="no" omit-xml-declaration="yes" media-type="text/html" encoding="UTF-8" doctype-public="-//W3C//DTD XHTML 1.0 Transitional//EN" doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"/>

    <xsl:template match="node()|@*">
        <xsl:copy>
            <xsl:apply-templates select="node()|@*"/>
        </xsl:copy>
    </xsl:template>

    <xsl:template match="pre/text()">
        <!-- Filter out quoted &#13; -->
        <xsl:value-of select="str:replace(., '&#13;&#10;', '&#10;')"/>
    </xsl:template>

    <xsl:template match="style/text()|script/text()">
        <xsl:value-of select="." disable-output-escaping="yes"/>
    </xsl:template>


    <xsl:template match="/"><xsl:apply-templates select="." mode="id35821695"/></xsl:template>

    <!--THEME id35821695: (inline)-->

    <xsl:template match="//*[@id=&quot;searchsubmit&quot;]" mode="id35821695"><!--Do nothing, skip these nodes--></xsl:template>

    <xsl:template match="/" mode="id35821695"><html><head><meta name="keywords" content=""/><meta name="description" content=""/><meta http-equiv="content-type" content="text/html; charset=utf-8"/><xsl:apply-templates mode="id35821695" select="/html/head/title"/><link href="/static/css/blog.css" rel="stylesheet" type="text/css" media="screen"/><script src="/static/js/jquery-1.4.4.js" type="text/javascript"/><link rel="icon" type="image/png" href="/static/images/favicon.ico"/></head><body>&#13;
<div id="wrapper">&#13;
	<div id="header">&#13;
		<div id="logo">&#13;
            <a href="http://staging.aclark.net"><span style="font-size: 460%">α</span><span style="font-size: 350%"> ACLARK.NET, LLC </span> <br/>We are Python software professionals</a>&#13;
		</div>&#13;
		<div id="search"><xsl:apply-templates mode="id35821695" select="//*[@id=&quot;searchform&quot;]"/></div>&#13;
	</div>&#13;
	<xsl:comment> end #header </xsl:comment>&#13;
	<div id="menu"><xsl:apply-templates mode="id35821695" select="//*[@id=&quot;menu-portal-tabs&quot;]"/></div>&#13;
	<xsl:comment> end #menu </xsl:comment>&#13;
	<div id="page">&#13;
		<div id="page-bgtop">&#13;
			<div id="page-bgbtm">&#13;
				<div id="content"><xsl:apply-templates mode="id35821695" select="//*[@id=&quot;content&quot;]"/></div>&#13;
				<xsl:comment> end #content </xsl:comment>&#13;
				<div id="sidebar">&#13;
                    <ul><li> &#13;
                            <script type="text/javascript"><xsl:variable name="tag_text">&lt;!--&#13;
                            google_ad_client = "ca-pub-6474562348280983";&#13;
                            /* Blog3 */&#13;
                            google_ad_slot = "0086793111";&#13;
                            google_ad_width = 160;&#13;
                            google_ad_height = 600;&#13;
                            //--&gt;&#13;
                            </xsl:variable><xsl:value-of select="$tag_text" disable-output-escaping="yes"/></script><script type="text/javascript" src="http://pagead2.googlesyndication.com/pagead/show_ads.js"><xsl:variable name="tag_text">&#13;
                            </xsl:variable><xsl:value-of select="$tag_text" disable-output-escaping="yes"/></script></li>&#13;
                        <li id="archives"><xsl:apply-templates mode="id35821695" select="//*[@id=&quot;archives&quot;]"/></li>&#13;
                        <li id="meta"><xsl:apply-templates mode="id35821695" select="//*[@id=&quot;meta&quot;]"/></li>&#13;
                    </ul></div>&#13;
&#13;
&#13;
				<xsl:comment> end #sidebar </xsl:comment>&#13;
				<div style="clear: both;"> </div>&#13;
			</div>&#13;
		</div>&#13;
	</div>&#13;
	<xsl:comment> end #page </xsl:comment>&#13;
    <div id="footer">&#13;
        <p>Copyright (c) 2010 Sitename.com. All rights reserved. Design by <a href="http://www.freecsstemplates.org/"> CSS Templates</a>.</p>&#13;
    </div>&#13;
<xsl:comment> end #footer </xsl:comment>&#13;
</div>&#13;
</body></html></xsl:template>

    <xsl:template mode="id35821695" match="node()|@*">
        <xsl:copy>
            <xsl:apply-templates mode="id35821695" select="node()|@*"/>
        </xsl:copy>
    </xsl:template>

    <xsl:template mode="id35821695" match="pre/text()">
        <!-- Filter out quoted &#13; -->
        <xsl:value-of select="str:replace(., '&#13;&#10;', '&#10;')"/>
    </xsl:template>

    <xsl:template mode="id35821695" match="style/text()|script/text()">
        <xsl:value-of select="." disable-output-escaping="yes"/>
    </xsl:template>
</xsl:stylesheet>