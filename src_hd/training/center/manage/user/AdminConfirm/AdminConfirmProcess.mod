[Ivy]
178D395F5BD1A545 7.5.0 #module
>Proto >Proto Collection #zClass
As0 AdminConfirmProcess Big #zClass
As0 RD #cInfo
As0 #process
As0 @TextInP .type .type #zField
As0 @TextInP .processKind .processKind #zField
As0 @TextInP .xml .xml #zField
As0 @TextInP .responsibility .responsibility #zField
As0 @UdInit f0 '' #zField
As0 @UdProcessEnd f1 '' #zField
As0 @PushWFArc f2 '' #zField
As0 @UdEvent f3 '' #zField
As0 @UdExitEnd f4 '' #zField
As0 @PushWFArc f5 '' #zField
>Proto As0 As0 AdminConfirmProcess #zField
As0 f0 guid 178D395F5D65FD8F #txt
As0 f0 method start(ivy.trainingmanage.model.User) #txt
As0 f0 inParameterDecl '<ivy.trainingmanage.model.User user> param;' #txt
As0 f0 inParameterMapAction 'out.user=param.user;
' #txt
As0 f0 outParameterDecl '<ivy.trainingmanage.model.User user,String comment> result;' #txt
As0 f0 outParameterMapAction 'result.user=in.user;
result.comment=in.comment;
' #txt
As0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start(User)</name>
    </language>
</elementInfo>
' #txt
As0 f0 83 51 26 26 -16 15 #rect
As0 f0 @|UdInitIcon #fIcon
As0 f1 211 51 26 26 0 12 #rect
As0 f1 @|UdProcessEndIcon #fIcon
As0 f2 109 64 211 64 #arcP
As0 f3 guid 178D395F5E8F0FA9 #txt
As0 f3 actionTable 'out=in;
' #txt
As0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>close</name>
    </language>
</elementInfo>
' #txt
As0 f3 83 147 26 26 -15 15 #rect
As0 f3 @|UdEventIcon #fIcon
As0 f4 211 147 26 26 0 12 #rect
As0 f4 @|UdExitEndIcon #fIcon
As0 f5 109 160 211 160 #arcP
>Proto As0 .type training.center.manage.user.AdminConfirm.AdminConfirmData #txt
>Proto As0 .processKind HTML_DIALOG #txt
>Proto As0 -8 -8 16 16 16 26 #rect
>Proto As0 '' #fIcon
As0 f0 mainOut f2 tail #connect
As0 f2 head f1 mainIn #connect
As0 f3 mainOut f5 tail #connect
As0 f5 head f4 mainIn #connect
