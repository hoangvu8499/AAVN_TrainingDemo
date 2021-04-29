package ivy.trainingmanage.bean;

import javax.faces.bean.ManagedBean;
import javax.faces.bean.ViewScoped;

import ch.ivyteam.ivy.environment.Ivy;
import ch.ivyteam.ivy.request.IHttpResponse;
import ivy.trainingmanage.util.LinkHelper;

@ViewScoped
@ManagedBean(name = "movePageBean")
public class MovePage {
	public void redirect(String uri) throws java.io.IOException {
		IHttpResponse httpResponse = (IHttpResponse) Ivy.response();
		httpResponse.sendRedirect(uri);
	}

	public void moveHomePage() throws java.io.IOException {
		String link = LinkHelper.getFullLinkBySignature("homePage()");
		redirect(link);
	}
	
	public void moveManageUser() throws java.io.IOException {
		String link = LinkHelper.getFullLinkBySignature("DashboardManageUser()");
		redirect(link);
	}
	
	public void moveManageCategory() throws java.io.IOException {
		String link = LinkHelper.getFullLinkBySignature("ShowCategory()");
		redirect(link);
	}
	
	public void moveManagePost() throws java.io.IOException {
		String link = LinkHelper.getFullLinkBySignature("ManagePostDashboard()");
		redirect(link);
	}
	
	public void moveCreateUser() throws java.io.IOException {
		String link = LinkHelper.getFullLinkBySignature("createUser()");
		redirect(link);
	}

}