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
Mt0 @UserTask f5 '' #zField
Mt0 @TkArc f6 '' #zField
Mt0 @Alternative f7 '' #zField
Mt0 @PushWFArc f8 '' #zField
Mt0 @PushWFArc f2 '' #zField
Mt0 @TaskSwitchSimple f9 '' #zField
Mt0 @TkArc f10 '' #zField
Mt0 @PushWFArc f11 '' #zField
Mt0 @StartRequest f14 '' #zField
Mt0 @UserDialog f15 '' #zField
Mt0 @PushWFArc f16 '' #zField
Mt0 @EndTask f17 '' #zField
Mt0 @PushWFArc f18 '' #zField
Mt0 @PushWFArc f4 '' #zField
>Proto Mt0 Mt0 ManageUserAccount #zField
Mt0 f0 outLink createUser.ivp #txt
Mt0 f0 inParamDecl '<> param;' #txt
Mt0 f0 requestEnabled true #txt
Mt0 f0 triggerEnabled false #txt
Mt0 f0 callSignature createUser() #txt
Mt0 f0 caseData businessCase.attach=true #txt
Mt0 f0 wfuser 1 #txt
Mt0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>createUser</name>
    </language>
</elementInfo>
' #txt
Mt0 f0 @C|.responsibility Teacher #txt
Mt0 f0 65 49 30 30 -21 17 #rect
Mt0 f0 @|StartRequestIcon #fIcon
Mt0 f1 545 145 30 30 0 15 #rect
Mt0 f1 @|EndIcon #fIcon
Mt0 f3 dialogId training.center.manage.user.CreateUser #txt
Mt0 f3 startMethod start(ivy.trainingmanage.model.User) #txt
Mt0 f3 requestActionDecl '<ivy.trainingmanage.model.User user> param;' #txt
Mt0 f3 requestMappingAction 'param.user=in.user;
' #txt
Mt0 f3 responseMappingAction 'out=in;
out.user=result.user;
' #txt
Mt0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>CreateUser</name>
    </language>
</elementInfo>
' #txt
Mt0 f3 192 42 112 44 -32 -8 #rect
Mt0 f3 @|UserDialogIcon #fIcon
Mt0 f5 dialogId training.center.manage.user.AdminConfirm #txt
Mt0 f5 startMethod start(ivy.trainingmanage.model.User,String) #txt
Mt0 f5 requestActionDecl '<ivy.trainingmanage.model.User user,String comment> param;' #txt
Mt0 f5 requestMappingAction 'param.user=in.user;
param.comment=in.comment;
' #txt
Mt0 f5 responseMappingAction 'out=in;
out.accept=result.accept;
out.comment=result.comment;
out.user=result.user;
' #txt
Mt0 f5 caseData 'case.description=New person send information to Admin confirm
case.name=createUser' #txt
Mt0 f5 taskData 'TaskA.DESC=Admin Accept Create User or None Accept
TaskA.NAM=Accept Create User
TaskA.ROL=Admin
TaskA.TYPE=0
TaskA.customFields.STRING.embedInFrame="false"' #txt
Mt0 f5 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>AdminConfirm</name>
    </language>
</elementInfo>
' #txt
Mt0 f5 392 42 112 44 -39 -8 #rect
Mt0 f5 @|UserTaskIcon #fIcon
Mt0 f6 304 64 392 64 #arcP
Mt0 f7 432 144 32 32 0 16 #rect
Mt0 f7 @|AlternativeIcon #fIcon
Mt0 f8 448 86 448 144 #arcP
Mt0 f2 expr in #txt
Mt0 f2 outCond 'in.accept == true' #txt
Mt0 f2 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>accept&#13;
</name>
    </language>
</elementInfo>
' #txt
Mt0 f2 464 160 545 160 #arcP
Mt0 f9 actionTable 'out=in1;
out.accept=in1.accept;
out.comment=in1.comment;
out.user=in1.user;
' #txt
Mt0 f9 caseData 'case.description=New person send information to Admin confirm
case.name=createUser' #txt
Mt0 f9 taskData 'TaskA.DESC=Update Information User to Admin confirm to Create
TaskA.NAM=Update Information User to Create
TaskA.ROL=Teacher
TaskA.TYPE=0
TaskA.customFields.STRING.embedInFrame="false"' #txt
Mt0 f9 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Edit data&#13;
</name>
    </language>
</elementInfo>
' #txt
Mt0 f9 233 145 30 30 -20 16 #rect
Mt0 f9 @|TaskSwitchSimpleIcon #fIcon
Mt0 f10 expr in #txt
Mt0 f10 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>none accept&#13;
</name>
    </language>
</elementInfo>
' #txt
Mt0 f10 432 160 263 160 #arcP
Mt0 f10 0 0.23668639053254437 0 22 #arcLabel
Mt0 f11 248 145 248 86 #arcP
Mt0 f11 0 0.27872104218182414 0 0 #arcLabel
Mt0 f14 outLink DashboardManageUser.ivp #txt
Mt0 f14 inParamDecl '<> param;' #txt
Mt0 f14 requestEnabled true #txt
Mt0 f14 triggerEnabled false #txt
Mt0 f14 callSignature DashboardManageUser() #txt
Mt0 f14 caseData businessCase.attach=true #txt
Mt0 f14 wfuser 1 #txt
Mt0 f14 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Show All</name>
    </language>
</elementInfo>
' #txt
Mt0 f14 @C|.responsibility Teacher #txt
Mt0 f14 65 281 30 30 -21 17 #rect
Mt0 f14 @|StartRequestIcon #fIcon
Mt0 f15 dialogId training.center.manage.user.DashboardManageUser #txt
Mt0 f15 startMethod start() #txt
Mt0 f15 requestActionDecl '<> param;' #txt
Mt0 f15 responseMappingAction 'out=in;
' #txt
Mt0 f15 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>DashboardManageUser</name>
    </language>
</elementInfo>
' #txt
Mt0 f15 192 274 144 44 -66 -8 #rect
Mt0 f15 @|UserDialogIcon #fIcon
Mt0 f16 95 296 192 296 #arcP
Mt0 f17 417 281 30 30 0 15 #rect
Mt0 f17 @|EndIcon #fIcon
Mt0 f18 336 296 417 296 #arcP
Mt0 f4 95 64 192 64 #arcP
>Proto Mt0 .type training.center.manage.ManageUserAccountData #txt
>Proto Mt0 .processKind NORMAL #txt
>Proto Mt0 0 0 32 24 18 0 #rect
>Proto Mt0 @|BIcon #fIcon
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
Mt0 f14 mainOut f16 tail #connect
Mt0 f16 head f15 mainIn #connect
Mt0 f15 mainOut f18 tail #connect
Mt0 f18 head f17 mainIn #connect
Mt0 f0 mainOut f4 tail #connect
Mt0 f4 head f3 mainIn #connect
