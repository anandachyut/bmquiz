
<%@ page import="com.bogdanmata.model.quiz.QuizGroup" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'quizGroup.label', default: 'QuizGroup')}" />
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
                        
                            <g:sortableColumn property="id" title="${message(code: 'quizGroup.id.label', default: 'Id')}" />
                        
                            <g:sortableColumn property="description" title="${message(code: 'quizGroup.description.label', default: 'Description')}" />
                        
                            <g:sortableColumn property="descriptionDe" title="${message(code: 'quizGroup.descriptionDe.label', default: 'Description De')}" />
                        
                            <g:sortableColumn property="descriptionEs" title="${message(code: 'quizGroup.descriptionEs.label', default: 'Description Es')}" />
                        
                            <g:sortableColumn property="descriptionFr" title="${message(code: 'quizGroup.descriptionFr.label', default: 'Description Fr')}" />
                        
                            <g:sortableColumn property="descriptionIt" title="${message(code: 'quizGroup.descriptionIt.label', default: 'Description It')}" />
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${quizGroupInstanceList}" status="i" var="quizGroupInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${quizGroupInstance.id}">${fieldValue(bean: quizGroupInstance, field: "id")}</g:link></td>
                        
                            <td>${fieldValue(bean: quizGroupInstance, field: "description")}</td>
                        
                            <td>${fieldValue(bean: quizGroupInstance, field: "descriptionDe")}</td>
                        
                            <td>${fieldValue(bean: quizGroupInstance, field: "descriptionEs")}</td>
                        
                            <td>${fieldValue(bean: quizGroupInstance, field: "descriptionFr")}</td>
                        
                            <td>${fieldValue(bean: quizGroupInstance, field: "descriptionIt")}</td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${quizGroupInstanceTotal}" />
            </div>
        </div>
    </body>
</html>
