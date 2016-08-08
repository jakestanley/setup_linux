:: install python 2.7 from the website
python -m pip install -U pip setuptools
python -m pip install --upgrade pip --quiet
choco install pywin32 --x86 -y -r
python -m pip install lxml Pillow psutil pyodbc reportlab wheel xlrd pyserial python-ldap M2CryptoWin32 pycrypto --quiet
:: jsonpath and py2exe packages don't work. they require manual install
choco install python-wxwidgets --x86 -y -r
choco install pycharm-community --x86 -y -r
refreshenv