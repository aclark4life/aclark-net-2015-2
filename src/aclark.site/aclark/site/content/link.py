from Products.Archetypes.public import ImageField
from archetypes.schemaextender.field import ExtensionField

class MyImageField(ExtensionField, ImageField):
    """An image field."""

from zope.component import adapts
from zope.interface import implements
from archetypes.schemaextender.interfaces import ISchemaExtender
from Products.Archetypes.public import ImageWidget
from Products.ATContentTypes.interface import IATLink

class LinkExtender(object):
    adapts(IATLink)
    implements(ISchemaExtender)

    fields = [
        MyImageField("logo",
        widget = ImageWidget(
            label="Logo")),
            ]

    def __init__(self, context):
        self.context = context

    def getFields(self):
        return self.fields
