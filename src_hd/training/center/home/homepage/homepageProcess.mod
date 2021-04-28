[Ivy]
179176CBCC9287FD 7.5.0 #module
>Proto >Proto Collection #zClass
hs0 homepageProcess Big #zClass
hs0 RD #cInfo
hs0 #process
hs0 @TextInP .type .type #zField
hs0 @TextInP .processKind .processKind #zField
hs0 @TextInP .xml .xml #zField
hs0 @TextInP .responsibility .responsibility #zField
hs0 @UdInit f0 '' #zField
hs0 @UdProcessEnd f1 '' #zField
hs0 @PushWFArc f2 '' #zField
hs0 @UdEvent f3 '' #zField
hs0 @UdExitEnd f4 '' #zField
hs0 @PushWFArc f5 '' #zField
>Proto hs0 hs0 homepageProcess #zField
hs0 f0 guid 179176CBCCF87560 #txt
hs0 f0 method start() #txt
hs0 f0 inParameterDecl '<> param;' #txt
hs0 f0 outParameterDecl '<> result;' #txt
hs0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start()</name>
    </language>
</elementInfo>
' #txt
hs0 f0 83 51 26 26 -16 15 #rect
hs0 f0 @|UdInitIcon #fIcon
hs0 f1 211 51 26 26 0 12 #rect
hs0 f1 @|UdProcessEndIcon #fIcon
hs0 f2 109 64 211 64 #arcP
hs0 f3 guid 179176CBCDE9AA15 #txt
hs0 f3 actionTable 'out=in;
' #txt
hs0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>close</name>
    </language>
</elementInfo>
' #txt
hs0 f3 83 147 26 26 -15 15 #rect
hs0 f3 @|UdEventIcon #fIcon
hs0 f4 211 147 26 26 0 12 #rect
hs0 f4 @|UdExitEndIcon #fIcon
hs0 f5 109 160 211 160 #arcP
>Proto hs0 .type training.center.home.homepage.homepageData #txt
>Proto hs0 .processKind HTML_DIALOG #txt
>Proto hs0 -8 -8 16 16 16 26 #rect
>Proto hs0 '' #fIcon
hs0 f0 mainOut f2 tail #connect
hs0 f2 head f1 mainIn #connect
hs0 f3 mainOut f5 tail #connect
hs0 f5 head f4 mainIn #connect
