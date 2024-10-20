NB. init

hostname=. }:hostcmd_j_ 'hostname'

NB. update authors (=wiki names) and desktop hostnames as appropriate
authors=. 'Chris Burke';'Raul Miller'
hostnames=. 'minty';'XXX'
JUSR=: (hostnames i. <hostname) pick authors

NB. =========================================================
NB. other globals:

NB. source directory on local machine, for new source
JSRC=: jpath '~Jwiki/source'

NB. target directory on local machine (any content is first deleted):
JTGT=: jpath '~Jwiki/target'

NB. wiki server
JSVR=: 'code4.jsoftware.com'

NB. target xml and page list files:
JXML=: JTGT, '/wiki.xml'
JTXT=: JTGT, '/pages.txt'

NB. =========================================================
mkdir_j_ JTGT
direrase_jp_ JTGT,'/*'
