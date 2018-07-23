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

<%@ include file="/html/taglib/init.jsp" %>

<%
String layoutTemplateId = (String)request.getAttribute("liferay-ui:layout-templates-list:layoutTemplateId");
String layoutTemplateIdPrefix = (String)request.getAttribute("liferay-ui:layout-templates-list:layoutTemplateIdPrefix");
List<LayoutTemplate> layoutTemplates = (List<LayoutTemplate>)request.getAttribute("liferay-ui:layout-templates-list:layoutTemplates");
%>

<div class="container-fluid lfr-page-layouts">
	<ul class="list-unstyled row">

		<%
		layoutTemplates = PluginUtil.restrictPlugins(layoutTemplates, user);

		for (int i = 0; i < layoutTemplates.size(); i++) {
			LayoutTemplate layoutTemplate = layoutTemplates.get(i);
		%>

			<li class="col-lg-3 col-md-4 col-sm-6 lfr-layout-template">
				<div class="checkbox-card">
					<label for="<portlet:namespace /><%= layoutTemplateIdPrefix + "layoutTemplateId" + i %>">
						<aui:input checked="<%= layoutTemplateId.equals(layoutTemplate.getLayoutTemplateId()) %>" cssClass="hide" id='<%= layoutTemplateIdPrefix + "layoutTemplateId" + i %>' label="" name="layoutTemplateId" type="radio" value="<%= layoutTemplate.getLayoutTemplateId() %>" wrappedField="<%= true %>" />

						<div class="card card-horizontal">
							<div class="card-row card-row-padded">
								<div class="card-col-field">
									<img alt="" class="layout-template-entry modify-link <%= layoutTemplateId.equals(layoutTemplate.getLayoutTemplateId()) ? "layout-selected" : StringPool.BLANK %>" height="28" onclick="document.getElementById('<portlet:namespace /><%= layoutTemplateIdPrefix + "layoutTemplateId" + i %>').checked = true;" src="<%= layoutTemplate.getStaticResourcePath() %><%= HtmlUtil.escapeAttribute(layoutTemplate.getThumbnailPath()) %>" width="28" />
								</div>

								<div class="card-col-content card-col-gutters clamp-horizontal">
									<div class="clamp-container">
										<span class="truncate-text" title="<%= HtmlUtil.escape(layoutTemplate.getName(locale)) %>"><%= HtmlUtil.escape(layoutTemplate.getName(locale)) %></span>
									</div>
								</div>
							</div>
						</div>
					</label>
				</div>
			</li>

		<%
		}
		%>

	</ul>
</div>