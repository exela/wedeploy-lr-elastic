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

<%@ include file="/html/taglib/ui/search_container/init.jsp" %>

<%
String href = (String)request.getAttribute("liferay-ui:search-container-column-icon:href");
String src = HtmlUtil.escapeAttribute((String)request.getAttribute("liferay-ui:search-container-column-icon:src"));
boolean toggleRowChecker = GetterUtil.getBoolean(request.getAttribute("liferay-ui:search-container-column-icon:toggleRowChecker"));
%>

<c:if test="<%= Validator.isNotNull(src) %>">
	<div class="aspect-ratio-bg-cover <%= toggleRowChecker ? "click-selector" : StringPool.BLANK %> sticker sticker-static" style="background-image: url('<%= src %>')">
		<img alt="thumbnail" class="sr-only" src="<%= src %>" />
	</div>
</c:if>