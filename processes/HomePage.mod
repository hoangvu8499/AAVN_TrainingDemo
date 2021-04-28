[Ivy]
1791764C0EB62FCB 7.5.0 #module
>Proto >Proto Collection #zClass
He0 HomePage Big #zClass
He0 B #cInfo
He0 #process
He0 @TextInP .type .type #zField
He0 @TextInP .processKind .processKind #zField
He0 @TextInP .xml .xml #zField
He0 @TextInP .responsibility .responsibility #zField
He0 @StartRequest f0 '' #zField
He0 @EndTask f1 '' #zField
He0 @UserDialog f3 '' #zField
He0 @PushWFArc f4 '' #zField
He0 @PushWFArc f2 '' #zField
>Proto He0 He0 HomePage #zField
He0 f0 outLink start.ivp #txt
He0 f0 inParamDecl '<> param;' #txt
He0 f0 requestEnabled true #txt
He0 f0 triggerEnabled false #txt
He0 f0 callSignature start() #txt
He0 f0 caseData businessCase.attach=true #txt
He0 f0 wfuser 1 #txt
He0 f0 showInStartList 1 #txt
He0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start.ivp</name>
    </language>
</elementInfo>
' #txt
He0 f0 @C|.responsibility Student #txt
He0 f0 81 49 30 30 -21 17 #rect
He0 f0 @|StartRequestIcon #fIcon
He0 f1 465 49 30 30 0 15 #rect
He0 f1 @|EndIcon #fIcon
He0 f3 dialogId training.center.home.homepage #txt
He0 f3 startMethod start() #txt
He0 f3 requestActionDecl '<> param;' #txt
He0 f3 responseMappingAction 'out=in;
' #txt
He0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>HomePage</name>
    </language>
</elementInfo>
' #txt
He0 f3 240 42 112 44 -31 -8 #rect
He0 f3 @|UserDialogIcon #fIcon
He0 f4 111 64 240 64 #arcP
He0 f2 352 64 465 64 #arcP
>Proto He0 .type training.center.manage.HomePageData #txt
>Proto He0 .processKind NORMAL #txt
>Proto He0 0 0 32 24 18 0 #rect
>Proto He0 @|BIcon #fIcon
He0 f0 mainOut f4 tail #connect
He0 f4 head f3 mainIn #connect
He0 f3 mainOut f2 tail #connect
He0 f2 head f1 mainIn #connect
