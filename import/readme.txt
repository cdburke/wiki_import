
See init.ijs for global names

Put new files in ~Jwiki/source with a top level directory of Help.

If a wiki page name is also the name of a subdirectory, then use the usual name for the subdirectory,
and add a _DirX suffix to the wiki page name, e.g. Guides_DirX . The suffix is dropped when building the xml.

When ready, run ~Jwiki/import/run.ijs. If the xml looks OK, then run

  upwikixml''

Login to web on the server, i.e. ssh web@34.230.205.230 . This address is for code2.jsoftware.com, the test wiki.

Check the contents of the wikiupload directory, then run:

  bin/wikiupload.sh

The new pages should now appear in the code2.jsoftware.com wiki.
