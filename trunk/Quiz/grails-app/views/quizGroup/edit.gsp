

<%@ page import="com.bogdanmata.model.quiz.QuizGroup" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'quizGroup.label', default: 'QuizGroup')}" />
        <title><g:message code="default.edit.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></span>
            <span class="menuButton"><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></span>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="default.edit.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${quizGroupInstance}">
            <div class="errors">
                <g:renderErrors bean="${quizGroupInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form method="post" >
                <g:hiddenField name="id" value="${quizGroupInstance?.id}" />
                <g:hiddenField name="version" value="${quizGroupInstance?.version}" />
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="description"><g:message code="quizGroup.description.label" default="Description" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: quizGroupInstance, field: 'description', 'errors')}">
                                    <g:textField name="description" value="${quizGroupInstance?.description}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="descriptionDe"><g:message code="quizGroup.descriptionDe.label" default="Description De" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: quizGroupInstance, field: 'descriptionDe', 'errors')}">
                                    <g:textField name="descriptionDe" value="${quizGroupInstance?.descriptionDe}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="descriptionEs"><g:message code="quizGroup.descriptionEs.label" default="Description Es" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: quizGroupInstance, field: 'descriptionEs', 'errors')}">
                                    <g:textField name="descriptionEs" value="${quizGroupInstance?.descriptionEs}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="descriptionFr"><g:message code="quizGroup.descriptionFr.label" default="Description Fr" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: quizGroupInstance, field: 'descriptionFr', 'errors')}">
                                    <g:textField name="descriptionFr" value="${quizGroupInstance?.descriptionFr}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="descriptionIt"><g:message code="quizGroup.descriptionIt.label" default="Description It" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: quizGroupInstance, field: 'descriptionIt', 'errors')}">
                                    <g:textField name="descriptionIt" value="${quizGroupInstance?.descriptionIt}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="descriptionRo"><g:message code="quizGroup.descriptionRo.label" default="Description Ro" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: quizGroupInstance, field: 'descriptionRo', 'errors')}">
                                    <g:textField name="descriptionRo" value="${quizGroupInstance?.descriptionRo}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="groups"><g:message code="quizGroup.groups.label" default="Groups" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: quizGroupInstance, field: 'groups', 'errors')}">
                                    
<ul>
<g:each in="${quizGroupInstance?.groups?}" var="g">
    <li><g:link controller="quizGroupMapping" action="show" id="${g.id}">${g?.encodeAsHTML()}</g:link></li>
</g:each>
</ul>
<g:link controller="quizGroupMapping" action="create" params="['quizGroup.id': quizGroupInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'quizGroupMapping.label', default: 'QuizGroupMapping')])}</g:link>

                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="name"><g:message code="quizGroup.name.label" default="Name" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: quizGroupInstance, field: 'name', 'errors')}">
                                    <g:textField name="name" value="${quizGroupInstance?.name}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="nameDe"><g:message code="quizGroup.nameDe.label" default="Name De" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: quizGroupInstance, field: 'nameDe', 'errors')}">
                                    <g:textField name="nameDe" value="${quizGroupInstance?.nameDe}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="nameEs"><g:message code="quizGroup.nameEs.label" default="Name Es" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: quizGroupInstance, field: 'nameEs', 'errors')}">
                                    <g:textField name="nameEs" value="${quizGroupInstance?.nameEs}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="nameFr"><g:message code="quizGroup.nameFr.label" default="Name Fr" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: quizGroupInstance, field: 'nameFr', 'errors')}">
                                    <g:textField name="nameFr" value="${quizGroupInstance?.nameFr}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="nameIt"><g:message code="quizGroup.nameIt.label" default="Name It" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: quizGroupInstance, field: 'nameIt', 'errors')}">
                                    <g:textField name="nameIt" value="${quizGroupInstance?.nameIt}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="nameRo"><g:message code="quizGroup.nameRo.label" default="Name Ro" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: quizGroupInstance, field: 'nameRo', 'errors')}">
                                    <g:textField name="nameRo" value="${quizGroupInstance?.nameRo}" />
                                </td>
                            </tr>
                        
                        </tbody>
                    </table>
                </div>
                <div class="buttons">
                    <span class="button"><g:actionSubmit class="save" action="update" value="${message(code: 'default.button.update.label', default: 'Update')}" /></span>
                    <span class="button"><g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" /></span>
                </div>
            </g:form>
        </div>
    </body>
</html>
