
<%@ page import="com.bogdanmata.model.quiz.SingleChoiceTextQuiz" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'singleChoiceTextQuiz.label', default: 'SingleChoiceTextQuiz')}" />
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
                        
                            <g:sortableColumn property="id" title="${message(code: 'singleChoiceTextQuiz.id.label', default: 'Id')}" />
                        
                            <th><g:message code="singleChoiceTextQuiz.correctResponse.label" default="Correct Response" /></th>
                        
                            <g:sortableColumn property="help" title="${message(code: 'singleChoiceTextQuiz.help.label', default: 'Help')}" />
                        
                            <g:sortableColumn property="helpDe" title="${message(code: 'singleChoiceTextQuiz.helpDe.label', default: 'Help De')}" />
                        
                            <g:sortableColumn property="helpDeValidate" title="${message(code: 'singleChoiceTextQuiz.helpDeValidate.label', default: 'Help De Validate')}" />
                        
                            <g:sortableColumn property="helpEs" title="${message(code: 'singleChoiceTextQuiz.helpEs.label', default: 'Help Es')}" />
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${singleChoiceTextQuizInstanceList}" status="i" var="singleChoiceTextQuizInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${singleChoiceTextQuizInstance.id}">${fieldValue(bean: singleChoiceTextQuizInstance, field: "id")}</g:link></td>
                        
                            <td>${fieldValue(bean: singleChoiceTextQuizInstance, field: "correctResponse")}</td>
                        
                            <td>${fieldValue(bean: singleChoiceTextQuizInstance, field: "help")}</td>
                        
                            <td>${fieldValue(bean: singleChoiceTextQuizInstance, field: "helpDe")}</td>
                        
                            <td><g:formatBoolean boolean="${singleChoiceTextQuizInstance.helpDeValidate}" /></td>
                        
                            <td>${fieldValue(bean: singleChoiceTextQuizInstance, field: "helpEs")}</td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${singleChoiceTextQuizInstanceTotal}" />
            </div>
        </div>
    </body>
</html>
