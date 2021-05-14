package ivy.trainingmanage.service;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.faces.application.FacesMessage;
import javax.faces.context.FacesContext;

import ch.ivyteam.ivy.environment.Ivy;
import ivy.trainingmanage.dao.PostDao;
import ivy.trainingmanage.dao.UserDao;
import ivy.trainingmanage.model.Post;
import ivy.trainingmanage.model.User;
import ivy.trainingmanage.util.Constant;
import ivy.trainingmanage.util.MessageUtil;

public class PostService {
	private PostDao postDao = new PostDao();
	private UserDao userDao = new UserDao();

	public Boolean checkPostCreate(Post post) {
		if (post.getContent_post().isEmpty() || post.getDescription().isEmpty() || post.getName().isEmpty()) {
			FacesContext.getCurrentInstance().addMessage(":form-create", new FacesMessage(FacesMessage.SEVERITY_ERROR,
					MessageUtil.MESSAGE_FIELD_NULL, MessageUtil.MESSAGE_FIELD_NULL));
			return false;
		}

		return true;
	}

	public Long createNoneAcept(Post post) {		
		Date currentDate = new Date();
		String dateFormat = new SimpleDateFormat(Constant.DATE_FORMAT).format(currentDate);
		post.setDeleted(currentDate);
		post.setCreateAt(currentDate);
		return postDao.savePost(post);
	}

	public void save(Post post) {
		post.setDeleted(null);
		postDao.save(post);
	}

	public List<Post> getAll() {
		return postDao.getAll();
	}
	
	public List<Post> getByIdCategory(Long idCategory) {
		return postDao.getByIdCategory(idCategory);
	}

	public Post findById(Long id) {
		Post post = new Post();
		post = postDao.findById(id);
		return post;
	}

	public void delete(Post post) {
		String userName = Ivy.session().getSessionUserName();
		User userLogin = userDao.findByUserName(userName);
		int countRole = userLogin.getUserRoleDetail().size();
		if (countRole == 3) {
			post.setDeleted(new Date());
			postDao.save(post);
		} else {
			FacesContext.getCurrentInstance().addMessage(":form-list-post", new FacesMessage(FacesMessage.SEVERITY_ERROR,
					MessageUtil.MESSAGE_NONE_ACCEPT_ROLE, MessageUtil.MESSAGE_NONE_ACCEPT_ROLE));
		}

	}
	
	public void deleteListPost(Long idCategory) {
		Date dateDelete = new Date();
		postDao.deletePostCategory(idCategory, dateDelete);
	}
}
