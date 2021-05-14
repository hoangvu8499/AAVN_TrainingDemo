[Ivy]
1790D77BDC4A43DE 7.5.0 #module
>Proto >Proto Collection #zClass
Es0 EditPostProcess Big #zClass
Es0 RD #cInfo
Es0 #process
Es0 @TextInP .type .type #zField
Es0 @TextInP .processKind .processKind #zField
Es0 @TextInP .xml .xml #zField
Es0 @TextInP .responsibility .responsibility #zField
Es0 @UdInit f0 '' #zField
Es0 @UdProcessEnd f1 '' #zField
Es0 @UdEvent f3 '' #zField
Es0 @UdExitEnd f4 '' #zField
Es0 @PushWFArc f5 '' #zField
Es0 @GridStep f6 '' #zField
Es0 @PushWFArc f7 '' #zField
Es0 @PushWFArc f2 '' #zField
Es0 @UdProcessEnd f31 '' #zField
Es0 @UdProcessEnd f9 '' #zField
Es0 @UdMethod f10 '' #zField
Es0 @GridStep f29 '' #zField
Es0 @GridStep f8 '' #zField
Es0 @UdMethod f28 '' #zField
Es0 @PushWFArc f32 '' #zField
Es0 @PushWFArc f12 '' #zField
Es0 @PushWFArc f30 '' #zField
Es0 @PushWFArc f11 '' #zField
Es0 @UdEvent f16 '' #zField
Es0 @UdExitEnd f13 '' #zField
Es0 @UdProcessEnd f17 '' #zField
Es0 @GridStep f15 '' #zField
Es0 @Alternative f14 '' #zField
Es0 @GridStep f23 '' #zField
Es0 @PushWFArc f21 '' #zField
Es0 @PushWFArc f20 '' #zField
Es0 @PushWFArc f19 '' #zField
Es0 @PushWFArc f24 '' #zField
Es0 @PushWFArc f18 '' #zField
>Proto Es0 Es0 EditPostProcess #zField
Es0 f0 guid 1790D77BDD51355A #txt
Es0 f0 method EditPost(Boolean,String,Long) #txt
Es0 f0 inParameterDecl '<Boolean confirm,String comment,Long id> param;' #txt
Es0 f0 inParameterMapAction 'out.comment=param.comment;
out.id=param.id;
' #txt
Es0 f0 outParameterDecl '<Long idPost,Boolean confirm,String comment> result;' #txt
Es0 f0 outParameterMapAction 'result.idPost=in.id;
result.comment=in.comment;
' #txt
Es0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>EditPost(Boolean,String,Long)</name>
    </language>
</elementInfo>
' #txt
Es0 f0 59 51 26 26 -60 23 #rect
Es0 f0 @|UdInitIcon #fIcon
Es0 f1 467 51 26 26 0 12 #rect
Es0 f1 @|UdProcessEndIcon #fIcon
Es0 f3 guid 1790D77BDE24F4D9 #txt
Es0 f3 actionTable 'out=in;
' #txt
Es0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>close</name>
    </language>
</elementInfo>
' #txt
Es0 f3 59 595 26 26 -15 15 #rect
Es0 f3 @|UdEventIcon #fIcon
Es0 f4 243 595 26 26 0 12 #rect
Es0 f4 @|UdExitEndIcon #fIcon
Es0 f5 85 608 243 608 #arcP
Es0 f6 actionTable 'out=in;
' #txt
Es0 f6 actionCode 'import ivy.trainingmanage.model.Category;
import ivy.trainingmanage.util.FormatDateTime;
import ch.ivyteam.ivy.workflow.INote;
import ch.ivyteam.ivy.environment.Ivy;
import ch.ivyteam.ivy.workflow.ICase;
import ivy.trainingmanage.service.CategoryService;
import ivy.trainingmanage.service.PostService;

FormatDateTime formatDateTime = new FormatDateTime();
CategoryService categoryService = new CategoryService();
PostService postService = new PostService();
if(in.post.name.isBlank()){
	in.post = postService.findById(in.id);
}

in.categories = categoryService.getAll();
Long idCategory = in.post.category.id;
in.post.category = categoryService.findById(idCategory);
categoryService.resetCategory(in.categories, in.post.category);
	ICase currentCase = Ivy.wfCase();
	List<INote> listNote = currentCase.getNotes();
	if(listNote.size() >0 ){
		in.dateCreateNote = formatDateTime.FormatDateTime(listNote.get(listNote.size()-1).getCreationTimestamp());
	}
' #txt
Es0 f6 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>get data</name>
    </language>
</elementInfo>
' #txt
Es0 f6 216 42 112 44 -22 -8 #rect
Es0 f6 @|StepIcon #fIcon
Es0 f7 85 64 216 64 #arcP
Es0 f2 328 64 467 64 #arcP
Es0 f31 467 155 26 26 0 12 #rect
Es0 f31 @|UdProcessEndIcon #fIcon
Es0 f9 467 275 26 26 0 12 #rect
Es0 f9 @|UdProcessEndIcon #fIcon
Es0 f10 guid 179111900B26D63C #txt
Es0 f10 method handleFileUpload2(org.primefaces.event.FileUploadEvent) #txt
Es0 f10 inParameterDecl '<org.primefaces.event.FileUploadEvent event> param;' #txt
Es0 f10 inParameterMapAction 'out.eventFile=param.event;
' #txt
Es0 f10 outParameterDecl '<> result;' #txt
Es0 f10 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>handleFileUpload2(FileUploadEvent)</name>
    </language>
</elementInfo>
' #txt
Es0 f10 60 276 24 24 -42 36 #rect
Es0 f10 @|UdMethodIcon #fIcon
Es0 f29 actionTable 'out=in;
' #txt
Es0 f29 actionCode 'import ivy.trainingmanage.dao.FilePostDao;
import ivy.trainingmanage.model.FilePost;
import ivy.trainingmanage.util.UploadFileManager;
import ch.ivyteam.ivy.environment.Ivy;
import java.io.InputStream;
import org.primefaces.model.UploadedFile;
import ch.ivyteam.ivy.cm.CoType;
import ch.ivyteam.ivy.cm.IContentObject;
import ch.ivyteam.ivy.cm.IContentObjectValue;

UploadedFile uploadedFile = in.eventFile.getFile();
UploadFileManager ufManager = new UploadFileManager();
in.post.img = ufManager.uploadFile(uploadedFile);

' #txt
Es0 f29 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>load file</name>
    </language>
</elementInfo>
' #txt
Es0 f29 216 146 112 44 -21 -8 #rect
Es0 f29 @|StepIcon #fIcon
Es0 f8 actionTable 'out=in;
' #txt
Es0 f8 actionCode 'import ivy.trainingmanage.dao.FilePostDao;
import ivy.trainingmanage.model.FilePost;
import ivy.trainingmanage.util.UploadFileManager;
import ch.ivyteam.ivy.environment.Ivy;
import java.io.InputStream;
import org.primefaces.model.UploadedFile;
import ch.ivyteam.ivy.cm.CoType;
import ch.ivyteam.ivy.cm.IContentObject;
import ch.ivyteam.ivy.cm.IContentObjectValue;

UploadedFile uploadedFile = in.eventFile.getFile();
UploadFileManager ufManager = new UploadFileManager();
FilePostDao filePostDao = new FilePostDao();

FilePost filePost = new FilePost();
filePost.post = in.post;
filePost.url =  ufManager.uploadFile(uploadedFile);

in.post.filePost.add(filePost);
' #txt
Es0 f8 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>load file</name>
    </language>
</elementInfo>
' #txt
Es0 f8 216 266 112 44 -21 -8 #rect
Es0 f8 @|StepIcon #fIcon
Es0 f28 guid 179111900B2A730D #txt
Es0 f28 method handleFileUpload(org.primefaces.event.FileUploadEvent) #txt
Es0 f28 inParameterDecl '<org.primefaces.event.FileUploadEvent event> param;' #txt
Es0 f28 inParameterMapAction 'out.eventFile=param.event;
' #txt
Es0 f28 outParameterDecl '<> result;' #txt
Es0 f28 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>handleFileUpload(FileUploadEvent)</name>
    </language>
</elementInfo>
' #txt
Es0 f28 60 156 24 24 -42 36 #rect
Es0 f28 @|UdMethodIcon #fIcon
Es0 f32 328 168 467 168 #arcP
Es0 f12 328 288 467 288 #arcP
Es0 f30 84 168 216 168 #arcP
Es0 f11 84 288 216 288 #arcP
Es0 f16 guid 179172D5D518EE50 #txt
Es0 f16 actionTable 'out=in;
' #txt
Es0 f16 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>create</name>
    </language>
</elementInfo>
' #txt
Es0 f16 59 427 26 26 -14 15 #rect
Es0 f16 @|UdEventIcon #fIcon
Es0 f13 603 427 26 26 0 12 #rect
Es0 f13 @|UdExitEndIcon #fIcon
Es0 f17 443 515 26 26 0 12 #rect
Es0 f17 @|UdProcessEndIcon #fIcon
Es0 f15 actionTable 'out=in;
' #txt
Es0 f15 actionCode 'import org.hibernate.Hibernate;
import ivy.trainingmanage.dao.UserDao;
import ivy.trainingmanage.service.UserService;
import ivy.trainingmanage.util.MessageUtil;
import javax.faces.context.FacesContext;
import javax.faces.application.FacesMessage;
import ivy.trainingmanage.service.PostService;

PostService postService = new PostService();
in.confirm = postService.checkPostCreate(in.post);
' #txt
Es0 f15 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Check Data</name>
    </language>
</elementInfo>
' #txt
Es0 f15 160 418 112 44 -32 -8 #rect
Es0 f15 @|StepIcon #fIcon
Es0 f14 312 424 32 32 0 16 #rect
Es0 f14 @|AlternativeIcon #fIcon
Es0 f23 actionTable 'out=in;
' #txt
Es0 f23 actionCode 'import ch.ivyteam.ivy.environment.Ivy;
import ivy.trainingmanage.service.PostService;

PostService postService = new PostService();
in.post.updateBy =  Ivy.session().getSessionUserName();
postService.save(in.post);

' #txt
Es0 f23 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>SavePost</name>
    </language>
</elementInfo>
' #txt
Es0 f23 400 418 112 44 -26 -8 #rect
Es0 f23 @|StepIcon #fIcon
Es0 f21 85 440 160 440 #arcP
Es0 f20 expr in #txt
Es0 f20 outCond 'in.confirm == false' #txt
Es0 f20 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>validate FALSE</name>
    </language>
</elementInfo>
' #txt
Es0 f20 328 456 443 528 #arcP
Es0 f20 1 328 528 #addKink
Es0 f20 1 0.41739130434782606 0 -12 #arcLabel
Es0 f19 512 440 603 440 #arcP
Es0 f24 344 440 400 440 #arcP
Es0 f18 272 440 312 440 #arcP
>Proto Es0 .type training.center.manage.post.EditPost.EditPostData #txt
>Proto Es0 .processKind HTML_DIALOG #txt
>Proto Es0 -8 -8 16 16 16 26 #rect
>Proto Es0 '' #fIcon
Es0 f3 mainOut f5 tail #connect
Es0 f5 head f4 mainIn #connect
Es0 f0 mainOut f7 tail #connect
Es0 f7 head f6 mainIn #connect
Es0 f6 mainOut f2 tail #connect
Es0 f2 head f1 mainIn #connect
Es0 f28 mainOut f30 tail #connect
Es0 f30 head f29 mainIn #connect
Es0 f29 mainOut f32 tail #connect
Es0 f32 head f31 mainIn #connect
Es0 f10 mainOut f11 tail #connect
Es0 f11 head f8 mainIn #connect
Es0 f8 mainOut f12 tail #connect
Es0 f12 head f9 mainIn #connect
Es0 f16 mainOut f21 tail #connect
Es0 f21 head f15 mainIn #connect
Es0 f15 mainOut f18 tail #connect
Es0 f18 head f14 in #connect
Es0 f20 head f17 mainIn #connect
Es0 f14 out f20 tail #connect
Es0 f14 out f24 tail #connect
Es0 f24 head f23 mainIn #connect
Es0 f23 mainOut f19 tail #connect
Es0 f19 head f13 mainIn #connect
