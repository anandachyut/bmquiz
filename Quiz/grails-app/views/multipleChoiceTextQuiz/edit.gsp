

<%@ page import="com.bogdanmata.model.quiz.MultipleChoiceTextQuiz" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'multipleChoiceTextQuiz.label', default: 'MultipleChoiceTextQuiz')}" />
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
            <g:hasErrors bean="${multipleChoiceTextQuizInstance}">
            <div class="errors">
                <g:renderErrors bean="${multipleChoiceTextQuizInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form method="post" >
                <g:hiddenField name="id" value="${multipleChoiceTextQuizInstance?.id}" />
                <g:hiddenField name="version" value="${multipleChoiceTextQuizInstance?.version}" />
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="help"><g:message code="multipleChoiceTextQuiz.help.label" default="Help" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: multipleChoiceTextQuizInstance, field: 'help', 'errors')}">
                                    <g:textField name="help" value="${multipleChoiceTextQuizInstance?.help}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="hint"><g:message code="multipleChoiceTextQuiz.hint.label" default="Hint" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: multipleChoiceTextQuizInstance, field: 'hint', 'errors')}">
                                    <g:textField name="hint" value="${multipleChoiceTextQuizInstance?.hint}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="question"><g:message code="multipleChoiceTextQuiz.question.label" default="Question" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: multipleChoiceTextQuizInstance, field: 'question', 'errors')}">
                                    <g:textField name="question" value="${multipleChoiceTextQuizInstance?.question}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="type"><g:message code="multipleChoiceTextQuiz.type.label" default="Type" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: multipleChoiceTextQuizInstance, field: 'type', 'errors')}">
                                    <g:select name="type" from="${com.bogdanmata.model.quiz.enums.QuizType?.values()}" keys="${com.bogdanmata.model.quiz.enums.QuizType?.values()*.name()}" value="${multipleChoiceTextQuizInstance?.type?.name()}"  />
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
