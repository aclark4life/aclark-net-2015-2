
from Products.Five.browser.pagetemplatefile import ViewPageTemplateFile
from plone.app.portlets.portlets import base
from plone.portlets.interfaces import IPortletDataProvider
from zope import schema
from zope.formlib import form
from zope.interface import Interface
from zope.interface import implements


class IPloneSiteAdminPortlet(IPortletDataProvider):

    portlet_title = schema.TextLine(title=u"Title", required=True)
    portlet_body = schema.Text(title=u"Body", required=False)
    portlet_link = schema.TextLine(title=u"Link", required=False)
    portlet_footer = schema.TextLine(title=u"Footer", required=False)

class Assignment(base.Assignment):
    implements(IPloneSiteAdminPortlet)

    def __init__(self):
        pass

    @property
    def title(self):
        return u"Plone Site Admin"

class Renderer(base.Renderer):
    render = ViewPageTemplateFile('plone_site_admin.pt')

class AddForm(base.AddForm):
    form_fields = form.Fields(IPloneSiteAdminPortlet)

    def create(self, data):
        return Assignment(**data)

class EditForm(base.EditForm):
    form_fields = form.Fields(IPloneSiteAdminPortlet)
