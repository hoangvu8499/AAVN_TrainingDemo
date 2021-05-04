package ivy.trainingmanage.service;

import java.util.Date;
import java.util.List;

import javax.faces.application.FacesMessage;
import javax.faces.context.FacesContext;

import ivy.trainingmanage.dao.CategoryDao;
import ivy.trainingmanage.model.Category;
import ivy.trainingmanage.util.MessageUtil;

public class CategoryService {

	private CategoryDao categoryDao = new CategoryDao();
	private PostService postService = new PostService();

	public void saveCategory(Category category) {
		if (category.getName().isEmpty()) {
			FacesContext.getCurrentInstance().addMessage(":form", new FacesMessage(FacesMessage.SEVERITY_ERROR,
					MessageUtil.MESSAGE_CATEGORY_IS_NULL, MessageUtil.MESSAGE_CATEGORY_IS_NULL));
		} else {
			categoryDao.save(category);
		}
	}

	public List<Category> getAll() {
		return categoryDao.getAll();
	}

	public void deleteCategory(Category category) {
		category.setDeleteAt(new Date());
		categoryDao.save(category);
		postService.deleteListPost(category.getId());
	}
	
	public boolean checking(Category category) {
		if(category.getName().isBlank()) {
			return false;
		}
		if(categoryDao.findByName(category.getName()) != null) {
			return false;
		}
		return true;
	}

}
