<?xml version="1.0" encoding="UTF-8"?>

<!DOCTYPE stylesheet [
<!ENTITY space
"<xsl:text> </xsl:text>">
<!ENTITY laquo 
"<xsl:text disable-output-escaping='yes'>&amp;laquo;</xsl:text>">
<!ENTITY lsaquo 
"<xsl:text disable-output-escaping='yes'>&amp;lsaquo;</xsl:text>">
]>

<xsl:stylesheet version="2.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="../cvx.html.xsl" />

<xsl:output method="text" />
<xsl:output method="html"
doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd"
doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN"
indent="yes"
name="html" />

<!-- Global page declarations -->

<xsl:variable name="site">
  <title>Bor-Yuh Evan Chang</title>
  <head>
   <link href="bec.css" rel="stylesheet" type="text/css" />
  </head>
  <content-top>
    <div class="hgrad hgl1"></div>
    <div class="hgrad hgl2"></div>
    <div class="hgrad hgl3"></div>
    <div class="hgrad hgl4"></div>
    <div class="hgrad hgl5"></div>
    <div class="hgrad hgr1"></div>
    <div class="hgrad hgr2"></div>
    <div class="hgrad hgr3"></div>
    <div class="hgrad hgr4"></div>
    <div class="hgrad hgr5"></div>
  </content-top>
</xsl:variable>

<xsl:template name="site-header">
  <ul class="links">
    <xsl:apply-templates select="$pages/page" mode="nav">
      <xsl:with-param name="here">
	<xsl:value-of select="name" />
      </xsl:with-param>
    </xsl:apply-templates>
  </ul>
</xsl:template>
<xsl:template name="site-header-tail">
  <div class="clearer"></div>
</xsl:template>

<xsl:variable name="basehref">http://www.cs.colorado.edu/~bec/</xsl:variable>
<xsl:variable name="trackPageviewRoot">~bec/</xsl:variable>

<xsl:variable name="pages">
  <page>
    <name>welcome</name>
    <href>index.html</href>
    <url>.</url>
    <header>
      <div class="zh-name">
	<div>張</div>
	<div>博</div>
	<div>聿</div>
      </div>
      <span class="title rspace">Bor-Yuh Evan Chang</span>
      <span class="contact">
	bec<span class="contactsym"> (at) </span>cs<span class="contactsym">/</span>colorado<span class="contactsym">/</span>edu
      </span>
      <div class="subtitle">assistant professor</div>
    </header>
    <lsidebar>
      <img src="img/bec.jpg" />
      <h3>News</h3>
      <xsl:apply-templates select="cv/news-list/news" mode="p-list" />
    </lsidebar>
    <rsidebar>
      <div><a href="http://pl.cs.colorado.edu/">cuplv</a></div>
      <div><a href="cv/chang-cv.pdf">cv</a></div>
      <br/>
      <div><a href="http://www.cs.colorado.edu/~bec/courses/csci7135-s13/">csci7135</a></div>
    </rsidebar>
    <content>

 <div class="rcontentbox">
   <table>
    <tr><th>office</th><td><a href="http://www.cs.colorado.edu/department/maps/ecot6.html">ECOT 621</a></td></tr>
    <tr><th>mail</th><td>430 UCB, Boulder, CO 80309-0430 USA</td></tr>
    <tr><th>phone</th><td>+1 303 492 8894</td></tr>
    <tr><th>fax</th><td>+1 303 492 2844</td></tr>
   </table>
 </div>

 <div class="rcontentbox">
   <p>
     <a href="http://pl.cs.colorado.edu/news.html#phd-call-2012">Ph.D. Positions</a>.
     I am always looking for enthusiastic students interested in working
     with me on research projects in programming languages and software
     systems.  If you are interested in finding out more, please contact
     me.
   </p>
   <p>
     For recent news about the Programming Languages group at the
     University of Colorado Boulder, take a look at our most
     recent <a href="talks/openhouse11.swf">recruiting talk</a>.
   </p>
 </div>

  <p>
  I am an assistant professor in the
  <a href="http://www.cs.colorado.edu/">Department of Computer Science</a>
  and the <a href="http://pl.cs.colorado.edu/">Programming Languages
  and Verification Group</a>
  at the
  <a href="http://www.colorado.edu/">University of Colorado Boulder</a>.
  </p>

      <h2>Students</h2>
      <xsl:apply-templates select="cv/students" />

      <h2>Teaching</h2>
      <xsl:apply-templates select="cv/courses" />

      <h2>Selected Projects</h2>
      <xsl:apply-templates select="cv/projects" />

      <h2>Recent Papers</h2>
      <xsl:call-template name="recent">
	<xsl:with-param name="items" select="cv/publications/pub[position()&lt;6]" />
	<xsl:with-param name="href">papers.html</xsl:with-param>
      </xsl:call-template>

      <h2>Recent Talks</h2>
      <xsl:call-template name="recent">
	<xsl:with-param name="items" select="cv/talks/talk[position()&lt;6]" />
	<xsl:with-param name="href">talks.html</xsl:with-param>
      </xsl:call-template>

      <h2>Professional Activities</h2>
      <xsl:apply-templates select="cv/activities" />
    </content>
  </page>
  <page>
    <name>papers</name>
    <title>Papers</title>
    <url>papers.html</url>
    <content>
      <xsl:apply-templates select="cv/publications/pub" />
    </content>
  </page> 
  <page>
    <name>talks</name>
    <title>Talks</title>
    <url>talks.html</url>
    <content>
      <xsl:apply-templates select="cv/talks/talk" />
    </content>
  </page> 
</xsl:variable>

</xsl:stylesheet>
