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
As0 @GridStep f11 '' #zField
As0 @UdEvent f6 '' #zField
As0 @UdExitEnd f7 '' #zField
As0 @UdProcessEnd f15 '' #zField
As0 @Alternative f13 '' #zField
As0 @PushWFArc f16 '' #zField
As0 @PushWFArc f12 '' #zField
As0 @PushWFArc f14 '' #zField
As0 @PushWFArc f8 '' #zField
As0 @UdEvent f3 '' #zField
As0 @UdExitEnd f4 '' #zField
As0 @GridStep f5 '' #zField
As0 @PushWFArc f9 '' #zField
As0 @PushWFArc f10 '' #zField
As0 @GridStep f17 '' #zField
As0 @PushWFArc f18 '' #zField
As0 @PushWFArc f2 '' #zField
>Proto As0 As0 AdminConfirmProcess #zField
As0 f0 guid 178D395F5D65FD8F #txt
As0 f0 method start(ivy.trainingmanage.model.User,String) #txt
As0 f0 inParameterDecl '<ivy.trainingmanage.model.User user,String comment> param;' #txt
As0 f0 inParameterMapAction 'out.comment=param.comment;
out.user=param.user;
' #txt
As0 f0 outParameterDecl '<ivy.trainingmanage.model.User user,String comment,Boolean accept> result;' #txt
As0 f0 outParameterMapAction 'result.user=in.user;
result.comment=in.comment;
result.accept=in.accept;
' #txt
As0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start(User,String)</name>
    </language>
</elementInfo>
' #txt
As0 f0 83 51 26 26 -16 15 #rect
As0 f0 @|UdInitIcon #fIcon
As0 f1 419 51 26 26 0 12 #rect
As0 f1 @|UdProcessEndIcon #fIcon
As0 f11 actionTable 'out=in;
' #txt
As0 f11 actionCode 'import javax.faces.context.FacesContext;
import List;

import org.primefaces.context.RequestContext;
import javax.faces.application.FacesMessage;
import ch.ivyteam.ivy.workflow.INote;
import ch.ivyteam.ivy.security.IUser;
import ch.ivyteam.ivy.environment.Ivy;
import ch.ivyteam.ivy.workflow.ICase;

if(in.comment.isBlank()){
 FacesContext.getCurrentInstance().addMessage(null,
				new FacesMessage(FacesMessage.SEVERITY_ERROR, "COMMENT IS NOT NUT", "COMMENT IS NOT NUT"));
}else{
	in.accept = false;
	ICase currentCase = Ivy.wfCase();
	currentCase.createNote(ivy.session, in.comment);
}
' #txt
As0 f11 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>None accept</name>
    </language>
</elementInfo>
' #txt
As0 f11 160 178 112 44 -34 -8 #rect
As0 f11 @|StepIcon #fIcon
As0 f6 guid 178E8E2BE99A1C8C #txt
As0 f6 actionTable 'out=in;
' #txt
As0 f6 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>close</name>
    </language>
</elementInfo>
' #txt
As0 f6 83 187 26 26 -15 15 #rect
As0 f6 @|UdEventIcon #fIcon
As0 f7 427 187 26 26 0 12 #rect
As0 f7 @|UdExitEndIcon #fIcon
As0 f15 315 275 26 26 0 12 #rect
As0 f15 @|UdProcessEndIcon #fIcon
As0 f13 312 184 32 32 0 16 #rect
As0 f13 @|AlternativeIcon #fIcon
As0 f16 expr in #txt
As0 f16 outCond in.comment.isBlank() #txt
As0 f16 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>don''t have comment&#13;
</name>
    </language>
</elementInfo>
' #txt
As0 f16 328 216 328 275 #arcP
As0 f16 0 0.6779661016949152 -61 0 #arcLabel
As0 f12 109 200 160 200 #arcP
As0 f14 272 200 312 200 #arcP
As0 f8 expr in #txt
As0 f8 outCond !in.comment.isBlank() #txt
As0 f8 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>have comment</name>
    </language>
</elementInfo>
' #txt
As0 f8 344 200 427 200 #arcP
As0 f8 0 0.4782608695652174 0 -16 #arcLabel
As0 f3 guid 178E8E5681BEA72D #txt
As0 f3 actionTable 'out=in;
' #txt
As0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>confirm</name>
    </language>
</elementInfo>
' #txt
As0 f3 83 363 26 26 -14 15 #rect
As0 f3 @|UdEventIcon #fIcon
As0 f4 419 363 26 26 0 12 #rect
As0 f4 @|UdExitEndIcon #fIcon
As0 f5 actionTable 'out=in;
' #txt
As0 f5 actionCode 'import ivy.trainingmanage.service.UserService;
import org.primefaces.context.RequestContext;

UserService userService = new UserService();
userService.createUser(in.user, in.userRole);
in.accept = true;



' #txt
As0 f5 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>accept</name>
    </language>
</elementInfo>
' #txt
As0 f5 208 354 112 44 -18 -8 #rect
As0 f5 @|StepIcon #fIcon
As0 f9 109 376 208 376 #arcP
As0 f10 320 376 419 376 #arcP
As0 f17 actionTable 'out=in;
' #txt
As0 f17 actionCode 'import ivy.trainingmanage.dao.RoleDao;

RoleDao  roleDao = new RoleDao();
in.roles = roleDao.getAll();
' #txt
As0 f17 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>setup</name>
    </language>
</elementInfo>
' #txt
As0 f17 216 42 112 44 -15 -8 #rect
As0 f17 @|StepIcon #fIcon
As0 f18 109 64 216 64 #arcP
As0 f2 328 64 419 64 #arcP
>Proto As0 .type training.center.manage.user.AdminConfirm.AdminConfirmData #txt
>Proto As0 .processKind HTML_DIALOG #txt
>Proto As0 -8 -8 16 16 16 26 #rect
>Proto As0 '' #fIcon
As0 f6 mainOut f12 tail #connect
As0 f12 head f11 mainIn #connect
As0 f11 mainOut f14 tail #connect
As0 f14 head f13 in #connect
As0 f13 out f8 tail #connect
As0 f8 head f7 mainIn #connect
As0 f13 out f16 tail #connect
As0 f16 head f15 mainIn #connect
As0 f3 mainOut f9 tail #connect
As0 f9 head f5 mainIn #connect
As0 f5 mainOut f10 tail #connect
As0 f10 head f4 mainIn #connect
As0 f0 mainOut f18 tail #connect
As0 f18 head f17 mainIn #connect
As0 f17 mainOut f2 tail #connect
As0 f2 head f1 mainIn #connect
