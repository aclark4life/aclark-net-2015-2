.. Note:: This repo is now maintained here: http://aclark.net/ACLARKNET/aclark_net_website

Introduction
============

The ACLARK.NET, LLC website.

.. image:: https://github.com/aclark4life/aclark_net_website/raw/master/screenshot.png

Buildout
--------

This is a Plone buildout. To run it you need Python 2.6.x and git::

    $ git clone https://github.com/aclark4life/aclark_net_website
    $ cd aclark_net_website
    $ python2.6 bootstrap.py -d
    $ bin/buildout
    $ bin/plone fg

This will get you a working Plone site on http://localhost:8080 at
which point you may install collective.xdv and configure it with the
plone.xml rules file in theme/rules/.

XDV theme
---------

The XDV theme for this website is contained within the theme/ directory,
which includes:

    theme/templates - XHTML theme templates for Plone, Trac, and Wordpress.
    theme/rules - XML rules to apply theme templates to Plone content.

Static resources
----------------

    Static resources for the theme are included in the static/
    directory.

    In the case of Plone, they are made available in Plone via the
    ZCML browser:resourceDirectory directive.

    In they case of Wordpress & Trac, they are made available by the
    webserver, outside of Plone.


Custom templates
----------------

    Custom Plone templates live in the templates/ directory.

Apache
------

There is also a sample Apache configuration file included in this directory
that contains virtual hosts for aclark.net; you can refer to it as needed:
apache.conf.
