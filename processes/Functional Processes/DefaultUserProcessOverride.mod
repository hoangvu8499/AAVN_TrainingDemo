[Ivy]
1795FBC22B3F8863 7.5.0 #module
>Proto >Proto Collection #zClass
Pt0 DefaultUserProcessOverride Big #zClass
Pt0 B #cInfo
Pt0 #process
Pt0 @TextInP .type .type #zField
Pt0 @TextInP .processKind .processKind #zField
Pt0 @TextInP .xml .xml #zField
Pt0 @TextInP .responsibility .responsibility #zField
Pt0 @StartSub f0 '' #zField
Pt0 @EndSub f1 '' #zField
Pt0 @GridStep f3 '' #zField
Pt0 @PushWFArc f2 '' #zField
Pt0 @PushWFArc f4 '' #zField
>Proto Pt0 Pt0 DefaultUserProcessOverride #zField
Pt0 f0 inParamDecl '<> param;' #txt
Pt0 f0 outParamDecl '<java.util.List<ch.ivy.addon.portalkit.persistence.domain.UserProcess> defaultUserProcesses> result;' #txt
Pt0 f0 outParamTable 'result.defaultUserProcesses=in.defaultUserProcesses;
' #txt
Pt0 f0 callSignature createDefaultUserProcesses() #txt
Pt0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>createDefaultUserProcesses()</name>
    </language>
</elementInfo>
' #txt
Pt0 f0 123 59 26 26 14 0 #rect
Pt0 f0 @|StartSubIcon #fIcon
Pt0 f1 123 315 26 26 14 0 #rect
Pt0 f1 @|EndSubIcon #fIcon
Pt0 f3 actionTable 'out=in;
' #txt
Pt0 f3 actionCode 'import ivy.trainingmanage.dao.UserDao;
import ivy.trainingmanage.model.User;
import ch.ivyteam.ivy.environment.Ivy;
import org.apache.commons.lang3.StringUtils;
import ch.ivy.addon.portalkit.persistence.domain.UserProcess;
import ch.ivy.addon.portalkit.service.ProcessStartCollector;
import ch.ivyteam.ivy.workflow.IProcessStart;
import ch.ivyteam.ivy.request.RequestUriFactory;
import ch.ivyteam.ivy.server.ServerFactory;


ProcessStartCollector collector = new ProcessStartCollector(ivy.request.getApplication());
UserDao userDao = new UserDao();
String userName = Ivy.session().getSessionUserName();
		User userLogin = userDao.findByUserName(userName);
		int countRole = userLogin.getUserRoleDetail().size();
if(countRole == 3 || userName == "Developer"){
	String createLink2 = collector.findStartableLinkByUserFriendlyRequestPath("ManageCategory/ShowCategory.ivp");
	if (!StringUtils.isEmpty(createLink2)){	
		UserProcess userProcess = new UserProcess();
		userProcess.setLink(createLink2);
		userProcess.setProcessName("Category Manage");
		userProcess.setIcon("fa fa-align-justify");
		userProcess.setIndex(1);
		in.defaultUserProcesses.add(userProcess);
	}
}

String createLink1 = collector.findStartableLinkByUserFriendlyRequestPath("HomePage/homePageGeneral.ivp");
	if (!StringUtils.isEmpty(createLink1)){	
		UserProcess userProcess = new UserProcess();
		userProcess.setLink(createLink1);
		userProcess.setProcessName("HomePage");
		userProcess.setIcon("fa-th");
		userProcess.setIndex(1);
		in.defaultUserProcesses.add(userProcess);
	}

String createLink3 = collector.findStartableLinkByUserFriendlyRequestPath("ManagePost/ManagePostDashboard.ivp");
if (!StringUtils.isEmpty(createLink3)){	
	UserProcess userProcess = new UserProcess();
	userProcess.setLink(createLink3);
	userProcess.setProcessName("Post Manage");
	userProcess.setIcon("fa fa-newspaper-o");
	userProcess.setIndex(1);
	in.defaultUserProcesses.add(userProcess);
}





' #txt
Pt0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>create default
processes</name>
        <nameStyle>24,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Pt0 f3 118 172 36 24 20 -2 #rect
Pt0 f3 @|StepIcon #fIcon
Pt0 f2 expr out #txt
Pt0 f2 136 196 136 315 #arcP
Pt0 f4 expr out #txt
Pt0 f4 136 85 136 172 #arcP
>Proto Pt0 .type training.center.manage.ProcessWidgetData #txt
>Proto Pt0 .processKind CALLABLE_SUB #txt
>Proto Pt0 0 0 32 24 18 0 #rect
>Proto Pt0 @|BIcon #fIcon
Pt0 f0 mainOut f4 tail #connect
Pt0 f4 head f3 mainIn #connect
Pt0 f3 mainOut f2 tail #connect
Pt0 f2 head f1 mainIn #connect
