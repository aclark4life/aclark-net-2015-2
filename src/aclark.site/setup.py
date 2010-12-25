from setuptools import setup, find_packages

setup(
    name='aclark.site',
    packages=find_packages(),
    namespace_packages=[
        'aclark'
        ],
    install_requires=[
        'setuptools'
        ],
    entry_points="""
    [z3c.autoinclude.plugin]
    target = plone
    """
    )
