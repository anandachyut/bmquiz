
<%@ page import="com.bogdanmata.model.quiz.AbstractQuiz" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'abstractQuiz.label', default: 'AbstractQuiz')}" />
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
                        
                            <g:sortableColumn property="id" title="${message(code: 'abstractQuiz.id.label', default: 'Id')}" />
                        
                            <g:sortableColumn property="help" title="${message(code: 'abstractQuiz.help.label', default: 'Help')}" />
                        
                            <g:sortableColumn property="helpDe" title="${message(code: 'abstractQuiz.helpDe.label', default: 'Help De')}" />
                        
                            <g:sortableColumn property="helpDeValidate" title="${message(code: 'abstractQuiz.helpDeValidate.label', default: 'Help De Validate')}" />
                        
                            <g:sortableColumn property="helpEs" title="${message(code: 'abstractQuiz.helpEs.label', default: 'Help Es')}" />
                        
                            <g:sortableColumn property="helpEsValidate" title="${message(code: 'abstractQuiz.helpEsValidate.label', default: 'Help Es Validate')}" />
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${abstractQuizInstanceList}" status="i" var="abstractQuizInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${abstractQuizInstance.id}">${fieldValue(bean: abstractQuizInstance, field: "id")}</g:link></td>
                        
                            <td>${fieldValue(bean: abstractQuizInstance, field: "help")}</td>
                        
                            <td>${fieldValue(bean: abstractQuizInstance, field: "helpDe")}</td>
                        
                            <td><g:formatBoolean boolean="${abstractQuizInstance.helpDeValidate}" /></td>
                        
                            <td>${fieldValue(bean: abstractQuizInstance, field: "helpEs")}</td>
                        
                            <td><g:formatBoolean boolean="${abstractQuizInstance.helpEsValidate}" /></td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${abstractQuizInstanceTotal}" />
            </div>
        </div>
    </body>
</html>
