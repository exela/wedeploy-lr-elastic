<%--
/**
 * Copyright (c) 2000-present Liferay, Inc. All rights reserved.
 *
 * The contents of this file are subject to the terms of the Liferay Enterprise
 * Subscription License ("License"). You may not use this file except in
 * compliance with the License. You can obtain a copy of the License by
 * contacting Liferay, Inc. See the License for the specific language governing
 * permissions and limitations under the License, including but not limited to
 * distribution rights of the Software.
 *
 *
 *
 */
--%>

<%@ include file="/html/common/init.jsp" %>

<%@ page import="com.liferay.admin.kernel.util.PortalProductMenuApplicationType" %><%@
page import="com.liferay.exportimport.kernel.lar.DefaultConfigurationPortletDataHandler" %><%@
page import="com.liferay.portal.kernel.cluster.ClusterExecutorUtil" %><%@
page import="com.liferay.portal.kernel.cluster.ClusterNode" %><%@
page import="com.liferay.portal.kernel.dao.db.DBManagerUtil" %><%@
page import="com.liferay.portal.kernel.dao.db.DBType" %><%@
page import="com.liferay.portal.kernel.exception.LayoutPermissionException" %><%@
page import="com.liferay.portal.kernel.exception.PortletActiveException" %><%@
page import="com.liferay.portal.kernel.exception.RequiredLayoutException" %><%@
page import="com.liferay.portal.kernel.exception.RequiredRoleException" %><%@
page import="com.liferay.portal.kernel.exception.UserActiveException" %><%@
page import="com.liferay.portal.kernel.exception.UserEmailAddressException" %><%@
page import="com.liferay.portal.kernel.exception.UserLockoutException" %><%@
page import="com.liferay.portal.kernel.exception.UserPasswordException" %><%@
page import="com.liferay.portal.kernel.exception.UserReminderQueryException" %><%@
page import="com.liferay.portal.kernel.license.util.LicenseManagerUtil" %><%@
page import="com.liferay.portal.kernel.parsers.bbcode.BBCodeTranslatorUtil" %><%@
page import="com.liferay.portal.kernel.portlet.PortletConfigurationLayoutUtil" %><%@
page import="com.liferay.portal.kernel.servlet.HttpHeaders" %><%@
page import="com.liferay.portal.kernel.templateparser.TransformException" %><%@
page import="com.liferay.portal.kernel.util.ClassUtil" %><%@
page import="com.liferay.portal.kernel.util.ProgressTracker" %><%@
page import="com.liferay.portal.kernel.util.TermsOfUseContentProvider" %><%@
page import="com.liferay.portal.kernel.util.TermsOfUseContentProviderRegistryUtil" %><%@
page import="com.liferay.portal.setup.SetupWizardUtil" %><%@
page import="com.liferay.portal.struts.PortletRequestProcessor" %><%@
page import="com.liferay.portal.util.LicenseUtil" %><%@
page import="com.liferay.portal.util.PortletCategoryUtil" %><%@
page import="com.liferay.portlet.configuration.kernel.util.PortletConfigurationApplicationType" %><%@
page import="com.liferay.taglib.servlet.PipingServletResponse" %>

<%@ page import="org.apache.struts.action.ActionMapping" %><%@
page import="org.apache.struts.tiles.ComponentDefinition" %><%@
page import="org.apache.struts.tiles.TilesUtil" %><%@
page import="org.apache.struts.tiles.taglib.ComponentConstants" %>