package ivy.trainingmanage.bean;

import javax.faces.bean.ManagedBean;
import javax.faces.bean.ViewScoped;

import ch.ivyteam.ivy.environment.Ivy;
import ch.ivyteam.ivy.request.IHttpResponse;
import ivy.trainingmanage.model.Post;
import ivy.trainingmanage.util.LinkHelper;

@ViewScoped
@ManagedBean(name = "postManageBean")
public class PostManageBean {

	public void redirect(String uri) throws java.io.IOException {
		IHttpResponse httpResponse = (IHttpResponse) Ivy.response();
		httpResponse.sendRedirect(uri);
	}

	public void moveHomePage() throws java.io.IOException {
		String link = LinkHelper.getFullLinkBySignature("homePage()");
		redirect(link);
	}
	
	public void moveCreateUserPage() throws java.io.IOException {
		String link = LinkHelper.getFullLinkBySignature("createUser()");
		redirect(link);
	}
	
	public void moveCreatePostPage() throws java.io.IOException {
		String link = LinkHelper.getFullLinkBySignature("createPost()");
		redirect(link);
	}
	

}
