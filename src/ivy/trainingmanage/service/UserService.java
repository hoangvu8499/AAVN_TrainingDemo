package ivy.trainingmanage.service;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import javax.faces.application.FacesMessage;
import javax.faces.context.FacesContext;

import ch.ivyteam.ivy.environment.Ivy;
import ch.ivyteam.ivy.security.ISecurityContext;
import ch.ivyteam.ivy.security.IUser;
import ivy.trainingmanage.dao.RoleDao;
import ivy.trainingmanage.dao.UserDao;
import ivy.trainingmanage.dao.UserDetailDao;
import ivy.trainingmanage.model.Role;
import ivy.trainingmanage.model.User;
import ivy.trainingmanage.model.UserRoleDetail;
import ivy.trainingmanage.util.Constant;
import ivy.trainingmanage.util.MessageUtil;

public class UserService {
	private UserDao userDao = new UserDao();
	private RoleDao roleDao = new RoleDao();

	private ISecurityContext securityContext = Ivy.wf().getApplication().getSecurityContext();

	public Boolean checkUserCreate(User user) {
		if (user.getEmail().isBlank() || user.getFullName().isBlank() || user.getPassword().isBlank()
				|| user.getUserName().isBlank() || user.getFilePost() == null) {
			FacesContext.getCurrentInstance().addMessage(":form-create", new FacesMessage(FacesMessage.SEVERITY_ERROR,
					MessageUtil.MESSAGE_FIELD_NULL, MessageUtil.MESSAGE_FIELD_NULL));
			return false;
		}

		if (userDao.checkExistsUser(user).size() > 0) {
			FacesContext.getCurrentInstance().addMessage(":form-create", new FacesMessage(FacesMessage.SEVERITY_ERROR,
					MessageUtil.MESSAGE_EXISTS_EMAIL_USERNAME, MessageUtil.MESSAGE_EXISTS_EMAIL_USERNAME));
			return false;
		}
		
		if(user.getUserName().indexOf(" ") != -1) {
			FacesContext.getCurrentInstance().addMessage(":form-create", new FacesMessage(FacesMessage.SEVERITY_ERROR,
					MessageUtil.MESSAGE_HAVE_SPACE_EMAIL_USERNAME, MessageUtil.MESSAGE_HAVE_SPACE_EMAIL_USERNAME));
			return false;
		}
		return true;
	}

	public void createUser(User user, Role role) {
		//securityContext.deleteUser("nacu22984");
		//securityContext.deleteUser("hoangvu8499");
		try {
			securityContext.createUser(user.getUserName(), user.getFullName(), user.getPassword(), Locale.JAPAN,
					user.getEmail(), "");
		} catch (Exception e) {
			securityContext.deleteUser(user.getUserName());
			e.printStackTrace();
		}

		IUser iUser = securityContext.findUser(user.getUserName());
		switch (role.getName()) {
		case Constant.AdminRole:
			setRoleAdmin(user, iUser);
			userDao.save(user);
			break;
		case Constant.TeacherRole:
			setRoleTeacher(user, iUser);
			userDao.save(user);
			break;
		default:
			setRoleStudent(user, iUser);
			userDao.save(user);
			break;
		}

	}

	public void setRoleAdmin(User user, IUser iUser) {
		List<UserRoleDetail> roleDetails = new ArrayList<>();
		try {
			iUser.addRole(securityContext.findRole(Constant.AdminRole));
			iUser.addRole(securityContext.findRole(Constant.TeacherRole));
			iUser.addRole(securityContext.findRole(Constant.StudentRole));
			roleDetails.add(new UserRoleDetail(user, roleDao.findById(Constant.AdminRoleId)));
			roleDetails.add(new UserRoleDetail(user, roleDao.findById(Constant.TeacherRoleId)));
			roleDetails.add(new UserRoleDetail(user, roleDao.findById(Constant.StudentRoleId)));
			user.setUserRoleDetail(roleDetails);
		} catch (Exception e) {
			securityContext.deleteUser(user.getUserName());
			e.printStackTrace();
		}

	}

	public void setRoleTeacher(User user, IUser iUser) {
		List<UserRoleDetail> roleDetails = new ArrayList<>();
		try {
			iUser.addRole(securityContext.findRole(Constant.TeacherRole));
			iUser.addRole(securityContext.findRole(Constant.StudentRole));
			roleDetails.add(new UserRoleDetail(user, roleDao.findById(Constant.TeacherRoleId)));
			roleDetails.add(new UserRoleDetail(user, roleDao.findById(Constant.StudentRoleId)));
			user.setUserRoleDetail(roleDetails);
		} catch (Exception e) {
			securityContext.deleteUser(user.getUserName());
			e.printStackTrace();
		}

	}

	public void setRoleStudent(User user, IUser iUser) {
		List<UserRoleDetail> roleDetails = new ArrayList<>();
		try {
			iUser.addRole(securityContext.findRole(Constant.StudentRole));
			roleDetails.add(new UserRoleDetail(user, roleDao.findById(Constant.StudentRoleId)));
			user.setUserRoleDetail(roleDetails);
		} catch (Exception e) {
			securityContext.deleteUser(user.getUserName());
			e.printStackTrace();
		}
	}

	public void deleteUser(User user) {
		String userName = Ivy.session().getSessionUserName();
		User userLogin = userDao.findByUserName(userName);
		user.setDeleted(new Date());
		userDao.save(user);
//		if (userLogin.getUserRoleDetail().size()==3) {
//			user.setDeleted(new Date());
//			userDao.save(user);
//		} else {
//			FacesContext.getCurrentInstance().addMessage(":form-list-user", new FacesMessage(FacesMessage.SEVERITY_ERROR,
//					MessageUtil.MESSAGE_NONE_ACCEPT_ROLE, MessageUtil.MESSAGE_NONE_ACCEPT_ROLE));
//		}
	}

}
