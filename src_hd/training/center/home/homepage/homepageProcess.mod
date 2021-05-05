[Ivy]
179176CBCC9287FD 7.5.0 #module
>Proto >Proto Collection #zClass
hs0 homepageProcess Big #zClass
hs0 RD #cInfo
hs0 #process
hs0 @TextInP .type .type #zField
hs0 @TextInP .processKind .processKind #zField
hs0 @TextInP .xml .xml #zField
hs0 @TextInP .responsibility .responsibility #zField
hs0 @UdInit f0 '' #zField
hs0 @UdProcessEnd f1 '' #zField
hs0 @UdEvent f3 '' #zField
hs0 @UdExitEnd f4 '' #zField
hs0 @PushWFArc f5 '' #zField
hs0 @GridStep f6 '' #zField
hs0 @PushWFArc f7 '' #zField
hs0 @PushWFArc f2 '' #zField
hs0 @UdProcessEnd f14 '' #zField
hs0 @GridStep f15 '' #zField
hs0 @UdMethod f13 '' #zField
hs0 @PushWFArc f16 '' #zField
hs0 @PushWFArc f17 '' #zField
>Proto hs0 hs0 homepageProcess #zField
hs0 f0 guid 179176CBCCF87560 #txt
hs0 f0 method start() #txt
hs0 f0 inParameterDecl '<> param;' #txt
hs0 f0 outParameterDecl '<> result;' #txt
hs0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start()</name>
    </language>
</elementInfo>
' #txt
hs0 f0 83 51 26 26 -16 15 #rect
hs0 f0 @|UdInitIcon #fIcon
hs0 f1 427 51 26 26 0 12 #rect
hs0 f1 @|UdProcessEndIcon #fIcon
hs0 f3 guid 179176CBCDE9AA15 #txt
hs0 f3 actionTable 'out=in;
' #txt
hs0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>close</name>
    </language>
</elementInfo>
' #txt
hs0 f3 83 243 26 26 -15 15 #rect
hs0 f3 @|UdEventIcon #fIcon
hs0 f4 211 243 26 26 0 12 #rect
hs0 f4 @|UdExitEndIcon #fIcon
hs0 f5 109 256 211 256 #arcP
hs0 f6 actionTable 'out=in;
' #txt
hs0 f6 actionCode 'import ivy.trainingmanage.service.PostService;
import ivy.trainingmanage.service.CategoryService;

PostService postService = new PostService();
CategoryService categoryService = new CategoryService();
in.categories = categoryService.getAll();
in.listPost = postService.getAll();
' #txt
hs0 f6 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>get Data</name>
    </language>
</elementInfo>
' #txt
hs0 f6 216 42 112 44 -23 -8 #rect
hs0 f6 @|StepIcon #fIcon
hs0 f7 109 64 216 64 #arcP
hs0 f2 328 64 427 64 #arcP
hs0 f14 427 155 26 26 0 12 #rect
hs0 f14 @|UdProcessEndIcon #fIcon
hs0 f15 actionTable 'out=in;
' #txt
hs0 f15 actionCode 'import ivy.trainingmanage.service.PostService;

PostService postService = new ivy.trainingmanage.service.PostService();
in.listPost = postService.getByIdCategory(in.category.id);' #txt
hs0 f15 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>get Data Category</name>
    </language>
</elementInfo>
' #txt
hs0 f15 216 146 112 44 -49 -8 #rect
hs0 f15 @|StepIcon #fIcon
hs0 f13 guid 1791B895930C6A41 #txt
hs0 f13 method getDataCategory(javax.faces.event.ActionEvent) #txt
hs0 f13 inParameterDecl '<javax.faces.event.ActionEvent getIdCategory> param;' #txt
hs0 f13 inActionCode 'import ch.ivyteam.ivy.environment.Ivy;
Long selectedCategoryId = 
param.getIdCategory.getComponent().getAttributes().get("idCategory") as Long;
out.category.id = selectedCategoryId;
' #txt
hs0 f13 outParameterDecl '<> result;' #txt
hs0 f13 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>getDataCategory</name>
    </language>
</elementInfo>
' #txt
hs0 f13 83 155 26 26 -25 15 #rect
hs0 f13 @|UdMethodIcon #fIcon
hs0 f16 109 168 216 168 #arcP
hs0 f16 0 0.7072745572953059 0 0 #arcLabel
hs0 f17 328 168 427 168 #arcP
>Proto hs0 .type training.center.home.homepage.homepageData #txt
>Proto hs0 .processKind HTML_DIALOG #txt
>Proto hs0 -8 -8 16 16 16 26 #rect
>Proto hs0 '' #fIcon
hs0 f3 mainOut f5 tail #connect
hs0 f5 head f4 mainIn #connect
hs0 f0 mainOut f7 tail #connect
hs0 f7 head f6 mainIn #connect
hs0 f6 mainOut f2 tail #connect
hs0 f2 head f1 mainIn #connect
hs0 f13 mainOut f16 tail #connect
hs0 f16 head f15 mainIn #connect
hs0 f15 mainOut f17 tail #connect
hs0 f17 head f14 mainIn #connect
