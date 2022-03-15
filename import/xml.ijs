NB. xml

NB. =========================================================
makenew=: 3 : 0
'JUSR is empty' assert #JUSR
makexml JSRC;<{."1 dirtree JSRC
)

NB. =========================================================
makexml=: 3 : 0
'path files'=. y
if. 0=#files do.
  txt=. xml=. ''
else.
  txt=. tolist (1+#path) }. each files
  xml=. wrapmw ; path&makexml1 each files
end.
txt fwrites JTXT
xml fwrites JXML
)

NB. =========================================================
makexml1=: 4 : 0
txt=. fixhtml freads y
nam=. rmDirX (1+#x) }. y
time=. fmttime 1 tsrep 28800000 + tsrep <. 6!:0''
r=. '<page>',LF,'<title>',nam,'</title>',LF
r=. r,'<revision>',LF
r=. r,'<timestamp>',time,'</timestamp>',LF
r=. r,'<contributor><username>',JUSR,'</username></contributor>',LF
r=. r,'<text xml:space="preserve" bytes="',(":#txt),'">',txt,'</text>'
r=. r,LF,'</revision>',LF,'</page>',LF
)

NB. =========================================================
wrapmw=: 3 : 0
'<mediawiki xml:lang="en">',LF,y,'</mediawiki>'
)

NB. =========================================================
upwikixml=: 3 : 0
f=. jpath '~temp/upwikixml.sh'
r=. '#!/bin/bash',LF
r=. r,'scp ',JXML,' web@',JSVR,':/home/web/wikiupload',LF
r=. r,'scp ',JTXT,' web@',JSVR,':/home/web/wikiupload',LF
r fwrites f
fmakex f
hostcmd_j_ f
ferase f
)
