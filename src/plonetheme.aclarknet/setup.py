from setuptools import setup, find_packages

setup(
    name='plonetheme.aclarknet',
    version='0.1.0',
    packages=find_packages(),
    namespace_packages=[
        'plonetheme',
    ],
    install_package_data=True,
    install_requires=[
        'setuptools',
        'plone.app.theming',
        'z3c.jbot',
    ],
    entry_points={
        'z3c.autoinclude.plugin': 'target = plone',
    },
)
