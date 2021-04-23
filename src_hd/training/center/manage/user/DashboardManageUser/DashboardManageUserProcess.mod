[Ivy]
178CF7F413AEAF5D 7.5.0 #module
>Proto >Proto Collection #zClass
Ds0 DashboardManageUserProcess Big #zClass
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
Ds0 @UdMethod f8 '' #zField
Ds0 @GridStep f9 '' #zField
Ds0 @UdProcessEnd f10 '' #zField
Ds0 @PushWFArc f11 '' #zField
Ds0 @PushWFArc f12 '' #zField
>Proto Ds0 Ds0 DashboardManageUserProcess #zField
Ds0 f0 guid 178CF7F414668121 #txt
Ds0 f0 method start() #txt
Ds0 f0 inParameterDecl '<> param;' #txt
Ds0 f0 outParameterDecl '<> result;' #txt
Ds0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start()</name>
    </language>
</elementInfo>
' #txt
Ds0 f0 83 51 26 26 -16 15 #rect
Ds0 f0 @|UdInitIcon #fIcon
Ds0 f1 379 51 26 26 0 12 #rect
Ds0 f1 @|UdProcessEndIcon #fIcon
Ds0 f3 guid 178CF7F41501090F #txt
Ds0 f3 actionTable 'out=in;
' #txt
Ds0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>close</name>
    </language>
</elementInfo>
' #txt
Ds0 f3 83 291 26 26 -15 15 #rect
Ds0 f3 @|UdEventIcon #fIcon
Ds0 f4 211 291 26 26 0 12 #rect
Ds0 f4 @|UdExitEndIcon #fIcon
Ds0 f5 109 304 211 304 #arcP
Ds0 f6 actionTable 'out=in;
' #txt
Ds0 f6 actionCode 'import ivy.trainingmanage.dao.UserDao;
import ivy.trainingmanage.dao.RoleDao;

RoleDao roleDao = new RoleDao();
UserDao userDao = new UserDao();

in.users = userDao.getAll();' #txt
Ds0 f6 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>setUp</name>
    </language>
</elementInfo>
' #txt
Ds0 f6 168 42 112 44 -16 -8 #rect
Ds0 f6 @|StepIcon #fIcon
Ds0 f7 109 64 168 64 #arcP
Ds0 f2 280 64 379 64 #arcP
Ds0 f8 guid 178FCAD90679AEDF #txt
Ds0 f8 method delete(ivy.trainingmanage.model.User) #txt
Ds0 f8 inParameterDecl '<ivy.trainingmanage.model.User user> param;' #txt
Ds0 f8 inParameterMapAction 'out.user=param.user;
' #txt
Ds0 f8 outParameterDecl '<> result;' #txt
Ds0 f8 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>delete</name>
    </language>
</elementInfo>
' #txt
Ds0 f8 83 179 26 26 -15 17 #rect
Ds0 f8 @|UdMethodIcon #fIcon
Ds0 f9 actionTable 'out=in;
' #txt
Ds0 f9 actionCode 'import ivy.trainingmanage.service.UserService;
import ivy.trainingmanage.dao.UserDao;
import ivy.trainingmanage.dao.RoleDao;

UserService userService = new UserService();
RoleDao roleDao = new RoleDao();
UserDao userDao = new UserDao();

userService.deleteUser(in.user);
in.users = userDao.getAll();' #txt
Ds0 f9 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>DeleteUser</name>
    </language>
</elementInfo>
' #txt
Ds0 f9 168 170 112 44 -31 -8 #rect
Ds0 f9 @|StepIcon #fIcon
Ds0 f10 371 179 26 26 0 12 #rect
Ds0 f10 @|UdProcessEndIcon #fIcon
Ds0 f11 109 192 168 192 #arcP
Ds0 f12 280 192 371 192 #arcP
>Proto Ds0 .type training.center.manage.user.DashboardManageUser.DashboardManageUserData #txt
>Proto Ds0 .processKind HTML_DIALOG #txt
>Proto Ds0 -8 -8 16 16 16 26 #rect
>Proto Ds0 '' #fIcon
Ds0 f3 mainOut f5 tail #connect
Ds0 f5 head f4 mainIn #connect
Ds0 f0 mainOut f7 tail #connect
Ds0 f7 head f6 mainIn #connect
Ds0 f6 mainOut f2 tail #connect
Ds0 f2 head f1 mainIn #connect
Ds0 f8 mainOut f11 tail #connect
Ds0 f11 head f9 mainIn #connect
Ds0 f9 mainOut f12 tail #connect
Ds0 f12 head f10 mainIn #connect
