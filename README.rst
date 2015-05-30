Introduction
============

The ACLARK.NET, LLC website.

.. image:: https://github.com/ACLARKNET/aclark_net_website/raw/master/screenshot.png

Diazo theme
-----------

This repository contains two Diazo themes: one for Plone and one for Wordpress. The Plone theme is installed via `plone.app.theming`_ and the Wordpress theme is compiled with `Diazo`_ and served by Apache via `mod_transform`_.

Plone
~~~~~

The Diazo theme for Plone is contained within the `src/plonetheme.aclarknet/`_ package.

Wordpress
~~~~~~~~~

The Diazo theme for Wordpress is contained within the top level `theme/`_ directory.

Buildout
--------

The buildout in this repository follows a popular convention of having no default configuration file, forcing the end user to select a configuration by copying and editing a template configuration file. See the installation instructions below for more information.

Installation
============

Develop
-------

To develop the ACLARK.NET, LLC website, copy `buildout.cfg.in` to `buildout.cfg` then select the development configuration file by uncommenting the appropriate parameter value, e.g.::

    [buildout]
    extends =
        conf/develop.cfg
    #    conf/production.cfg
    #    conf/staging.cfg


Now do this::

    $ python2.6 bootstrap.py -d
    $ bin/buildout
    $ bin/plone fg

Then open ``http://localhost:8080`` in your browser.

Deploy
------

To deploy the ACLARK.NET, LLC website, follow the development steps above but select the production configuration file instead. Then::

    $ python2.6 bootstrap.py -d
    $ bin/buildout
    $ bin/plone start

.. _`src/plonetheme.aclarknet/`: https://github.com/ACLARKNET/aclark_net_website/tree/master/theme
.. _`theme/`: https://github.com/ACLARKNET/aclark_net_website/tree/master/theme
.. _`plone.app.theming`: http://pypi.python.org/pypi/plone.app.theming
.. _`Diazo`: http://pypi.python.org/pypi/Diazo
.. _`mod_transform`: http://code.google.com/p/html-xslt
