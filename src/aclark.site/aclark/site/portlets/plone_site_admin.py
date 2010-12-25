
from Products.Five.browser.pagetemplatefile import ViewPageTemplateFile
from plone.app.portlets.portlets import base
from plone.portlets.interfaces import IPortletDataProvider
from zope import schema
from zope.formlib import form
from zope.interface import Interface
from zope.interface import implements


class IPloneSiteAdmin(IPortletDataProvider):
    """Plone Site Admin portlet interface"""

class Assignment(base.Assignment):
    """Plone Site Admin portlet assignment"""

    implements(IPloneSiteAdmin)

    def __init__(self):
        pass

    @property
    def title(self):
        return u"Plone Site Admin portlet"

class Renderer(base.Renderer):
    """Plone Site Admin portlet add form"""
    render = ViewPageTemplateFile('plone_site_admin.pt')

class AddForm(base.AddForm):
    form_fields = form.Fields(IPloneSiteAdmin)

    def create(self, data):
        return Assignment(**data)
