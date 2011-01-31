
<%@ page import="com.bogdanmata.model.quiz.TranslateTask" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'translateTask.label', default: 'TranslateTask')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></span>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="default.list.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="list">
                <table>
                    <thead>
                        <tr>
                        
                            <g:sortableColumn property="id" title="${message(code: 'translateTask.id.label', default: 'Id')}" />
                        
                            <g:sortableColumn property="entity" title="${message(code: 'translateTask.entity.label', default: 'Entity')}" />
                        
                            <g:sortableColumn property="language" title="${message(code: 'translateTask.language.label', default: 'Language')}" />
                        
                            <g:sortableColumn property="property" title="${message(code: 'translateTask.property.label', default: 'Property')}" />
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${translateTaskInstanceList}" status="i" var="translateTaskInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${translateTaskInstance.id}">${fieldValue(bean: translateTaskInstance, field: "id")}</g:link></td>
                        
                            <td>${fieldValue(bean: translateTaskInstance, field: "entity")}</td>
                        
                            <td>${fieldValue(bean: translateTaskInstance, field: "language")}</td>
                        
                            <td>${fieldValue(bean: translateTaskInstance, field: "property")}</td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${translateTaskInstanceTotal}" />
            </div>
        </div>
    </body>
</html>
