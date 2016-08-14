
<%@ page import="com.tekdays.Garden" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'garden.label', default: 'Garden')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-garden" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-garden" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list garden">
			
				<g:if test="${gardenInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="garden.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${gardenInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${gardenInstance?.variety}">
				<li class="fieldcontain">
					<span id="variety-label" class="property-label"><g:message code="garden.variety.label" default="Variety" /></span>
					
						<span class="property-value" aria-labelledby="variety-label"><g:fieldValue bean="${gardenInstance}" field="variety"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${gardenInstance?.datePlanted}">
				<li class="fieldcontain">
					<span id="datePlanted-label" class="property-label"><g:message code="garden.datePlanted.label" default="Date Planted" /></span>
					
						<span class="property-value" aria-labelledby="datePlanted-label"><g:formatDate date="${gardenInstance?.datePlanted}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${gardenInstance?.companyBoughtFrom}">
				<li class="fieldcontain">
					<span id="companyBoughtFrom-label" class="property-label"><g:message code="garden.companyBoughtFrom.label" default="Company Bought From" /></span>
					
						<span class="property-value" aria-labelledby="companyBoughtFrom-label"><g:fieldValue bean="${gardenInstance}" field="companyBoughtFrom"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${gardenInstance?.typeOfPlantStructure}">
				<li class="fieldcontain">
					<span id="typeOfPlantStructure-label" class="property-label"><g:message code="garden.typeOfPlantStructure.label" default="Type Of Plant Structure" /></span>
					
						<span class="property-value" aria-labelledby="typeOfPlantStructure-label"><g:fieldValue bean="${gardenInstance}" field="typeOfPlantStructure"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${gardenInstance?.winterStorage}">
				<li class="fieldcontain">
					<span id="winterStorage-label" class="property-label"><g:message code="garden.winterStorage.label" default="Winter Storage" /></span>
					
						<span class="property-value" aria-labelledby="winterStorage-label"><g:fieldValue bean="${gardenInstance}" field="winterStorage"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${gardenInstance?.healthBenefits}">
				<li class="fieldcontain">
					<span id="healthBenefits-label" class="property-label"><g:message code="garden.healthBenefits.label" default="Health Benefits" /></span>
					
						<span class="property-value" aria-labelledby="healthBenefits-label"><g:fieldValue bean="${gardenInstance}" field="healthBenefits"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${gardenInstance?.lightRequirement}">
				<li class="fieldcontain">
					<span id="lightRequirement-label" class="property-label"><g:message code="garden.lightRequirement.label" default="Light Requirement" /></span>
					
						<span class="property-value" aria-labelledby="lightRequirement-label"><g:fieldValue bean="${gardenInstance}" field="lightRequirement"/></span>
					
				</li>
				</g:if>
							<g:if test="${gardenInstance?.urlInfo1}">
				<li class="fieldcontain">
					<span id="urlInfo1-label" class="property-label"><g:message code="garden.urlInfo1.label" default="URL Info 1" /></span>

						<span class="property-value" aria-labelledby="urlInfo1-label">  <g:fieldValue bean="${gardenInstance}" field="urlInfo1"/> </span>

				</li>
				</g:if>

			</ol>
			<g:form url="[resource:gardenInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${gardenInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
