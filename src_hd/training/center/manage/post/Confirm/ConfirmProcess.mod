[Ivy]
178FDFC6E52241CA 7.5.0 #module
>Proto >Proto Collection #zClass
Cs0 ConfirmProcess Big #zClass
Cs0 RD #cInfo
Cs0 #process
Cs0 @TextInP .type .type #zField
Cs0 @TextInP .processKind .processKind #zField
Cs0 @TextInP .xml .xml #zField
Cs0 @TextInP .responsibility .responsibility #zField
Cs0 @UdInit f0 '' #zField
Cs0 @UdProcessEnd f1 '' #zField
Cs0 @GridStep f6 '' #zField
Cs0 @PushWFArc f7 '' #zField
Cs0 @PushWFArc f2 '' #zField
Cs0 @UdEvent f8 '' #zField
Cs0 @UdEvent f9 '' #zField
Cs0 @UdExitEnd f10 '' #zField
Cs0 @Alternative f13 '' #zField
Cs0 @UdProcessEnd f15 '' #zField
Cs0 @UdExitEnd f11 '' #zField
Cs0 @GridStep f12 '' #zField
Cs0 @GridStep f14 '' #zField
Cs0 @PushWFArc f16 '' #zField
Cs0 @PushWFArc f18 '' #zField
Cs0 @PushWFArc f20 '' #zField
Cs0 @PushWFArc f21 '' #zField
Cs0 @PushWFArc f23 '' #zField
Cs0 @PushWFArc f17 '' #zField
>Proto Cs0 Cs0 ConfirmProcess #zField
Cs0 f0 guid 178FDFC6E59B1C7D #txt
Cs0 f0 method start(Long,String) #txt
Cs0 f0 inParameterDecl '<Long idPost,String comment> param;' #txt
Cs0 f0 inParameterMapAction 'out.comment=param.comment;
out.idPost=param.idPost;
' #txt
Cs0 f0 outParameterDecl '<Boolean confirm,Long idPost,String comment> result;' #txt
Cs0 f0 outParameterMapAction 'result.confirm=in.confirm;
result.idPost=in.idPost;
result.comment=in.comment;
' #txt
Cs0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start(Long,String)</name>
    </language>
</elementInfo>
' #txt
Cs0 f0 83 51 26 26 -40 20 #rect
Cs0 f0 @|UdInitIcon #fIcon
Cs0 f1 387 51 26 26 0 12 #rect
Cs0 f1 @|UdProcessEndIcon #fIcon
Cs0 f6 actionTable 'out=in;
' #txt
Cs0 f6 actionCode 'import ivy.trainingmanage.service.PostService;
import ivy.trainingmanage.dao.CategoryDao;

PostService postService = new PostService();
CategoryDao categoryDao = new CategoryDao();
in.categories = categoryDao.getAll();
in.confirm = true;
in.indexProcessChain = 1;
in.post = postService.findById(in.idPost);
if(in.post.filePost.size() > 0){
	in.filePost = in.post.filePost.get(in.post.filePost.size()-1);
}
' #txt
Cs0 f6 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>setup</name>
    </language>
</elementInfo>
' #txt
Cs0 f6 184 42 112 44 -15 -8 #rect
Cs0 f6 @|StepIcon #fIcon
Cs0 f7 109 64 184 64 #arcP
Cs0 f2 296 64 387 64 #arcP
Cs0 f8 guid 1790C5B4F8746EE4 #txt
Cs0 f8 actionTable 'out=in;
' #txt
Cs0 f8 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>close</name>
    </language>
</elementInfo>
' #txt
Cs0 f8 83 163 26 26 -15 15 #rect
Cs0 f8 @|UdEventIcon #fIcon
Cs0 f9 guid 1790C5B4F87C9B1E #txt
Cs0 f9 actionTable 'out=in;
' #txt
Cs0 f9 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>confirm</name>
    </language>
</elementInfo>
' #txt
Cs0 f9 83 339 26 26 -14 15 #rect
Cs0 f9 @|UdEventIcon #fIcon
Cs0 f10 507 163 26 26 0 12 #rect
Cs0 f10 @|UdExitEndIcon #fIcon
Cs0 f13 368 160 32 32 0 16 #rect
Cs0 f13 @|AlternativeIcon #fIcon
Cs0 f15 371 251 26 26 0 12 #rect
Cs0 f15 @|UdProcessEndIcon #fIcon
Cs0 f11 387 339 26 26 0 12 #rect
Cs0 f11 @|UdExitEndIcon #fIcon
Cs0 f12 actionTable 'out=in;
' #txt
Cs0 f12 actionCode 'import javax.faces.context.FacesContext;
import List;

import org.primefaces.context.RequestContext;
import javax.faces.application.FacesMessage;
import ch.ivyteam.ivy.workflow.INote;
import ch.ivyteam.ivy.security.IUser;
import ch.ivyteam.ivy.environment.Ivy;
import ch.ivyteam.ivy.workflow.ICase;

if(in.comment.isBlank()){
 FacesContext.getCurrentInstance().addMessage(":comment",
				new FacesMessage(FacesMessage.SEVERITY_ERROR, "COMMENT IS NOT NUT", "COMMENT IS NOT NUT"));
}else{
	in.confirm = false;
	ICase currentCase = Ivy.wfCase();
	currentCase.createNote(ivy.session, in.comment);
}
' #txt
Cs0 f12 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>None accept</name>
    </language>
</elementInfo>
' #txt
Cs0 f12 184 154 112 44 -34 -8 #rect
Cs0 f12 @|StepIcon #fIcon
Cs0 f14 actionTable 'out=in;
' #txt
Cs0 f14 actionCode 'import ivy.trainingmanage.service.PostService;
import ivy.trainingmanage.service.UserService;
import org.primefaces.context.RequestContext;

PostService postService = new PostService();
in.post = postService.findById(in.idPost);
postService.save(in.post);
in.confirm = true;

' #txt
Cs0 f14 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>accept</name>
    </language>
</elementInfo>
' #txt
Cs0 f14 184 330 112 44 -18 -8 #rect
Cs0 f14 @|StepIcon #fIcon
Cs0 f16 296 176 368 176 #arcP
Cs0 f18 109 176 184 176 #arcP
Cs0 f20 expr in #txt
Cs0 f20 outCond in.comment.isBlank() #txt
Cs0 f20 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>don''t have comment&#13;
</name>
    </language>
</elementInfo>
' #txt
Cs0 f20 384 192 384 251 #arcP
Cs0 f20 0 0.6779661016949152 -61 0 #arcLabel
Cs0 f21 109 352 184 352 #arcP
Cs0 f23 expr in #txt
Cs0 f23 outCond !in.comment.isBlank() #txt
Cs0 f23 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>have comment</name>
    </language>
</elementInfo>
' #txt
Cs0 f23 400 176 507 176 #arcP
Cs0 f23 0 0.4782608695652174 0 -16 #arcLabel
Cs0 f17 296 352 387 352 #arcP
>Proto Cs0 .type training.center.manage.post.Confirm.ConfirmData #txt
>Proto Cs0 .processKind HTML_DIALOG #txt
>Proto Cs0 -8 -8 16 16 16 26 #rect
>Proto Cs0 '' #fIcon
Cs0 f0 mainOut f7 tail #connect
Cs0 f7 head f6 mainIn #connect
Cs0 f6 mainOut f2 tail #connect
Cs0 f2 head f1 mainIn #connect
Cs0 f8 mainOut f18 tail #connect
Cs0 f18 head f12 mainIn #connect
Cs0 f12 mainOut f16 tail #connect
Cs0 f16 head f13 in #connect
Cs0 f13 out f23 tail #connect
Cs0 f23 head f10 mainIn #connect
Cs0 f13 out f20 tail #connect
Cs0 f20 head f15 mainIn #connect
Cs0 f9 mainOut f21 tail #connect
Cs0 f21 head f14 mainIn #connect
Cs0 f14 mainOut f17 tail #connect
Cs0 f17 head f11 mainIn #connect
