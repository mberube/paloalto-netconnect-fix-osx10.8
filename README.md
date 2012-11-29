Disclaimer: Palo Alto Networks does not endorse this fix and it deletes system files that might damage your system. Use at your own risk.

Having said that... OSX 10.8 (Snow Leopard) is not supported by NetConnect (at least for version 1.3.3-3). The first time you install everything is fine, then you can't subsequently connect... 

That is, unless you delete all files related to NetConnect and PanService. This is what this script does - it uninstalls NetConnect then deletes all related files. This might or might not work on your machine - I've only tested it on mine. 
