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

<%@ page import="com.liferay.portal.kernel.model.Portlet" %><%@
page import="com.liferay.portal.kernel.portlet.JavaScriptPortletResourcePredicateFilter" %><%@
page import="com.liferay.portal.kernel.servlet.BrowserMetadata" %><%@
page import="com.liferay.portal.kernel.upload.UploadServletRequestConfigurationHelperUtil" %><%@
page import="com.liferay.portal.kernel.util.PredicateFilter" %><%@
page import="com.liferay.portal.servlet.ComboServletStaticURLGenerator" %><%@
page import="com.liferay.portal.util.LayoutTypeAccessPolicyTracker" %><%@
page import="com.liferay.portlet.PortletResourceAccessor" %><%@
page import="com.liferay.portlet.PortletResourceStaticURLGenerator" %><%@
page import="com.liferay.portlet.internal.RenderStateUtil" %><%@
page import="com.liferay.taglib.aui.ScriptTag" %>

<%@ page import="java.util.Iterator" %><%@
page import="java.util.concurrent.ConcurrentHashMap" %>

<%@ page import="org.apache.struts.tiles.ComponentContext" %><%@
page import="org.apache.struts.tiles.taglib.ComponentConstants" %>