cvx
===

Generate static web-based CV from XML.

## Requirements

You need to use an XSLT 2.0 processor to translate your XML database to HTML files.  I have used [SAXON](http://saxon.sourceforge.net/).

## Organization

The [example/](example/) directory contains a stripped down example:

* File [bec.xml](example/bec.xml) is an example database.
* File [bec.html.xsl](example/bec.html.xsl) is the top-level stylesheet that defines the set of top-level pages.  This file uses the cvx*.xsl stylesheets in the root directory.

The [Makefile](example/Makefile) will need to be modified to point to your XSLT processor.

## Motivation

For maintaining a research website, I had gotten tired of manually modifying a bunch of HTML/CSS files that would easily get inconsistent.

My requirements for the website were as follows:

1. A single data source to minimize inconsistencies.
2. Flexible output into any number of formats.
3. Static output that can be posted on any web server.

A dynamic, content management system did not really fit the bill, so I went with a handcrafted, barebones system using XSLT.

It's minimalistic, but I have posted it here as starting point for others who might want to do the same.

## Notes

The cvx*.xsl stylesheets have been created incrementally as needed, and I have not made much effort to make it general.  To get the desired layout, you will probably need to modify them.

## Acknowledgments

This process is in part inspired by a similar set of [scripts](http://adam.chlipala.net/cv/) by Adam Chlipala.
