[Ivy]
178FDF87173C2D9B 7.5.0 #module
>Proto >Proto Collection #zClass
Cs0 CreatePostProcess Big #zClass
Cs0 RD #cInfo
Cs0 #process
Cs0 @TextInP .type .type #zField
Cs0 @TextInP .processKind .processKind #zField
Cs0 @TextInP .xml .xml #zField
Cs0 @TextInP .responsibility .responsibility #zField
Cs0 @UdInit f0 '' #zField
Cs0 @UdProcessEnd f1 '' #zField
Cs0 @UdEvent f3 '' #zField
Cs0 @UdExitEnd f4 '' #zField
Cs0 @PushWFArc f5 '' #zField
Cs0 @GridStep f6 '' #zField
Cs0 @PushWFArc f7 '' #zField
Cs0 @PushWFArc f2 '' #zField
Cs0 @UdProcessEnd f31 '' #zField
Cs0 @GridStep f29 '' #zField
Cs0 @UdMethod f28 '' #zField
Cs0 @PushWFArc f30 '' #zField
Cs0 @PushWFArc f32 '' #zField
Cs0 @GridStep f8 '' #zField
Cs0 @UdProcessEnd f9 '' #zField
Cs0 @UdMethod f10 '' #zField
Cs0 @PushWFArc f11 '' #zField
Cs0 @PushWFArc f12 '' #zField
Cs0 @UdExitEnd f13 '' #zField
Cs0 @Alternative f14 '' #zField
Cs0 @GridStep f15 '' #zField
Cs0 @UdEvent f16 '' #zField
Cs0 @UdProcessEnd f17 '' #zField
Cs0 @PushWFArc f18 '' #zField
Cs0 @PushWFArc f20 '' #zField
Cs0 @PushWFArc f21 '' #zField
Cs0 @GridStep f23 '' #zField
Cs0 @PushWFArc f24 '' #zField
Cs0 @PushWFArc f19 '' #zField
>Proto Cs0 Cs0 CreatePostProcess #zField
Cs0 f0 guid 178FDF8717F7923F #txt
Cs0 f0 method start(Long,String) #txt
Cs0 f0 inParameterDecl '<Long idPost,String comment> param;' #txt
Cs0 f0 inParameterMapAction 'out.comment=param.comment;
out.idPost=param.idPost;
' #txt
Cs0 f0 outParameterDecl '<Long idPost,String comment,Boolean confirm> result;' #txt
Cs0 f0 outParameterMapAction 'result.idPost=in.idPost;
result.comment=in.comment;
result.confirm=in.confirm;
' #txt
Cs0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start(Long,String)</name>
    </language>
</elementInfo>
' #txt
Cs0 f0 75 51 26 26 -16 15 #rect
Cs0 f0 @|UdInitIcon #fIcon
Cs0 f1 459 51 26 26 0 12 #rect
Cs0 f1 @|UdProcessEndIcon #fIcon
Cs0 f3 guid 178FDF87193FC404 #txt
Cs0 f3 actionTable 'out=in;
' #txt
Cs0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>close</name>
    </language>
</elementInfo>
' #txt
Cs0 f3 91 515 26 26 -15 15 #rect
Cs0 f3 @|UdEventIcon #fIcon
Cs0 f4 227 515 26 26 0 12 #rect
Cs0 f4 @|UdExitEndIcon #fIcon
Cs0 f5 117 528 227 528 #arcP
Cs0 f6 actionTable 'out=in;
' #txt
Cs0 f6 actionCode 'import ivy.trainingmanage.util.FormatDateTime;
import java.text.SimpleDateFormat;
import ch.ivyteam.ivy.environment.Ivy;
import ch.ivyteam.ivy.workflow.ICase;
import ch.ivyteam.ivy.workflow.INoteable;
import ch.ivyteam.ivy.workflow.INote;

import ivy.trainingmanage.model.Post;
import ivy.trainingmanage.service.PostService;
import ivy.trainingmanage.dao.CategoryDao;
import ivy.trainingmanage.model.Category;

FormatDateTime formatDateTime = new FormatDateTime();
PostService postService = new PostService();
CategoryDao categoryDao = new CategoryDao();
	in.post = new Post();
	if(in.idPost != 0){
		in.post = postService.findById(in.idPost);
	}
	in.category = new Category();
	in.categories = categoryDao.getAll();
	in.indexProcessChain = 0;
	ICase currentCase = Ivy.wfCase();
	List<INote> listNote = currentCase.getNotes();
	if(listNote.size() >0 ){
		in.dateCreateNote = formatDateTime.FormatDateTime(listNote.get(listNote.size()-1).getCreationTimestamp());
	}
' #txt
Cs0 f6 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Setup</name>
    </language>
</elementInfo>
' #txt
Cs0 f6 192 42 112 44 -16 -8 #rect
Cs0 f6 @|StepIcon #fIcon
Cs0 f7 101 64 192 64 #arcP
Cs0 f2 304 64 459 64 #arcP
Cs0 f31 459 147 26 26 0 12 #rect
Cs0 f31 @|UdProcessEndIcon #fIcon
Cs0 f29 actionTable 'out=in;
' #txt
Cs0 f29 actionCode 'import ivy.trainingmanage.service.PostService;
import org.primefaces.context.RequestContext;
import ivy.trainingmanage.dao.FilePostDao;
import ivy.trainingmanage.model.FilePost;
import ivy.trainingmanage.util.UploadFileManager;
import ch.ivyteam.ivy.environment.Ivy;
import java.io.InputStream;
import org.primefaces.model.UploadedFile;
import ch.ivyteam.ivy.cm.CoType;
import ch.ivyteam.ivy.cm.IContentObject;
import ch.ivyteam.ivy.cm.IContentObjectValue;

PostService postService = new PostService();
UploadedFile uploadedFile = in.eventFile.getFile();
UploadFileManager ufManager = new UploadFileManager(); 
in.post.img = ufManager.uploadFile(uploadedFile);
if(in.post.id != null){
	postService.save(in.post);
}
' #txt
Cs0 f29 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>load file</name>
    </language>
</elementInfo>
' #txt
Cs0 f29 192 138 112 44 -21 -8 #rect
Cs0 f29 @|StepIcon #fIcon
Cs0 f28 guid 1790BB22D206C2D1 #txt
Cs0 f28 method handleFileUpload(org.primefaces.event.FileUploadEvent) #txt
Cs0 f28 inParameterDecl '<org.primefaces.event.FileUploadEvent event> param;' #txt
Cs0 f28 inParameterMapAction 'out.eventFile=param.event;
' #txt
Cs0 f28 outParameterDecl '<> result;' #txt
Cs0 f28 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>handleFileUpload(FileUploadEvent)</name>
    </language>
</elementInfo>
' #txt
Cs0 f28 76 148 24 24 -42 36 #rect
Cs0 f28 @|UdMethodIcon #fIcon
Cs0 f30 100 160 192 160 #arcP
Cs0 f32 304 160 459 160 #arcP
Cs0 f8 actionTable 'out=in;
' #txt
Cs0 f8 actionCode 'import ivy.trainingmanage.service.PostService;
import ivy.trainingmanage.dao.FilePostDao;
import ivy.trainingmanage.model.FilePost;
import ivy.trainingmanage.util.UploadFileManager;
import ch.ivyteam.ivy.environment.Ivy;
import java.io.InputStream;
import org.primefaces.model.UploadedFile;
import ch.ivyteam.ivy.cm.CoType;
import ch.ivyteam.ivy.cm.IContentObject;
import ch.ivyteam.ivy.cm.IContentObjectValue;

PostService postService = new PostService();
UploadedFile uploadedFile = in.eventFile.getFile();
UploadFileManager ufManager = new UploadFileManager();
FilePostDao filePostDao = new FilePostDao();

FilePost filePost = new FilePost();
filePost.post = in.post;
filePost.url =  ufManager.uploadFile(uploadedFile);
out.post.filePost.add(filePost);
if(in.post.id != null){
	postService.save(in.post);
}
' #txt
Cs0 f8 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>load file</name>
    </language>
</elementInfo>
' #txt
Cs0 f8 192 258 112 44 -21 -8 #rect
Cs0 f8 @|StepIcon #fIcon
Cs0 f9 459 267 26 26 0 12 #rect
Cs0 f9 @|UdProcessEndIcon #fIcon
Cs0 f10 guid 1790BF786A1EDFC6 #txt
Cs0 f10 method handleFileUpload2(org.primefaces.event.FileUploadEvent) #txt
Cs0 f10 inParameterDecl '<org.primefaces.event.FileUploadEvent event> param;' #txt
Cs0 f10 inParameterMapAction 'out.eventFile=param.event;
' #txt
Cs0 f10 outParameterDecl '<> result;' #txt
Cs0 f10 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>handleFileUpload2(FileUploadEvent)</name>
    </language>
</elementInfo>
' #txt
Cs0 f10 76 268 24 24 -42 36 #rect
Cs0 f10 @|UdMethodIcon #fIcon
Cs0 f11 100 280 192 280 #arcP
Cs0 f12 304 280 459 280 #arcP
Cs0 f13 603 451 26 26 0 12 #rect
Cs0 f13 @|UdExitEndIcon #fIcon
Cs0 f14 344 376 32 32 0 16 #rect
Cs0 f14 @|AlternativeIcon #fIcon
Cs0 f15 actionTable 'out=in;
' #txt
Cs0 f15 actionCode 'import org.hibernate.Hibernate;
import ivy.trainingmanage.dao.UserDao;
import ivy.trainingmanage.service.UserService;
import ivy.trainingmanage.util.MessageUtil;
import javax.faces.context.FacesContext;
import javax.faces.application.FacesMessage;
import ivy.trainingmanage.service.PostService;

PostService postService = new PostService();
in.confirm = postService.checkPostCreate(in.post);
' #txt
Cs0 f15 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Check Data</name>
    </language>
</elementInfo>
' #txt
Cs0 f15 192 370 112 44 -32 -8 #rect
Cs0 f15 @|StepIcon #fIcon
Cs0 f16 guid 1790BFBF6AED0E77 #txt
Cs0 f16 actionTable 'out=in;
' #txt
Cs0 f16 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>create</name>
    </language>
</elementInfo>
' #txt
Cs0 f16 75 379 26 26 -14 15 #rect
Cs0 f16 @|UdEventIcon #fIcon
Cs0 f17 475 467 26 26 0 12 #rect
Cs0 f17 @|UdProcessEndIcon #fIcon
Cs0 f18 304 392 344 392 #arcP
Cs0 f20 expr in #txt
Cs0 f20 outCond 'in.confirm == false' #txt
Cs0 f20 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>validate FALSE</name>
    </language>
</elementInfo>
' #txt
Cs0 f20 360 408 475 480 #arcP
Cs0 f20 1 360 480 #addKink
Cs0 f20 1 0.41739130434782606 0 -12 #arcLabel
Cs0 f21 101 392 192 392 #arcP
Cs0 f23 actionTable 'out=in;
' #txt
Cs0 f23 actionCode 'import ivy.trainingmanage.util.Constant;
import ch.ivyteam.ivy.environment.Ivy;
import ivy.trainingmanage.service.PostService;

PostService postService = new PostService();
in.post.createBy =  Ivy.session().getSessionUserName();
if(in.idPost == 0){
	in.idPost = postService.createNoneAcept(in.post);
}


' #txt
Cs0 f23 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>SavePost</name>
    </language>
</elementInfo>
' #txt
Cs0 f23 432 370 112 44 -26 -8 #rect
Cs0 f23 @|StepIcon #fIcon
Cs0 f24 376 392 432 392 #arcP
Cs0 f19 544 392 616 451 #arcP
Cs0 f19 1 616 392 #addKink
Cs0 f19 0 0.8938436225234334 0 0 #arcLabel
>Proto Cs0 .type training.center.manage.post.CreatePost.CreatePostData #txt
>Proto Cs0 .processKind HTML_DIALOG #txt
>Proto Cs0 -8 -8 16 16 16 26 #rect
>Proto Cs0 '' #fIcon
Cs0 f3 mainOut f5 tail #connect
Cs0 f5 head f4 mainIn #connect
Cs0 f0 mainOut f7 tail #connect
Cs0 f7 head f6 mainIn #connect
Cs0 f6 mainOut f2 tail #connect
Cs0 f2 head f1 mainIn #connect
Cs0 f28 mainOut f30 tail #connect
Cs0 f30 head f29 mainIn #connect
Cs0 f29 mainOut f32 tail #connect
Cs0 f32 head f31 mainIn #connect
Cs0 f10 mainOut f11 tail #connect
Cs0 f11 head f8 mainIn #connect
Cs0 f8 mainOut f12 tail #connect
Cs0 f12 head f9 mainIn #connect
Cs0 f16 mainOut f21 tail #connect
Cs0 f21 head f15 mainIn #connect
Cs0 f15 mainOut f18 tail #connect
Cs0 f18 head f14 in #connect
Cs0 f20 head f17 mainIn #connect
Cs0 f14 out f20 tail #connect
Cs0 f14 out f24 tail #connect
Cs0 f24 head f23 mainIn #connect
Cs0 f23 mainOut f19 tail #connect
Cs0 f19 head f13 mainIn #connect
