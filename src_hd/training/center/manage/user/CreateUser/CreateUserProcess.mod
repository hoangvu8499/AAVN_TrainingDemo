[Ivy]
178CF7C88AE69FF2 7.5.0 #module
>Proto >Proto Collection #zClass
Cs0 CreateUserProcess Big #zClass
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
Cs0 @GridStep f29 '' #zField
Cs0 @UdMethod f28 '' #zField
Cs0 @UdProcessEnd f31 '' #zField
Cs0 @PushWFArc f32 '' #zField
Cs0 @PushWFArc f30 '' #zField
Cs0 @UdProcessEnd f10 '' #zField
Cs0 @GridStep f8 '' #zField
Cs0 @UdExitEnd f6 '' #zField
Cs0 @Alternative f7 '' #zField
Cs0 @UdEvent f9 '' #zField
Cs0 @PushWFArc f11 '' #zField
Cs0 @PushWFArc f16 '' #zField
Cs0 @PushWFArc f12 '' #zField
Cs0 @PushWFArc f13 '' #zField
Cs0 @GridStep f14 '' #zField
Cs0 @PushWFArc f15 '' #zField
Cs0 @PushWFArc f2 '' #zField
>Proto Cs0 Cs0 CreateUserProcess #zField
Cs0 f0 guid 178CF7C88BD96AD9 #txt
Cs0 f0 method start(ivy.trainingmanage.model.User) #txt
Cs0 f0 inParameterDecl '<ivy.trainingmanage.model.User user> param;' #txt
Cs0 f0 inParameterMapAction 'out.user=param.user;
' #txt
Cs0 f0 outParameterDecl '<ivy.trainingmanage.model.User user> result;' #txt
Cs0 f0 outParameterMapAction 'result.user=in.user;
' #txt
Cs0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start(User)</name>
    </language>
</elementInfo>
' #txt
Cs0 f0 67 51 26 26 -16 15 #rect
Cs0 f0 @|UdInitIcon #fIcon
Cs0 f1 419 51 26 26 0 12 #rect
Cs0 f1 @|UdProcessEndIcon #fIcon
Cs0 f3 guid 0178CF7C88CBCB59 #txt
Cs0 f3 actionTable 'out=in;
' #txt
Cs0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>close</name>
    </language>
</elementInfo>
' #txt
Cs0 f3 67 147 26 26 -15 15 #rect
Cs0 f3 @|UdEventIcon #fIcon
Cs0 f4 211 147 26 26 0 12 #rect
Cs0 f4 @|UdExitEndIcon #fIcon
Cs0 f5 93 160 211 160 #arcP
Cs0 f29 actionTable 'out=in;
' #txt
Cs0 f29 actionCode 'import ivy.trainingmanage.dao.FilePostDao;
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
filePost.url =  ufManager.uploadFile(uploadedFile);
//filePostDao.save(filePost);

out.user.filePost = filePost;

' #txt
Cs0 f29 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>load file</name>
    </language>
</elementInfo>
' #txt
Cs0 f29 176 266 112 44 -21 -8 #rect
Cs0 f29 @|StepIcon #fIcon
Cs0 f28 guid 178CFDBBE53DC104 #txt
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
Cs0 f28 68 276 24 24 -42 36 #rect
Cs0 f28 @|UdMethodIcon #fIcon
Cs0 f31 419 275 26 26 0 12 #rect
Cs0 f31 @|UdProcessEndIcon #fIcon
Cs0 f32 288 288 419 288 #arcP
Cs0 f30 92 288 176 288 #arcP
Cs0 f10 355 483 26 26 0 12 #rect
Cs0 f10 @|UdProcessEndIcon #fIcon
Cs0 f8 actionTable 'out=in;
' #txt
Cs0 f8 actionCode 'import ivy.trainingmanage.service.UserService;
import ivy.trainingmanage.util.MessageUtil;
import javax.faces.context.FacesContext;
import javax.faces.application.FacesMessage;

UserService userService = new UserService();

in.checking = userService.checkUserCreate(in.user);

' #txt
Cs0 f8 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Check Data</name>
    </language>
</elementInfo>
' #txt
Cs0 f8 176 394 112 44 -32 -8 #rect
Cs0 f8 @|StepIcon #fIcon
Cs0 f6 443 403 26 26 0 12 #rect
Cs0 f6 @|UdExitEndIcon #fIcon
Cs0 f7 352 400 32 32 0 16 #rect
Cs0 f7 @|AlternativeIcon #fIcon
Cs0 f9 guid 178D34F6B8EEF38F #txt
Cs0 f9 actionTable 'out=in;
' #txt
Cs0 f9 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>create</name>
    </language>
</elementInfo>
' #txt
Cs0 f9 67 403 26 26 -14 15 #rect
Cs0 f9 @|UdEventIcon #fIcon
Cs0 f11 288 416 352 416 #arcP
Cs0 f16 expr in #txt
Cs0 f16 outCond 'in.checking == false' #txt
Cs0 f16 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>validate FALSE</name>
    </language>
</elementInfo>
' #txt
Cs0 f16 368 432 368 483 #arcP
Cs0 f16 0 0.44776119402985076 -53 -1 #arcLabel
Cs0 f12 93 416 176 416 #arcP
Cs0 f13 expr in #txt
Cs0 f13 outCond 'in.checking == true' #txt
Cs0 f13 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>validate TRUE</name>
    </language>
</elementInfo>
' #txt
Cs0 f13 384 416 443 416 #arcP
Cs0 f13 0 0.5151515151515151 0 -19 #arcLabel
Cs0 f14 actionTable 'out=in;
' #txt
Cs0 f14 actionCode 'import ivy.trainingmanage.model.User;

if(in.user.fullName.isEmpty()){
	in.user = new User();
	in.checking = false;
}' #txt
Cs0 f14 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>setup</name>
    </language>
</elementInfo>
' #txt
Cs0 f14 176 42 112 44 -15 -8 #rect
Cs0 f14 @|StepIcon #fIcon
Cs0 f15 93 64 176 64 #arcP
Cs0 f2 288 64 419 64 #arcP
>Proto Cs0 .type training.center.manage.user.CreateUser.CreateUserData #txt
>Proto Cs0 .processKind HTML_DIALOG #txt
>Proto Cs0 -8 -8 16 16 16 26 #rect
>Proto Cs0 '' #fIcon
Cs0 f3 mainOut f5 tail #connect
Cs0 f5 head f4 mainIn #connect
Cs0 f28 mainOut f30 tail #connect
Cs0 f30 head f29 mainIn #connect
Cs0 f29 mainOut f32 tail #connect
Cs0 f32 head f31 mainIn #connect
Cs0 f9 mainOut f12 tail #connect
Cs0 f12 head f8 mainIn #connect
Cs0 f8 mainOut f11 tail #connect
Cs0 f11 head f7 in #connect
Cs0 f7 out f13 tail #connect
Cs0 f13 head f6 mainIn #connect
Cs0 f7 out f16 tail #connect
Cs0 f16 head f10 mainIn #connect
Cs0 f0 mainOut f15 tail #connect
Cs0 f15 head f14 mainIn #connect
Cs0 f14 mainOut f2 tail #connect
Cs0 f2 head f1 mainIn #connect
