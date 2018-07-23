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

<%
boolean author = GetterUtil.getBoolean((String)request.getAttribute("liferay-ui:user-display:author"));
int displayStyle = GetterUtil.getInteger((String)request.getAttribute("liferay-ui:user-display:displayStyle"));
String imageCssClass = (String)request.getAttribute("liferay-ui:user-display:imageCssClass");
boolean showLink = GetterUtil.getBoolean((String)request.getAttribute("liferay-ui:user-display:showLink"));
boolean showUserDetails = GetterUtil.getBoolean((String)request.getAttribute("liferay-ui:user-display:showUserDetails"));
boolean showUserName = GetterUtil.getBoolean((String)request.getAttribute("liferay-ui:user-display:showUserName"));
String url = (String)request.getAttribute("liferay-ui:user-display:url");
User userDisplay = (User)request.getAttribute("liferay-ui:user-display:user");
String userIconCssClass = (String)request.getAttribute("liferay-ui:user-display:userIconCssClass");
String userName = GetterUtil.getString((String)request.getAttribute("liferay-ui:user-display:userName"));

if (author) {
	imageCssClass += " author";
}
%>