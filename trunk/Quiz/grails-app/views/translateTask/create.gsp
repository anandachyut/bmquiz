

<%@ page import="com.bogdanmata.model.quiz.TranslateTask" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'translateTask.label', default: 'TranslateTask')}" />
        <title><g:message code="default.create.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></span>
            <span class="menuButton"><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="default.create.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${translateTaskInstance}">
            <div class="errors">
                <g:renderErrors bean="${translateTaskInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form action="save" >
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="entity"><g:message code="translateTask.entity.label" default="Entity" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: translateTaskInstance, field: 'entity', 'errors')}">
                                    <g:select name="entity" from="${com.bogdanmata.model.quiz.enums.EntityType?.values()}" keys="${com.bogdanmata.model.quiz.enums.EntityType?.values()*.name()}" value="${translateTaskInstance?.entity?.name()}"  />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="language"><g:message code="translateTask.language.label" default="Language" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: translateTaskInstance, field: 'language', 'errors')}">
                                    <g:select name="language" from="${com.bogdanmata.model.quiz.enums.Language?.values()}" keys="${com.bogdanmata.model.quiz.enums.Language?.values()*.name()}" value="${translateTaskInstance?.language?.name()}"  />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="property"><g:message code="translateTask.property.label" default="Property" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: translateTaskInstance, field: 'property', 'errors')}">
                                    <g:textField name="property" value="${translateTaskInstance?.property}" />
                                </td>
                            </tr>
                        
                        </tbody>
                    </table>
                </div>
                <div class="buttons">
                    <span class="button"><g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" /></span>
                </div>
            </g:form>
        </div>
    </body>
</html>
