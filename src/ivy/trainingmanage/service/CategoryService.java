package ivy.trainingmanage.service;

import javax.faces.application.FacesMessage;
import javax.faces.context.FacesContext;

import ivy.trainingmanage.dao.CategoryDao;
import ivy.trainingmanage.model.Category;
import ivy.trainingmanage.util.MessageUtil;

public class CategoryService {

	private CategoryDao categoryDao;

	public void saveCategory(Category category) {
		if (category.getName().isBlank()) {
			FacesContext.getCurrentInstance().addMessage(null, new FacesMessage(FacesMessage.SEVERITY_ERROR,
					MessageUtil.MESSAGE_CATEGORY_IS_NULL, MessageUtil.MESSAGE_CATEGORY_IS_NULL));
		} else {
			categoryDao.save(category);
		}
	}

}
