[Ivy]
178B08283379DB89 7.5.0 #module
>Proto >Proto Collection #zClass
Cy0 Manage Big #zClass
Cy0 B #cInfo
Cy0 #process
Cy0 @TextInP .type .type #zField
Cy0 @TextInP .processKind .processKind #zField
Cy0 @TextInP .xml .xml #zField
Cy0 @TextInP .responsibility .responsibility #zField
Cy0 @StartRequest f0 '' #zField
Cy0 @EndTask f1 '' #zField
Cy0 @UserDialog f3 '' #zField
Cy0 @PushWFArc f4 '' #zField
Cy0 @PushWFArc f2 '' #zField
Cy0 @StartRequest f5 '' #zField
Cy0 @UserDialog f6 '' #zField
Cy0 @EndTask f7 '' #zField
Cy0 @PushWFArc f8 '' #zField
Cy0 @PushWFArc f9 '' #zField
>Proto Cy0 Cy0 Manage #zField
Cy0 f0 outLink Dashboard.ivp #txt
Cy0 f0 inParamDecl '<> param;' #txt
Cy0 f0 requestEnabled true #txt
Cy0 f0 triggerEnabled false #txt
Cy0 f0 callSignature Dashboard() #txt
Cy0 f0 caseData businessCase.attach=true #txt
Cy0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Dashboard.ivp</name>
    </language>
</elementInfo>
' #txt
Cy0 f0 @C|.responsibility Everybody #txt
Cy0 f0 49 49 30 30 -44 21 #rect
Cy0 f0 @|StartRequestIcon #fIcon
Cy0 f1 433 49 30 30 0 15 #rect
Cy0 f1 @|EndIcon #fIcon
Cy0 f3 dialogId training.center.manage.admin.DashboardAdmin #txt
Cy0 f3 startMethod start() #txt
Cy0 f3 requestActionDecl '<> param;' #txt
Cy0 f3 responseMappingAction 'out=in;
' #txt
Cy0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>DashboardAdmin</name>
    </language>
</elementInfo>
' #txt
Cy0 f3 192 42 112 44 -48 -8 #rect
Cy0 f3 @|UserDialogIcon #fIcon
Cy0 f4 79 64 192 64 #arcP
Cy0 f2 304 64 433 64 #arcP
Cy0 f5 outLink ShowCategory.ivp #txt
Cy0 f5 inParamDecl '<> param;' #txt
Cy0 f5 requestEnabled true #txt
Cy0 f5 triggerEnabled false #txt
Cy0 f5 callSignature ShowCategory() #txt
Cy0 f5 caseData businessCase.attach=true #txt
Cy0 f5 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>ShowCategory.ivp</name>
    </language>
</elementInfo>
' #txt
Cy0 f5 @C|.responsibility Everybody #txt
Cy0 f5 49 177 30 30 -21 17 #rect
Cy0 f5 @|StartRequestIcon #fIcon
Cy0 f6 dialogId training.center.manage.category.Category #txt
Cy0 f6 startMethod start() #txt
Cy0 f6 requestActionDecl '<> param;' #txt
Cy0 f6 responseMappingAction 'out=in;
' #txt
Cy0 f6 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>ShowCategory&#13;
</name>
    </language>
</elementInfo>
' #txt
Cy0 f6 192 170 128 44 -40 -16 #rect
Cy0 f6 @|UserDialogIcon #fIcon
Cy0 f7 433 177 30 30 0 15 #rect
Cy0 f7 @|EndIcon #fIcon
Cy0 f8 79 192 192 192 #arcP
Cy0 f9 320 192 433 192 #arcP
>Proto Cy0 .type training.center.manage.Category #txt
>Proto Cy0 .processKind NORMAL #txt
>Proto Cy0 0 0 32 24 18 0 #rect
>Proto Cy0 @|BIcon #fIcon
Cy0 f0 mainOut f4 tail #connect
Cy0 f4 head f3 mainIn #connect
Cy0 f3 mainOut f2 tail #connect
Cy0 f2 head f1 mainIn #connect
Cy0 f5 mainOut f8 tail #connect
Cy0 f8 head f6 mainIn #connect
Cy0 f6 mainOut f9 tail #connect
Cy0 f9 head f7 mainIn #connect
