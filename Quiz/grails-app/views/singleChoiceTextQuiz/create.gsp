

<%@ page import="com.bogdanmata.model.quiz.SingleChoiceTextQuiz" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'singleChoiceTextQuiz.label', default: 'SingleChoiceTextQuiz')}" />
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
            <g:hasErrors bean="${singleChoiceTextQuizInstance}">
            <div class="errors">
                <g:renderErrors bean="${singleChoiceTextQuizInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form action="save" >
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="help"><g:message code="singleChoiceTextQuiz.help.label" default="Help" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: singleChoiceTextQuizInstance, field: 'help', 'errors')}">
                                    <g:textField name="help" value="${singleChoiceTextQuizInstance?.help}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="hint"><g:message code="singleChoiceTextQuiz.hint.label" default="Hint" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: singleChoiceTextQuizInstance, field: 'hint', 'errors')}">
                                    <g:textField name="hint" value="${singleChoiceTextQuizInstance?.hint}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="question"><g:message code="singleChoiceTextQuiz.question.label" default="Question" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: singleChoiceTextQuizInstance, field: 'question', 'errors')}">
                                    <g:textField name="question" value="${singleChoiceTextQuizInstance?.question}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="type"><g:message code="singleChoiceTextQuiz.type.label" default="Type" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: singleChoiceTextQuizInstance, field: 'type', 'errors')}">
                                    <g:select name="type" from="${com.bogdanmata.model.quiz.enums.QuizType?.values()}" keys="${com.bogdanmata.model.quiz.enums.QuizType?.values()*.name()}" value="${singleChoiceTextQuizInstance?.type?.name()}"  />
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
