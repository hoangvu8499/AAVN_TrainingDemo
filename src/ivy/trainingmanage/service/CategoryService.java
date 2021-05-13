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
		} else if (categoryDao.findByName(category.getName()).getName() != null) {
			FacesContext.getCurrentInstance().addMessage(":form", new FacesMessage(FacesMessage.SEVERITY_ERROR,
					MessageUtil.MESSAGE_CATEGORY_EXISTS, MessageUtil.MESSAGE_CATEGORY_EXISTS));
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
		if (category.getName().isBlank()) {
			return false;
		}
		if (categoryDao.findByName(category.getName()) != null) {
			return false;
		}
		return true;
	}
	
	public Category findById(Long id) {
		return categoryDao.findById(id);
	}
	
	public List<Category> resetCategory(List<Category> categories, Category category){
		for(int i = 0 ; i< categories.size(); i++) {
			if(category.getId() == categories.get(i).getId()) {
				categories.remove(i);
				categories.add(0, category);
			}
		}
		return categories;
	}

}
