
<%@ page import="com.tekdays.Garden" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'garden.label', default: 'Garden')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-garden" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-garden" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="name" title="${message(code: 'garden.name.label', default: 'Name')}" />
					
						<g:sortableColumn property="variety" title="${message(code: 'garden.variety.label', default: 'Variety')}" />
					
						<g:sortableColumn property="datePlanted" title="${message(code: 'garden.datePlanted.label', default: 'Date Planted')}" />
					
						<g:sortableColumn property="companyBoughtFrom" title="${message(code: 'garden.companyBoughtFrom.label', default: 'Company Bought From')}" />
					
						<g:sortableColumn property="typeOfPlantStructure" title="${message(code: 'garden.typeOfPlantStructure.label', default: 'Type Of Plant Structure')}" />
					
						<g:sortableColumn property="winterStorage" title="${message(code: 'garden.winterStorage.label', default: 'Winter Storage')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${gardenInstanceList}" status="i" var="gardenInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${gardenInstance.id}">${fieldValue(bean: gardenInstance, field: "name")}</g:link></td>
					
						<td>${fieldValue(bean: gardenInstance, field: "variety")}</td>
					
						<td><g:formatDate format="MM/dd/yyy"  date="${gardenInstance.datePlanted}" /></td>
					
						<td>${fieldValue(bean: gardenInstance, field: "companyBoughtFrom")}</td>
					
						<td>${fieldValue(bean: gardenInstance, field: "typeOfPlantStructure")}</td>
					
						<td>${fieldValue(bean: gardenInstance, field: "urlInfo1")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${gardenInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
