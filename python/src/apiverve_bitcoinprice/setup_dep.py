from setuptools import setup, find_packages

setup(
    name='apiverve_bitcoinprice',
    version='1.2.4',
    packages=find_packages(),
    include_package_data=True,
    install_requires=[
        'requests',
        'setuptools'
    ],
    description='Bitcoin Price fetches the current Bitcoin price, recent movement direction, and update timestamps in USD. Paid plans can quote across 172 currencies and add market cap, 24-hour volume, supply, all-time highs, 1-hour to 1-year changes, 30-day stats, and hourly and 30-day daily history.',
    author='APIVerve',
    author_email='hello@apiverve.com',
    url='https://apiverve.com/marketplace/bitcoin?utm_source=pypi&utm_medium=referral&utm_content=homepage',
    classifiers=[
        'Programming Language :: Python :: 3',
        'Operating System :: OS Independent',
    ],
    python_requires='>=3.6',
)
