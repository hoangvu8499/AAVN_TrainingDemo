[Ivy]
178FDB1A93261B2F 7.5.0 #module
>Proto >Proto Collection #zClass
Ds0 DashboardManagePostProcess Big #zClass
Ds0 RD #cInfo
Ds0 #process
Ds0 @TextInP .type .type #zField
Ds0 @TextInP .processKind .processKind #zField
Ds0 @TextInP .xml .xml #zField
Ds0 @TextInP .responsibility .responsibility #zField
Ds0 @UdInit f0 '' #zField
Ds0 @UdProcessEnd f1 '' #zField
Ds0 @UdEvent f3 '' #zField
Ds0 @UdExitEnd f4 '' #zField
Ds0 @PushWFArc f5 '' #zField
Ds0 @GridStep f6 '' #zField
Ds0 @PushWFArc f7 '' #zField
Ds0 @PushWFArc f2 '' #zField
Ds0 @UdExitEnd f9 '' #zField
Ds0 @UdMethod f11 '' #zField
Ds0 @PushWFArc f8 '' #zField
Ds0 @UdMethod f10 '' #zField
Ds0 @GridStep f12 '' #zField
Ds0 @UdProcessEnd f13 '' #zField
Ds0 @PushWFArc f14 '' #zField
Ds0 @PushWFArc f15 '' #zField
>Proto Ds0 Ds0 DashboardManagePostProcess #zField
Ds0 f0 guid 178FDB1A93A22A9A #txt
Ds0 f0 method start(Long) #txt
Ds0 f0 inParameterDecl '<Long id> param;' #txt
Ds0 f0 inParameterMapAction 'out.id=param.id;
' #txt
Ds0 f0 outParameterDecl '<Long id> result;' #txt
Ds0 f0 outParameterMapAction 'result.id=in.id;
' #txt
Ds0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start(Long)</name>
    </language>
</elementInfo>
' #txt
Ds0 f0 83 51 26 26 -16 15 #rect
Ds0 f0 @|UdInitIcon #fIcon
Ds0 f1 403 51 26 26 0 12 #rect
Ds0 f1 @|UdProcessEndIcon #fIcon
Ds0 f3 guid 178FDB1A94B7D716 #txt
Ds0 f3 actionTable 'out=in;
' #txt
Ds0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>close</name>
    </language>
</elementInfo>
' #txt
Ds0 f3 83 395 26 26 -15 15 #rect
Ds0 f3 @|UdEventIcon #fIcon
Ds0 f4 403 395 26 26 0 12 #rect
Ds0 f4 @|UdExitEndIcon #fIcon
Ds0 f5 109 408 403 408 #arcP
Ds0 f6 actionTable 'out=in;
' #txt
Ds0 f6 actionCode 'import ivy.trainingmanage.service.PostService;

PostService postService = new PostService();
in.postList = postService.getAll();' #txt
Ds0 f6 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>get Data</name>
    </language>
</elementInfo>
' #txt
Ds0 f6 192 42 112 44 -23 -8 #rect
Ds0 f6 @|StepIcon #fIcon
Ds0 f7 109 64 192 64 #arcP
Ds0 f2 304 64 403 64 #arcP
Ds0 f9 403 147 26 26 0 12 #rect
Ds0 f9 @|UdExitEndIcon #fIcon
Ds0 f11 guid 1790DBD8BBF40F63 #txt
Ds0 f11 method edit(Long) #txt
Ds0 f11 inParameterDecl '<Long id> param;' #txt
Ds0 f11 inParameterMapAction 'out.id=param.id;
' #txt
Ds0 f11 outParameterDecl '<> result;' #txt
Ds0 f11 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Edit</name>
    </language>
</elementInfo>
' #txt
Ds0 f11 83 147 26 26 -12 18 #rect
Ds0 f11 @|UdMethodIcon #fIcon
Ds0 f8 109 160 403 160 #arcP
Ds0 f10 guid 179174510F8CE59B #txt
Ds0 f10 method delete(ivy.trainingmanage.model.Post) #txt
Ds0 f10 inParameterDecl '<ivy.trainingmanage.model.Post post> param;' #txt
Ds0 f10 inParameterMapAction 'out.post=param.post;
' #txt
Ds0 f10 outParameterDecl '<> result;' #txt
Ds0 f10 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>delete</name>
    </language>
</elementInfo>
' #txt
Ds0 f10 83 275 26 26 -13 21 #rect
Ds0 f10 @|UdMethodIcon #fIcon
Ds0 f12 actionTable 'out=in;
' #txt
Ds0 f12 actionCode 'import ivy.trainingmanage.service.PostService;

PostService postService = new PostService();
postService.delete(in.post);
in.postList = postService.getAll();' #txt
Ds0 f12 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Delete</name>
    </language>
</elementInfo>
' #txt
Ds0 f12 192 266 112 44 -18 -8 #rect
Ds0 f12 @|StepIcon #fIcon
Ds0 f13 403 275 26 26 0 12 #rect
Ds0 f13 @|UdProcessEndIcon #fIcon
Ds0 f14 109 288 192 288 #arcP
Ds0 f15 304 288 403 288 #arcP
>Proto Ds0 .type training.center.manage.post.DashboardManagePost.DashboardManagePostData #txt
>Proto Ds0 .processKind HTML_DIALOG #txt
>Proto Ds0 -8 -8 16 16 16 26 #rect
>Proto Ds0 '' #fIcon
Ds0 f3 mainOut f5 tail #connect
Ds0 f5 head f4 mainIn #connect
Ds0 f0 mainOut f7 tail #connect
Ds0 f7 head f6 mainIn #connect
Ds0 f6 mainOut f2 tail #connect
Ds0 f2 head f1 mainIn #connect
Ds0 f11 mainOut f8 tail #connect
Ds0 f8 head f9 mainIn #connect
Ds0 f10 mainOut f14 tail #connect
Ds0 f14 head f12 mainIn #connect
Ds0 f12 mainOut f15 tail #connect
Ds0 f15 head f13 mainIn #connect
