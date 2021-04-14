package ivy.trainingmanage.bean;

import java.io.Serializable;

import javax.faces.application.FacesMessage;
import javax.faces.context.FacesContext;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.SessionScoped;
import javax.faces.bean.ViewScoped;
import javax.inject.Named;

import org.primefaces.event.CellEditEvent;

import ch.ivyteam.ivy.environment.Ivy;
import ivy.trainingmanage.dao.CategoryDao;
import ivy.trainingmanage.model.Category;

@ManagedBean(name = "dtEditView")
@ViewScoped
public class CategoryManageBean implements Serializable{
	private CategoryDao categoryDao;
	
	public void onCellEdit(CellEditEvent event) {
        Object newValue =  event.getNewValue();
        Object oldValue =  event.getOldValue();
        
        Ivy.log().error("NewValue :" + newValue);
        Ivy.log().error("OldValue :" + oldValue);

//        if (newValue != null && !newValue.equals(oldValue)) {
//            categoryDao.save(newValue);
//        }
        
    }

}
