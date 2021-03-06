[Ivy]
178B089A1394F3C8 7.5.0 #module
>Proto >Proto Collection #zClass
Ss0 CategoryProcess Big #zClass
Ss0 RD #cInfo
Ss0 #process
Ss0 @TextInP .type .type #zField
Ss0 @TextInP .processKind .processKind #zField
Ss0 @TextInP .xml .xml #zField
Ss0 @TextInP .responsibility .responsibility #zField
Ss0 @UdInit f0 '' #zField
Ss0 @UdProcessEnd f1 '' #zField
Ss0 @UdEvent f3 '' #zField
Ss0 @UdExitEnd f4 '' #zField
Ss0 @PushWFArc f5 '' #zField
Ss0 @GridStep f6 '' #zField
Ss0 @PushWFArc f7 '' #zField
Ss0 @PushWFArc f2 '' #zField
Ss0 @UdProcessEnd f9 '' #zField
Ss0 @GridStep f10 '' #zField
Ss0 @PushWFArc f12 '' #zField
Ss0 @GridStep f14 '' #zField
Ss0 @UdProcessEnd f15 '' #zField
Ss0 @UdProcessEnd f17 '' #zField
Ss0 @PushWFArc f19 '' #zField
Ss0 @GridStep f21 '' #zField
Ss0 @PushWFArc f20 '' #zField
Ss0 @UdMethod f13 '' #zField
Ss0 @PushWFArc f18 '' #zField
Ss0 @UdMethod f23 '' #zField
Ss0 @PushWFArc f16 '' #zField
Ss0 @UdMethod f22 '' #zField
Ss0 @PushWFArc f8 '' #zField
>Proto Ss0 Ss0 CategoryProcess #zField
Ss0 f0 guid 178B089A13F5B504 #txt
Ss0 f0 method start() #txt
Ss0 f0 inParameterDecl '<> param;' #txt
Ss0 f0 outParameterDecl '<> result;' #txt
Ss0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start()</name>
    </language>
</elementInfo>
' #txt
Ss0 f0 83 51 26 26 -16 15 #rect
Ss0 f0 @|UdInitIcon #fIcon
Ss0 f1 339 51 26 26 0 12 #rect
Ss0 f1 @|UdProcessEndIcon #fIcon
Ss0 f3 guid 178B089A14D83901 #txt
Ss0 f3 actionTable 'out=in;
' #txt
Ss0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>close</name>
    </language>
</elementInfo>
' #txt
Ss0 f3 451 51 26 26 15 4 #rect
Ss0 f3 @|UdEventIcon #fIcon
Ss0 f4 451 275 26 26 0 12 #rect
Ss0 f4 @|UdExitEndIcon #fIcon
Ss0 f5 464 77 464 275 #arcP
Ss0 f6 actionTable 'out=in;
' #txt
Ss0 f6 actionCode 'import ivy.trainingmanage.model.Category;
import ivy.trainingmanage.dao.CategoryDao;

CategoryDao categoryDao = new CategoryDao();
in.categories = categoryDao.getAll();
in.category = new Category();' #txt
Ss0 f6 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Setup</name>
    </language>
</elementInfo>
' #txt
Ss0 f6 168 42 112 44 -16 -8 #rect
Ss0 f6 @|StepIcon #fIcon
Ss0 f7 109 64 168 64 #arcP
Ss0 f2 280 64 339 64 #arcP
Ss0 f9 339 147 26 26 0 12 #rect
Ss0 f9 @|UdProcessEndIcon #fIcon
Ss0 f10 actionTable 'out=in;
' #txt
Ss0 f10 actionCode 'import ivy.trainingmanage.model.Category;
import ivy.trainingmanage.service.CategoryService;
import ivy.trainingmanage.dao.CategoryDao;

CategoryDao categoryDao = new CategoryDao();
CategoryService categoryService = new CategoryService();

categoryDao.save(in.category);
in.categories = categoryDao.getAll();
in.category = new Category();' #txt
Ss0 f10 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>save</name>
    </language>
</elementInfo>
' #txt
Ss0 f10 168 138 112 44 -13 -8 #rect
Ss0 f10 @|StepIcon #fIcon
Ss0 f12 280 160 339 160 #arcP
Ss0 f14 actionTable 'out=in;
' #txt
Ss0 f14 actionCode 'import ivy.trainingmanage.service.CategoryService;
import ivy.trainingmanage.dao.CategoryDao;
import ivy.trainingmanage.model.Category;

CategoryDao categoryDao = new CategoryDao();
CategoryService categoryService = new CategoryService();

categoryDao.save(in.category);
in.categories = categoryDao.getAll();
in.category = new Category();' #txt
Ss0 f14 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>update</name>
    </language>
</elementInfo>
' #txt
Ss0 f14 168 234 112 44 -19 -8 #rect
Ss0 f14 @|StepIcon #fIcon
Ss0 f15 339 243 26 26 0 12 #rect
Ss0 f15 @|UdProcessEndIcon #fIcon
Ss0 f17 339 339 26 26 0 12 #rect
Ss0 f17 @|UdProcessEndIcon #fIcon
Ss0 f19 280 256 339 256 #arcP
Ss0 f21 actionTable 'out=in;
' #txt
Ss0 f21 actionCode 'import ivy.trainingmanage.service.CategoryService;
import ivy.trainingmanage.dao.CategoryDao;
import ivy.trainingmanage.model.Category;

CategoryDao categoryDao = new CategoryDao();
CategoryService categoryService = new CategoryService();
in.category.deleteAt = new Date();
categoryDao.save(in.category);
in.categories = categoryDao.getAll();
in.category = new Category();' #txt
Ss0 f21 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>delete</name>
    </language>
</elementInfo>
' #txt
Ss0 f21 168 330 112 44 -17 -8 #rect
Ss0 f21 @|StepIcon #fIcon
Ss0 f20 280 352 339 352 #arcP
Ss0 f13 guid 178CAA40D48F6CC0 #txt
Ss0 f13 method update(ivy.trainingmanage.model.Category) #txt
Ss0 f13 inParameterDecl '<ivy.trainingmanage.model.Category category> param;' #txt
Ss0 f13 inParameterMapAction 'out.category=param.category;
' #txt
Ss0 f13 outParameterDecl '<> result;' #txt
Ss0 f13 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>update(Category)</name>
    </language>
</elementInfo>
' #txt
Ss0 f13 83 243 26 26 -25 15 #rect
Ss0 f13 @|UdMethodIcon #fIcon
Ss0 f18 109 256 168 256 #arcP
Ss0 f23 guid 178CE9DFE976F878 #txt
Ss0 f23 method delete(ivy.trainingmanage.model.Category) #txt
Ss0 f23 inParameterDecl '<ivy.trainingmanage.model.Category category> param;' #txt
Ss0 f23 inParameterMapAction 'out.category=param.category;
' #txt
Ss0 f23 outParameterDecl '<> result;' #txt
Ss0 f23 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>delete(Category)</name>
    </language>
</elementInfo>
' #txt
Ss0 f23 83 339 26 26 -25 15 #rect
Ss0 f23 @|UdMethodIcon #fIcon
Ss0 f16 109 352 168 352 #arcP
Ss0 f22 guid 178CEAB136384D40 #txt
Ss0 f22 method save(ivy.trainingmanage.model.Category) #txt
Ss0 f22 inParameterDecl '<ivy.trainingmanage.model.Category category> param;' #txt
Ss0 f22 inParameterMapAction 'out.category=param.category;
' #txt
Ss0 f22 outParameterDecl '<> result;' #txt
Ss0 f22 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>save(Category)</name>
    </language>
</elementInfo>
' #txt
Ss0 f22 83 147 26 26 -25 15 #rect
Ss0 f22 @|UdMethodIcon #fIcon
Ss0 f8 109 160 168 160 #arcP
>Proto Ss0 .type training.center.manage.category.Category.CategoryData #txt
>Proto Ss0 .processKind HTML_DIALOG #txt
>Proto Ss0 -8 -8 16 16 16 26 #rect
>Proto Ss0 '' #fIcon
Ss0 f3 mainOut f5 tail #connect
Ss0 f5 head f4 mainIn #connect
Ss0 f0 mainOut f7 tail #connect
Ss0 f7 head f6 mainIn #connect
Ss0 f6 mainOut f2 tail #connect
Ss0 f2 head f1 mainIn #connect
Ss0 f10 mainOut f12 tail #connect
Ss0 f12 head f9 mainIn #connect
Ss0 f14 mainOut f19 tail #connect
Ss0 f19 head f15 mainIn #connect
Ss0 f21 mainOut f20 tail #connect
Ss0 f20 head f17 mainIn #connect
Ss0 f13 mainOut f18 tail #connect
Ss0 f18 head f14 mainIn #connect
Ss0 f23 mainOut f16 tail #connect
Ss0 f16 head f21 mainIn #connect
Ss0 f22 mainOut f8 tail #connect
Ss0 f8 head f10 mainIn #connect
