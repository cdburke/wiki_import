
See init.ijs for global names. Update as appropriate.

Put new files in ~Jwiki/source. If a wiki page name is also the name of a subdirectory, then use the usual name for the subdirectory,
and add a _DirX suffix to the wiki page name, e.g. Guides_DirX . The suffix is dropped when building the xml.

When ready, run ~Jwiki/import/run.ijs. If the xml looks OK, then run

  upwikixml''

Login to web on the test wiki server, i.e. ssh web@code4.jsoftware.com.

Check the contents of the wikiupload directory, then run:

  bin/wikiupload.sh

It will take a minute or so. Once run, the new pages should now appear in the test wiki.
