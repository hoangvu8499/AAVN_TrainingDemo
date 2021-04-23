[Ivy]
178FDAC48533F96A 7.5.0 #module
>Proto >Proto Collection #zClass
Mt0 ManagePost Big #zClass
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
Mt0 @PushWFArc f2 '' #zField
Mt0 @Alternative f7 '' #zField
Mt0 @UserDialog f5 '' #zField
Mt0 @StartRequest f6 '' #zField
Mt0 @TaskSwitchSimple f9 '' #zField
Mt0 @EndTask f8 '' #zField
Mt0 @UserTask f10 '' #zField
Mt0 @PushWFArc f11 '' #zField
Mt0 @TkArc f12 '' #zField
Mt0 @PushWFArc f13 '' #zField
Mt0 @TkArc f14 '' #zField
Mt0 @PushWFArc f15 '' #zField
Mt0 @PushWFArc f16 '' #zField
>Proto Mt0 Mt0 ManagePost #zField
Mt0 f0 outLink ManagePostDashboard.ivp #txt
Mt0 f0 inParamDecl '<> param;' #txt
Mt0 f0 requestEnabled true #txt
Mt0 f0 triggerEnabled false #txt
Mt0 f0 callSignature ManagePostDashboard() #txt
Mt0 f0 caseData businessCase.attach=true #txt
Mt0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>ManagePostDashboard.ivp</name>
    </language>
</elementInfo>
' #txt
Mt0 f0 @C|.responsibility Everybody #txt
Mt0 f0 57 73 30 30 -61 26 #rect
Mt0 f0 @|StartRequestIcon #fIcon
Mt0 f1 393 73 30 30 0 15 #rect
Mt0 f1 @|EndIcon #fIcon
Mt0 f3 dialogId training.center.manage.post.DashboardManagePost #txt
Mt0 f3 startMethod start() #txt
Mt0 f3 requestActionDecl '<> param;' #txt
Mt0 f3 responseMappingAction 'out=in;
' #txt
Mt0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>DashboardManagePost</name>
    </language>
</elementInfo>
' #txt
Mt0 f3 176 66 144 44 -65 -8 #rect
Mt0 f3 @|UserDialogIcon #fIcon
Mt0 f4 87 88 176 88 #arcP
Mt0 f2 320 88 393 88 #arcP
Mt0 f7 424 328 32 32 0 16 #rect
Mt0 f7 @|AlternativeIcon #fIcon
Mt0 f5 dialogId training.center.manage.post.CreatePost #txt
Mt0 f5 startMethod start() #txt
Mt0 f5 requestActionDecl '<> param;' #txt
Mt0 f5 responseMappingAction 'out=in;
' #txt
Mt0 f5 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>CreatePost</name>
    </language>
</elementInfo>
' #txt
Mt0 f5 184 226 112 44 -31 -8 #rect
Mt0 f5 @|UserDialogIcon #fIcon
Mt0 f6 outLink createPost.ivp #txt
Mt0 f6 inParamDecl '<> param;' #txt
Mt0 f6 requestEnabled true #txt
Mt0 f6 triggerEnabled false #txt
Mt0 f6 callSignature createPost() #txt
Mt0 f6 caseData businessCase.attach=true #txt
Mt0 f6 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>createPost</name>
    </language>
</elementInfo>
' #txt
Mt0 f6 @C|.responsibility Everybody #txt
Mt0 f6 57 233 30 30 -21 17 #rect
Mt0 f6 @|StartRequestIcon #fIcon
Mt0 f9 actionTable 'out=in1;
' #txt
Mt0 f9 caseData 'case.description=user send information to Admin confirm
case.name=createPost' #txt
Mt0 f9 taskData 'TaskA.DESC=Update Information Post to Admin confirm to Create
TaskA.NAM=Update Information Post to Create
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
Mt0 f9 225 329 30 30 -20 16 #rect
Mt0 f9 @|TaskSwitchSimpleIcon #fIcon
Mt0 f8 537 329 30 30 0 15 #rect
Mt0 f8 @|EndIcon #fIcon
Mt0 f10 dialogId training.center.manage.post.Confirm #txt
Mt0 f10 startMethod start() #txt
Mt0 f10 requestActionDecl '<> param;' #txt
Mt0 f10 responseMappingAction 'out=in;
' #txt
Mt0 f10 caseData 'case.description=user send information to Admin confirm
case.name=createPost' #txt
Mt0 f10 taskData 'TaskA.DESC=Admin Accept Create Post or None Accept
TaskA.NAM=Accept Create New Post
TaskA.ROL=Admin
TaskA.TYPE=0
TaskA.customFields.STRING.embedInFrame="false"' #txt
Mt0 f10 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Confirm</name>
    </language>
</elementInfo>
' #txt
Mt0 f10 384 226 112 44 -22 -8 #rect
Mt0 f10 @|UserTaskIcon #fIcon
Mt0 f11 87 248 184 248 #arcP
Mt0 f12 296 248 384 248 #arcP
Mt0 f13 440 270 440 328 #arcP
Mt0 f14 expr in #txt
Mt0 f14 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>none accept&#13;
</name>
    </language>
</elementInfo>
' #txt
Mt0 f14 424 344 255 344 #arcP
Mt0 f14 0 0.23668639053254437 1 22 #arcLabel
Mt0 f15 expr in #txt
Mt0 f15 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>accept&#13;
</name>
    </language>
</elementInfo>
' #txt
Mt0 f15 456 344 537 344 #arcP
Mt0 f16 240 329 240 270 #arcP
Mt0 f16 0 0.27872104218182414 0 0 #arcLabel
>Proto Mt0 .type training.center.manage.ManagePostData #txt
>Proto Mt0 .processKind NORMAL #txt
>Proto Mt0 0 0 32 24 18 0 #rect
>Proto Mt0 @|BIcon #fIcon
Mt0 f0 mainOut f4 tail #connect
Mt0 f4 head f3 mainIn #connect
Mt0 f3 mainOut f2 tail #connect
Mt0 f2 head f1 mainIn #connect
Mt0 f5 mainOut f12 tail #connect
Mt0 f12 head f10 in #connect
Mt0 f10 out f13 tail #connect
Mt0 f13 head f7 in #connect
Mt0 f7 out f15 tail #connect
Mt0 f15 head f8 mainIn #connect
Mt0 f7 out f14 tail #connect
Mt0 f14 head f9 in #connect
Mt0 f9 out f16 tail #connect
Mt0 f16 head f5 mainIn #connect
Mt0 f6 mainOut f11 tail #connect
Mt0 f11 head f5 mainIn #connect
