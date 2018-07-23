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

<%@ include file="/html/taglib/ui/icon/init.jsp" %>

<%
boolean urlIsNotNull = Validator.isNotNull(url);
%>

<c:choose>
	<c:when test="<%= (iconListIconCount != null) && ((iconListSingleIcon == null) || iconListShowWhenSingleIcon) %>">
		<li class="<%= cssClass %>" role="presentation">
			<c:choose>
				<c:when test="<%= urlIsNotNull %>">
					<aui:a ariaRole="menuitem" cssClass="<%= linkCssClass %>" data="<%= data %>" href="<%= url %>" id="<%= id %>" lang="<%= lang %>" onClick="<%= onClick %>" target="<%= target %>">
						<%@ include file="/html/taglib/ui/icon/link_content.jspf" %>
					</aui:a>
				</c:when>
				<c:otherwise>
					<%@ include file="/html/taglib/ui/icon/link_content.jspf" %>
				</c:otherwise>
			</c:choose>
		</li>
	</c:when>
	<c:when test="<%= (iconMenuIconCount != null) && ((iconMenuSingleIcon == null) || iconMenuShowWhenSingleIcon) %>">
		<li class="<%= cssClass %>" role="presentation">
			<c:choose>
				<c:when test="<%= urlIsNotNull %>">
					<aui:a ariaRole="menuitem" cssClass="<%= linkCssClass %>" data="<%= data %>" href="<%= url %>" id="<%= id %>" lang="<%= lang %>" onClick="<%= onClick %>" target="<%= target %>">
						<%@ include file="/html/taglib/ui/icon/link_content.jspf" %>
					</aui:a>
				</c:when>
				<c:otherwise>
					<span class="taglib-icon">
						<%@ include file="/html/taglib/ui/icon/link_content.jspf" %>
					</span>
				</c:otherwise>
			</c:choose>
		</li>
	</c:when>
	<c:otherwise>
		<span
			class="<%= cssClass %>"
			<c:if test="<%= !label && Validator.isNotNull(message) %>">
				title="<%= HtmlUtil.escapeAttribute(LanguageUtil.get(resourceBundle, HtmlUtil.stripHtml(message))) %>"
			</c:if>
		>
			<c:choose>
				<c:when test="<%= urlIsNotNull %>">
					<aui:a ariaRole="<%= ariaRole %>" cssClass="<%= linkCssClass %>" data="<%= data %>" href="<%= url %>" id="<%= id %>" lang="<%= lang %>" onClick="<%= onClick %>" target="<%= target %>">
						<%@ include file="/html/taglib/ui/icon/link_content.jspf" %>
					</aui:a>
				</c:when>
				<c:otherwise>
					<%@ include file="/html/taglib/ui/icon/link_content.jspf" %>
				</c:otherwise>
			</c:choose>
		</span>
	</c:otherwise>
</c:choose>

<c:if test="<%= Validator.isNotNull(srcHover) || forcePost || useDialog %>">
	<aui:script use="liferay-icon">
		Liferay.Icon.register(
			{
				forcePost: <%= forcePost %>,
				id: '<portlet:namespace /><%= id %>',

				<c:if test="<%= Validator.isNotNull(srcHover) %>">
					src: '<%= src %>',
					srcHover: '<%= srcHover %>',
				</c:if>

				useDialog: <%= useDialog %>
			}
		);
	</aui:script>
</c:if>