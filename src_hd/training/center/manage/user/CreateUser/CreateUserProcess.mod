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
Cs0 @PushWFArc f2 '' #zField
Cs0 @UdEvent f3 '' #zField
Cs0 @UdExitEnd f4 '' #zField
Cs0 @PushWFArc f5 '' #zField
Cs0 @GridStep f29 '' #zField
Cs0 @UdMethod f28 '' #zField
Cs0 @UdProcessEnd f31 '' #zField
Cs0 @PushWFArc f32 '' #zField
Cs0 @PushWFArc f30 '' #zField
>Proto Cs0 Cs0 CreateUserProcess #zField
Cs0 f0 guid 178CF7C88BD96AD9 #txt
Cs0 f0 method start() #txt
Cs0 f0 inParameterDecl '<> param;' #txt
Cs0 f0 outParameterDecl '<> result;' #txt
Cs0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start()</name>
    </language>
</elementInfo>
' #txt
Cs0 f0 83 51 26 26 -16 15 #rect
Cs0 f0 @|UdInitIcon #fIcon
Cs0 f1 211 51 26 26 0 12 #rect
Cs0 f1 @|UdProcessEndIcon #fIcon
Cs0 f2 109 64 211 64 #arcP
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
Cs0 f3 83 147 26 26 -15 15 #rect
Cs0 f3 @|UdEventIcon #fIcon
Cs0 f4 211 147 26 26 0 12 #rect
Cs0 f4 @|UdExitEndIcon #fIcon
Cs0 f5 109 160 211 160 #arcP
Cs0 f29 actionTable 'out=in;
' #txt
Cs0 f29 actionCode '//import util.UploadFileManager;
import ch.ivyteam.ivy.environment.Ivy;
import java.io.InputStream;
import org.primefaces.model.UploadedFile;
import ch.ivyteam.ivy.cm.CoType;
import ch.ivyteam.ivy.cm.IContentObject;
import ch.ivyteam.ivy.cm.IContentObjectValue;

//UploadedFile uploadedFile = in.eventImage.getFile();

//UploadFileManager ufManager = new UploadFileManager();
//out.product.image = ufManager.uploadFile(uploadedFile);

' #txt
Cs0 f29 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>load file</name>
    </language>
</elementInfo>
' #txt
Cs0 f29 208 290 112 44 -21 -8 #rect
Cs0 f29 @|StepIcon #fIcon
Cs0 f28 guid 178CFDBBE53DC104 #txt
Cs0 f28 method handleFileUpload(org.primefaces.event.FileUploadEvent) #txt
Cs0 f28 inParameterDecl '<org.primefaces.event.FileUploadEvent event> param;' #txt
Cs0 f28 outParameterDecl '<> result;' #txt
Cs0 f28 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>handleFileUpload(FileUploadEvent)</name>
    </language>
</elementInfo>
' #txt
Cs0 f28 67 299 26 26 -42 36 #rect
Cs0 f28 @|UdMethodIcon #fIcon
Cs0 f31 427 299 26 26 0 12 #rect
Cs0 f31 @|UdProcessEndIcon #fIcon
Cs0 f32 320 312 427 312 #arcP
Cs0 f30 93 312 208 312 #arcP
>Proto Cs0 .type training.center.manage.user.CreateUser.CreateUserData #txt
>Proto Cs0 .processKind HTML_DIALOG #txt
>Proto Cs0 -8 -8 16 16 16 26 #rect
>Proto Cs0 '' #fIcon
Cs0 f0 mainOut f2 tail #connect
Cs0 f2 head f1 mainIn #connect
Cs0 f3 mainOut f5 tail #connect
Cs0 f5 head f4 mainIn #connect
Cs0 f28 mainOut f30 tail #connect
Cs0 f30 head f29 mainIn #connect
Cs0 f29 mainOut f32 tail #connect
Cs0 f32 head f31 mainIn #connect
