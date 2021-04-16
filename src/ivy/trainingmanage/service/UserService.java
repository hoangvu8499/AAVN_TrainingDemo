package ivy.trainingmanage.service;

import ivy.trainingmanage.dao.UserDao;
import ivy.trainingmanage.model.User;
import ivy.trainingmanage.util.MessageUtil;
import javax.faces.context.FacesContext;
import javax.faces.application.FacesMessage;

public class UserService {
	private UserDao userDao;

	public Boolean checkUserCreate(User user) {
		if (user.getEmail().isBlank() || user.getFullName().isBlank() || user.getPassword().isBlank()
				|| user.getUserName().isBlank() || user.getFilePost() == null) {
			FacesContext.getCurrentInstance().addMessage(":form-create", new FacesMessage(FacesMessage.SEVERITY_ERROR,
					MessageUtil.MESSAGE_FIELD_NULL, MessageUtil.MESSAGE_FIELD_NULL));
			return false;
		}
		return true;
	}

}
