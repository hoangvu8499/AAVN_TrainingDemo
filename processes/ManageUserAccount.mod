[Ivy]
178CF792FC4F0D99 7.5.0 #module
>Proto >Proto Collection #zClass
Mt0 ManageUserAccount Big #zClass
Mt0 B #cInfo
Mt0 #process
Mt0 @TextInP .type .type #zField
Mt0 @TextInP .processKind .processKind #zField
Mt0 @TextInP .xml .xml #zField
Mt0 @TextInP .responsibility .responsibility #zField
Mt0 @StartRequest f0 '' #zField
Mt0 @EndTask f1 '' #zField
Mt0 @UserDialog f3 '' #zField
Mt0 @PushWFArc f4 '' #zField
Mt0 @UserTask f5 '' #zField
Mt0 @TkArc f6 '' #zField
Mt0 @Alternative f7 '' #zField
Mt0 @PushWFArc f8 '' #zField
Mt0 @PushWFArc f2 '' #zField
Mt0 @TaskSwitchSimple f9 '' #zField
Mt0 @TkArc f10 '' #zField
Mt0 @PushWFArc f11 '' #zField
>Proto Mt0 Mt0 ManageUserAccount #zField
Mt0 f0 outLink start.ivp #txt
Mt0 f0 inParamDecl '<> param;' #txt
Mt0 f0 requestEnabled true #txt
Mt0 f0 triggerEnabled false #txt
Mt0 f0 callSignature start() #txt
Mt0 f0 caseData businessCase.attach=true #txt
Mt0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start.ivp</name>
    </language>
</elementInfo>
' #txt
Mt0 f0 @C|.responsibility Everybody #txt
Mt0 f0 49 49 30 30 -21 17 #rect
Mt0 f0 @|StartRequestIcon #fIcon
Mt0 f1 609 49 30 30 0 15 #rect
Mt0 f1 @|EndIcon #fIcon
Mt0 f3 dialogId training.center.manage.user.CreateUser #txt
Mt0 f3 startMethod start() #txt
Mt0 f3 requestActionDecl '<> param;' #txt
Mt0 f3 responseMappingAction 'out=in;
' #txt
Mt0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>CreateUser</name>
    </language>
</elementInfo>
' #txt
Mt0 f3 136 42 112 44 -32 -8 #rect
Mt0 f3 @|UserDialogIcon #fIcon
Mt0 f4 79 64 136 64 #arcP
Mt0 f5 responseMappingAction 'out=in;
' #txt
Mt0 f5 320 42 112 44 0 -8 #rect
Mt0 f5 @|UserTaskIcon #fIcon
Mt0 f6 248 64 320 64 #arcP
Mt0 f7 512 48 32 32 0 16 #rect
Mt0 f7 @|AlternativeIcon #fIcon
Mt0 f8 432 64 512 64 #arcP
Mt0 f2 544 64 609 64 #arcP
Mt0 f9 actionTable 'out=in1;
' #txt
Mt0 f9 361 129 30 30 0 16 #rect
Mt0 f9 @|TaskSwitchSimpleIcon #fIcon
Mt0 f10 528 80 391 144 #arcP
Mt0 f10 1 528 144 #addKink
Mt0 f10 1 0.11884439749780801 0 0 #arcLabel
Mt0 f11 361 144 192 86 #arcP
Mt0 f11 1 192 144 #addKink
Mt0 f11 0 0.7817785329490189 0 0 #arcLabel
>Proto Mt0 .type training.center.manage.ManageUserAccountData #txt
>Proto Mt0 .processKind NORMAL #txt
>Proto Mt0 0 0 32 24 18 0 #rect
>Proto Mt0 @|BIcon #fIcon
Mt0 f0 mainOut f4 tail #connect
Mt0 f4 head f3 mainIn #connect
Mt0 f3 mainOut f6 tail #connect
Mt0 f6 head f5 in #connect
Mt0 f5 out f8 tail #connect
Mt0 f8 head f7 in #connect
Mt0 f7 out f2 tail #connect
Mt0 f2 head f1 mainIn #connect
Mt0 f7 out f10 tail #connect
Mt0 f10 head f9 in #connect
Mt0 f9 out f11 tail #connect
Mt0 f11 head f3 mainIn #connect
