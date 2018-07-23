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

<%@ include file="/html/taglib/ui/panel/init.jsp" %>

<%
boolean collapsed = false;

if (accordion) {
	if ((panelCount != null) && (panelCount.getValue() > 1)) {
		collapsed = true;
	}
}
else if ((extended != null) && !extended) {
	collapsed = true;
}

if (persistState) {
	collapsed = GetterUtil.getBoolean(SessionClicks.get(request, id, null), collapsed);
}
%>

<div class="panel panel-default <%= cssClass %>" id="<%= id %>">
	<div class="panel-heading" id="<%= id %>Header" role="tab">
		<div class="h4 panel-title">
			<c:choose>
				<c:when test="<%= collapsible %>">
					<a aria-controls="<%= id %>Content" aria-expanded="<%= !collapsed %>" class="collapse-icon collapse-icon-middle <%= collapsed ? "collapsed" : StringPool.BLANK %>" data-toggle="collapse" href="#<%= id %>Content" role="button">
						<c:if test="<%= Validator.isNotNull(iconCssClass) %>">
							<i class="<%= iconCssClass %>"></i>
						</c:if>

						<liferay-ui:message key="<%= title %>" />

						<c:if test="<%= Validator.isNotNull(helpMessage) %>">
							<liferay-ui:icon-help message="<%= helpMessage %>" />
						</c:if>

						<aui:icon cssClass="collapse-icon-closed" image="angle-right" markupView="lexicon" />

						<aui:icon cssClass="collapse-icon-open" image="angle-down" markupView="lexicon" />
					</a>
				</c:when>
				<c:otherwise>
					<span>
						<c:if test="<%= Validator.isNotNull(iconCssClass) %>">
							<i class="<%= iconCssClass %>"></i>
						</c:if>

						<liferay-ui:message key="<%= title %>" />

						<c:if test="<%= Validator.isNotNull(helpMessage) %>">
							<liferay-ui:icon-help message="<%= helpMessage %>" />
						</c:if>
					</span>
				</c:otherwise>
			</c:choose>
		</div>
	</div>

	<div aria-labelledby="<%= id %>Header" class="<%= collapsible ? "collapse panel-collapse" : StringPool.BLANK %> <%= !collapsed ? "in" : StringPool.BLANK %>" data-parent="#<%= accordion ? parentId : StringPool.BLANK %>" id="<%= id %>Content" role="tabpanel">
		<div class="panel-body">