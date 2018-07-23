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

<%@ include file="/html/taglib/ui/drop_here_info/init.jsp" %>

<%
String message = GetterUtil.getString((String)request.getAttribute("liferay-ui:drop-here-info:message"));
%>

<div class="drop-here-info">
	<div class="drop-here-indicator">
		<div class="drop-icons">
			<aui:icon cssClass="drop-icon" image="picture" markupView="lexicon" />

			<aui:icon cssClass="drop-icon" image="picture" markupView="lexicon" />

			<aui:icon cssClass="drop-icon" image="picture" markupView="lexicon" />
		</div>

		<div class="drop-text">
			<liferay-ui:message key="<%= message %>" />
		</div>
	</div>
</div>