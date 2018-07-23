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

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ taglib uri="http://java.sun.com/portlet_2_0" prefix="portlet" %>

<%@ taglib uri="http://liferay.com/tld/aui" prefix="aui" %>

<%@ page contentType="text/html; charset=UTF-8" %>

<%@ page import="com.liferay.petra.string.StringPool" %><%@
page import="com.liferay.portal.kernel.language.LanguageUtil" %><%@
page import="com.liferay.portal.kernel.util.GetterUtil" %><%@
page import="com.liferay.portal.kernel.util.HtmlUtil" %><%@
page import="com.liferay.portal.kernel.util.IntegerWrapper" %><%@
page import="com.liferay.portal.kernel.util.Validator" %><%@
page import="com.liferay.taglib.util.TagResourceBundleUtil" %>

<%@ page import="java.util.HashMap" %><%@
page import="java.util.Map" %><%@
page import="java.util.ResourceBundle" %>

<%
ResourceBundle resourceBundle = TagResourceBundleUtil.getResourceBundle(pageContext);

IntegerWrapper iconListIconCount = (IntegerWrapper)request.getAttribute("liferay-ui:icon-list:icon-count");

if (iconListIconCount != null) {
	iconListIconCount.increment();
}

boolean iconListShowWhenSingleIcon = GetterUtil.getBoolean((String)request.getAttribute("liferay-ui:icon-list:showWhenSingleIcon"));
Boolean iconListSingleIcon = (Boolean)request.getAttribute("liferay-ui:icon-list:single-icon");

IntegerWrapper iconMenuIconCount = (IntegerWrapper)request.getAttribute("liferay-ui:icon-menu:icon-count");

if (iconMenuIconCount != null) {
	iconMenuIconCount.increment();
}

boolean iconMenuShowWhenSingleIcon = GetterUtil.getBoolean((String)request.getAttribute("liferay-ui:icon-menu:showWhenSingleIcon"));
Boolean iconMenuSingleIcon = (Boolean)request.getAttribute("liferay-ui:icon-menu:single-icon");

String ariaRole = (String)request.getAttribute("liferay-ui:icon:ariaRole");
boolean auiImage = GetterUtil.getBoolean((String)request.getAttribute("liferay-ui:icon:auiImage"));
String cssClass = GetterUtil.getString((String)request.getAttribute("liferay-ui:icon:cssClass"));
Map<String, Object> data = (Map<String, Object>)request.getAttribute("liferay-ui:icon:data");
String details = GetterUtil.getString((String)request.getAttribute("liferay-ui:icon:details"));
String icon = (String)request.getAttribute("liferay-ui:icon:icon");
String iconCssClass = (String)request.getAttribute("liferay-ui:icon:iconCssClass");
String id = (String)request.getAttribute("liferay-ui:icon:id");
String image = (String)request.getAttribute("liferay-ui:icon:image");
boolean forcePost = GetterUtil.getBoolean((String)request.getAttribute("liferay-ui:icon:forcePost"));
String markupView = (String)request.getAttribute("liferay-ui:icon:markupView");
String message = (String)request.getAttribute("liferay-ui:icon:message");
boolean label = GetterUtil.getBoolean((String)request.getAttribute("liferay-ui:icon:label"));
String lang = GetterUtil.getString((String)request.getAttribute("liferay-ui:icon:lang"));
String linkCssClass = GetterUtil.getString((String)request.getAttribute("liferay-ui:icon:linkCssClass"));
boolean localizeMessage = GetterUtil.getBoolean((String)request.getAttribute("liferay-ui:icon:localizeMessage"));
String onClick = GetterUtil.getString((String)request.getAttribute("liferay-ui:icon:onClick"));
String src = (String)request.getAttribute("liferay-ui:icon:src");
String srcHover = (String)request.getAttribute("liferay-ui:icon:srcHover");
String target = GetterUtil.getString((String)request.getAttribute("liferay-ui:icon:target"));
boolean toolTip = GetterUtil.getBoolean((String)request.getAttribute("liferay-ui:icon:toolTip"));
String url = GetterUtil.getString((String)request.getAttribute("liferay-ui:icon:url"));
boolean useDialog = GetterUtil.getBoolean((String)request.getAttribute("liferay-ui:icon:useDialog"));

if (forcePost || useDialog) {
	if (data == null) {
		data = new HashMap<String, Object>();
	}

	data.put("senna-off", "true");
}

if (toolTip) {
	cssClass += " lfr-portal-tooltip";
}

linkCssClass += " lfr-icon-item taglib-icon";
%>

<%!
private static final String _AUI_PATH = "../aui/";
%>