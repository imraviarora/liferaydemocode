package com.tc.lf.registration.portlet;

import com.liferay.portal.kernel.exception.PortalException;
import com.liferay.portal.kernel.model.User;
import com.liferay.portal.kernel.service.ServiceContext;
import com.liferay.portal.kernel.service.UserLocalServiceUtil;
import com.liferay.portal.kernel.theme.ThemeDisplay;
import com.liferay.portal.kernel.util.LocaleUtil;
import com.liferay.portal.kernel.util.ParamUtil;
import com.liferay.portal.kernel.util.WebKeys;

import javax.portlet.ActionRequest;
import javax.portlet.ActionResponse;
import javax.portlet.RenderRequest;
import javax.portlet.RenderResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.portlet.bind.annotation.ActionMapping;
import org.springframework.web.portlet.bind.annotation.RenderMapping;

/**
 * @author jatin singh
 */
@Controller
@RequestMapping("VIEW")
public class RegistrationPortletViewController {
	
	@ActionMapping
	public void registration(ActionRequest actionRequest,ActionResponse actionResponse) throws PortalException {
		
		ThemeDisplay themeDisplay = (ThemeDisplay)actionRequest.getAttribute(WebKeys.THEME_DISPLAY);
		
		ServiceContext serviceContext = new ServiceContext();
		String prefix = ParamUtil.getString(actionRequest, "prefix");
		String fname = ParamUtil.getString(actionRequest,"fname");
		String lname = ParamUtil.getString(actionRequest,"lname");
		String email = ParamUtil.getString(actionRequest,"email");
		String institute = ParamUtil.getString(actionRequest,"institute-name");
		String password1 = ParamUtil.getString(actionRequest,"passsword1");
		String password2 = ParamUtil.getString(actionRequest,"passsword2");
		long[] groupIds = null;
		long[] organizationIds = null;
		long[] roleIds = null;
		long[] userGroupIds = null;

		
		
		System.out.println("NAME of the employee :- "+fname);
		
	
	User user = UserLocalServiceUtil.addUser(themeDisplay.getDefaultUserId(),themeDisplay.getCompanyId() , false, password1, password2, true, fname,
			email, 111, "fb1", LocaleUtil.getDefault(), fname, "", lname, 119, 120, true, 1,
			12, 1, "", groupIds, organizationIds, roleIds, userGroupIds, false, serviceContext);
	
	}
	
	

	@RenderMapping
	public String view(RenderRequest request, RenderResponse response) {
		return "view";
	}
}