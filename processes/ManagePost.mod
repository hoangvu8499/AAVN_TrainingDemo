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
Mt0 @UserDialog f3 '' #zField
Mt0 @PushWFArc f4 '' #zField
Mt0 @Alternative f7 '' #zField
Mt0 @UserDialog f5 '' #zField
Mt0 @StartRequest f6 '' #zField
Mt0 @TaskSwitchSimple f9 '' #zField
Mt0 @EndTask f8 '' #zField
Mt0 @UserTask f10 '' #zField
Mt0 @PushWFArc f11 '' #zField
Mt0 @PushWFArc f13 '' #zField
Mt0 @TkArc f14 '' #zField
Mt0 @PushWFArc f15 '' #zField
Mt0 @PushWFArc f16 '' #zField
Mt0 @UserDialog f19 '' #zField
Mt0 @Alternative f24 '' #zField
Mt0 @PushWFArc f1 '' #zField
Mt0 @EndTask f2 '' #zField
Mt0 @PushWFArc f17 '' #zField
Mt0 @TkArc f12 '' #zField
Mt0 @UserTask f18 '' #zField
Mt0 @TkArc f20 '' #zField
Mt0 @PushWFArc f21 '' #zField
Mt0 @TaskSwitchSimple f22 '' #zField
Mt0 @TkArc f23 '' #zField
Mt0 @PushWFArc f25 '' #zField
>Proto Mt0 Mt0 ManagePost #zField
Mt0 f0 outLink ManagePostDashboard.ivp #txt
Mt0 f0 inParamDecl '<> param;' #txt
Mt0 f0 requestEnabled true #txt
Mt0 f0 triggerEnabled false #txt
Mt0 f0 callSignature ManagePostDashboard() #txt
Mt0 f0 caseData businessCase.attach=true #txt
Mt0 f0 wfuser 1 #txt
Mt0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>ManagePostDashboard.ivp</name>
    </language>
</elementInfo>
' #txt
Mt0 f0 @C|.responsibility Teacher #txt
Mt0 f0 89 225 30 30 -61 26 #rect
Mt0 f0 @|StartRequestIcon #fIcon
Mt0 f3 dialogId training.center.manage.post.DashboardManagePost #txt
Mt0 f3 startMethod start(Long) #txt
Mt0 f3 requestActionDecl '<Long id> param;' #txt
Mt0 f3 responseMappingAction 'out=in;
out.id=result.id;
' #txt
Mt0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>DashboardManagePost</name>
    </language>
</elementInfo>
' #txt
Mt0 f3 32 146 144 44 -65 -8 #rect
Mt0 f3 @|UserDialogIcon #fIcon
Mt0 f4 104 225 104 190 #arcP
Mt0 f7 480 456 32 32 0 16 #rect
Mt0 f7 @|AlternativeIcon #fIcon
Mt0 f5 dialogId training.center.manage.post.CreatePost #txt
Mt0 f5 startMethod start(Long,String) #txt
Mt0 f5 requestActionDecl '<Long idPost,String comment> param;' #txt
Mt0 f5 requestMappingAction 'param.idPost=in.id;
param.comment=in.comment;
' #txt
Mt0 f5 responseMappingAction 'out=in;
out.comment=result.comment;
out.confirm=result.confirm;
out.id=result.idPost;
' #txt
Mt0 f5 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>CreatePost</name>
    </language>
</elementInfo>
' #txt
Mt0 f5 200 378 112 44 -31 -8 #rect
Mt0 f5 @|UserDialogIcon #fIcon
Mt0 f6 outLink createPost.ivp #txt
Mt0 f6 inParamDecl '<> param;' #txt
Mt0 f6 requestEnabled true #txt
Mt0 f6 triggerEnabled false #txt
Mt0 f6 callSignature createPost() #txt
Mt0 f6 caseData businessCase.attach=true #txt
Mt0 f6 wfuser 1 #txt
Mt0 f6 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>createPost</name>
    </language>
</elementInfo>
' #txt
Mt0 f6 @C|.responsibility Teacher #txt
Mt0 f6 89 385 30 30 -21 17 #rect
Mt0 f6 @|StartRequestIcon #fIcon
Mt0 f9 actionTable 'out=in1;
out.comment=in1.comment;
out.confirm=in1.confirm;
out.id=in1.id;
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
Mt0 f9 241 457 30 30 -20 16 #rect
Mt0 f9 @|TaskSwitchSimpleIcon #fIcon
Mt0 f8 625 457 30 30 0 15 #rect
Mt0 f8 @|EndIcon #fIcon
Mt0 f10 dialogId training.center.manage.post.Confirm #txt
Mt0 f10 startMethod start(Long,String) #txt
Mt0 f10 requestActionDecl '<Long idPost,String comment> param;' #txt
Mt0 f10 requestMappingAction 'param.idPost=in.id;
param.comment=in.comment;
' #txt
Mt0 f10 responseMappingAction 'out=in;
out.comment=result.comment;
out.confirm=result.confirm;
out.id=result.idPost;
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
Mt0 f10 440 378 112 44 -22 -8 #rect
Mt0 f10 @|UserTaskIcon #fIcon
Mt0 f11 119 400 200 400 #arcP
Mt0 f13 496 422 496 456 #arcP
Mt0 f14 expr in #txt
Mt0 f14 outCond 'in.confirm == false' #txt
Mt0 f14 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>none accept&#13;
</name>
    </language>
</elementInfo>
' #txt
Mt0 f14 480 472 271 472 #arcP
Mt0 f14 0 0.23668639053254437 1 22 #arcLabel
Mt0 f15 expr in #txt
Mt0 f15 outCond 'in.confirm == true' #txt
Mt0 f15 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>accept&#13;
</name>
    </language>
</elementInfo>
' #txt
Mt0 f15 512 472 625 472 #arcP
Mt0 f16 256 457 256 422 #arcP
Mt0 f16 0 0.27872104218182414 0 0 #arcLabel
Mt0 f19 dialogId training.center.manage.post.EditPost #txt
Mt0 f19 startMethod EditPost(Boolean,String,Long) #txt
Mt0 f19 requestActionDecl '<Boolean confirm,String comment,Long id> param;' #txt
Mt0 f19 requestMappingAction 'param.confirm=in.confirm;
param.comment=in.comment;
param.id=in.id;
' #txt
Mt0 f19 responseMappingAction 'out=in;
out.comment=result.comment;
out.confirm=result.confirm;
out.id=result.idPost;
' #txt
Mt0 f19 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Show Post Edit&#13;
</name>
    </language>
</elementInfo>
' #txt
Mt0 f19 232 74 128 44 -40 -16 #rect
Mt0 f19 @|UserDialogIcon #fIcon
Mt0 f24 504 160 32 32 0 16 #rect
Mt0 f24 @|AlternativeIcon #fIcon
Mt0 f1 104 146 232 96 #arcP
Mt0 f1 1 136 96 #addKink
Mt0 f1 0 0.6481481481481481 0 0 #arcLabel
Mt0 f2 641 161 30 30 0 15 #rect
Mt0 f2 @|EndIcon #fIcon
Mt0 f17 expr in #txt
Mt0 f17 outCond 'in.confirm == true' #txt
Mt0 f17 536 176 641 176 #arcP
Mt0 f12 312 400 440 400 #arcP
Mt0 f18 dialogId training.center.manage.post.Confirm #txt
Mt0 f18 startMethod start(Long,String) #txt
Mt0 f18 requestActionDecl '<Long idPost,String comment> param;' #txt
Mt0 f18 requestMappingAction 'param.idPost=in.id;
param.comment=in.comment;
' #txt
Mt0 f18 responseMappingAction 'out=in;
out.comment=result.comment;
out.confirm=result.confirm;
out.id=result.idPost;
' #txt
Mt0 f18 caseData 'case.description=user send information to Admin confirm
case.name=createPost' #txt
Mt0 f18 taskData 'TaskA.DESC=Admin Accept Create Post or None Accept
TaskA.NAM=Accept Create New Post
TaskA.ROL=Admin
TaskA.TYPE=0
TaskA.customFields.STRING.embedInFrame="false"' #txt
Mt0 f18 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Confirm</name>
    </language>
</elementInfo>
' #txt
Mt0 f18 464 74 112 44 -22 -8 #rect
Mt0 f18 @|UserTaskIcon #fIcon
Mt0 f20 360 96 464 96 #arcP
Mt0 f21 520 118 520 160 #arcP
Mt0 f22 actionTable 'out=in1;
out.comment=in1.comment;
out.confirm=in1.confirm;
out.id=in1.id;
' #txt
Mt0 f22 caseData 'case.description=user send information to Admin confirm
case.name=update post' #txt
Mt0 f22 taskData 'TaskA.DESC=Update Information Post to Admin confirm to Create
TaskA.NAM=Update Information Post to Create
TaskA.ROL=Teacher
TaskA.TYPE=0
TaskA.customFields.STRING.embedInFrame="false"' #txt
Mt0 f22 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Edit data&#13;
</name>
    </language>
</elementInfo>
' #txt
Mt0 f22 281 161 30 30 -20 16 #rect
Mt0 f22 @|TaskSwitchSimpleIcon #fIcon
Mt0 f23 expr in #txt
Mt0 f23 outCond 'in.confirm == false' #txt
Mt0 f23 504 176 311 176 #arcP
Mt0 f25 296 161 296 118 #arcP
>Proto Mt0 .type training.center.manage.ManagePostData #txt
>Proto Mt0 .processKind NORMAL #txt
>Proto Mt0 0 0 32 24 18 0 #rect
>Proto Mt0 @|BIcon #fIcon
Mt0 f0 mainOut f4 tail #connect
Mt0 f4 head f3 mainIn #connect
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
Mt0 f3 mainOut f1 tail #connect
Mt0 f1 head f19 mainIn #connect
Mt0 f24 out f17 tail #connect
Mt0 f17 head f2 mainIn #connect
Mt0 f5 mainOut f12 tail #connect
Mt0 f12 head f10 in #connect
Mt0 f19 mainOut f20 tail #connect
Mt0 f20 head f18 in #connect
Mt0 f18 out f21 tail #connect
Mt0 f21 head f24 in #connect
Mt0 f24 out f23 tail #connect
Mt0 f23 head f22 in #connect
Mt0 f22 out f25 tail #connect
Mt0 f25 head f19 mainIn #connect
