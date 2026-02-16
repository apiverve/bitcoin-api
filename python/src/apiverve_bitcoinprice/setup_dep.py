from setuptools import setup, find_packages

setup(
    name='apiverve_bitcoinprice',
    version='1.1.14',
    packages=find_packages(),
    include_package_data=True,
    install_requires=[
        'requests',
        'setuptools'
    ],
    description='Bitcoin Price is a simple tool for getting the current price of Bitcoin. It returns the current price, market cap, 24-hour trading volume, and 24-hour price change in any currency.',
    author='APIVerve',
    author_email='hello@apiverve.com',
    url='https://apiverve.com/marketplace/bitcoin?utm_source=pypi&utm_medium=homepage',
    classifiers=[
        'Programming Language :: Python :: 3',
        'Operating System :: OS Independent',
    ],
    python_requires='>=3.6',
)
