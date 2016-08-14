<%@ page import="com.tekdays.Garden" %>



<div class="fieldcontain ${hasErrors(bean: gardenInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="garden.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${gardenInstance?.name}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: gardenInstance, field: 'variety', 'error')} ">
	<label for="variety">
		<g:message code="garden.variety.label" default="Variety" />
		
	</label>
	<g:textField name="variety" value="${gardenInstance?.variety}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: gardenInstance, field: 'datePlanted', 'error')} ">
	<label for="datePlanted">
		<g:message code="garden.datePlanted.label" default="Date Planted" />
		
	</label>
	<g:datePicker name="datePlanted" precision="day"  value="${gardenInstance?.datePlanted}" default="none" noSelection="['': '']" />

</div>

<div class="fieldcontain ${hasErrors(bean: gardenInstance, field: 'companyBoughtFrom', 'error')} ">
	<label for="companyBoughtFrom">
		<g:message code="garden.companyBoughtFrom.label" default="Company Bought From" />

	</label>
	<g:textField name="companyBoughtFrom" value="${gardenInstance?.companyBoughtFrom}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: gardenInstance, field: 'typeOfPlantStructure', 'error')} ">
	<label for="typeOfPlantStructure">
		<g:message code="garden.typeOfPlantStructure.label" default="Type Of Plant Structure" />
		
	</label>
	<g:select name="typeOfPlantStructure" from="${com.tekdays.Garden$TypeOfPlantStructure?.values()}" keys="${com.tekdays.Garden$TypeOfPlantStructure.values()*.name()}" value="${gardenInstance?.typeOfPlantStructure?.name()}"  noSelection="['': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: gardenInstance, field: 'winterStorage', 'error')} ">
	<label for="winterStorage">
		<g:message code="garden.winterStorage.label" default="Winter Storage" />
		
	</label>
	<g:select name="winterStorage" from="${com.tekdays.Garden$STORAGE?.values()}" keys="${com.tekdays.Garden$STORAGE.values()*.name()}" value="${gardenInstance?.winterStorage?.name()}"  noSelection="['': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: gardenInstance, field: 'healthBenefits', 'error')} ">
	<label for="healthBenefits">
		<g:message code="garden.healthBenefits.label" default="Health Benefits" />
		
	</label>
	<g:textField name="healthBenefits" value="${gardenInstance?.healthBenefits}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: gardenInstance, field: 'lightRequirement', 'error')} required">
	<label for="lightRequirement">
		<g:message code="garden.lightRequirement.label" default="Light Requirement" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="lightRequirement" from="${com.tekdays.Garden$LIGHT_REQUIREMENT?.values()}" keys="${com.tekdays.Garden$LIGHT_REQUIREMENT.values()*.name()}" required="" value="${gardenInstance?.lightRequirement?.name()}" />

</div>
<div class="fieldcontain ${hasErrors(bean: gardenInstance, field: 'urlInfo1', 'error')} ">
	<label for="urlInfo1">
		<g:message code="garden.urlInfo1.label" default="URL Info1" />

	</label>
	<g:textField name="urlInfo1" value="${gardenInstance?.urlInfo1}"/>

</div>

