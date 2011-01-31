

<%@ page import="com.bogdanmata.model.quiz.response.MultipleChoiceTextQuizResponse" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'multipleChoiceTextQuizResponse.label', default: 'MultipleChoiceTextQuizResponse')}" />
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
            <g:hasErrors bean="${multipleChoiceTextQuizResponseInstance}">
            <div class="errors">
                <g:renderErrors bean="${multipleChoiceTextQuizResponseInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form action="save" >
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="content"><g:message code="multipleChoiceTextQuizResponse.content.label" default="Content" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: multipleChoiceTextQuizResponseInstance, field: 'content', 'errors')}">
                                    <g:textField name="content" value="${multipleChoiceTextQuizResponseInstance?.content}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="contentDe"><g:message code="multipleChoiceTextQuizResponse.contentDe.label" default="Content De" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: multipleChoiceTextQuizResponseInstance, field: 'contentDe', 'errors')}">
                                    <g:textField name="contentDe" value="${multipleChoiceTextQuizResponseInstance?.contentDe}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="contentEs"><g:message code="multipleChoiceTextQuizResponse.contentEs.label" default="Content Es" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: multipleChoiceTextQuizResponseInstance, field: 'contentEs', 'errors')}">
                                    <g:textField name="contentEs" value="${multipleChoiceTextQuizResponseInstance?.contentEs}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="contentFr"><g:message code="multipleChoiceTextQuizResponse.contentFr.label" default="Content Fr" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: multipleChoiceTextQuizResponseInstance, field: 'contentFr', 'errors')}">
                                    <g:textField name="contentFr" value="${multipleChoiceTextQuizResponseInstance?.contentFr}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="contentIt"><g:message code="multipleChoiceTextQuizResponse.contentIt.label" default="Content It" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: multipleChoiceTextQuizResponseInstance, field: 'contentIt', 'errors')}">
                                    <g:textField name="contentIt" value="${multipleChoiceTextQuizResponseInstance?.contentIt}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="contentRo"><g:message code="multipleChoiceTextQuizResponse.contentRo.label" default="Content Ro" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: multipleChoiceTextQuizResponseInstance, field: 'contentRo', 'errors')}">
                                    <g:textField name="contentRo" value="${multipleChoiceTextQuizResponseInstance?.contentRo}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="correct"><g:message code="multipleChoiceTextQuizResponse.correct.label" default="Correct" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: multipleChoiceTextQuizResponseInstance, field: 'correct', 'errors')}">
                                    <g:checkBox name="correct" value="${multipleChoiceTextQuizResponseInstance?.correct}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="quiz"><g:message code="multipleChoiceTextQuizResponse.quiz.label" default="Quiz" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: multipleChoiceTextQuizResponseInstance, field: 'quiz', 'errors')}">
                                    <g:select name="quiz.id" from="${com.bogdanmata.model.quiz.MultipleChoiceTextQuiz.list()}" optionKey="id" value="${multipleChoiceTextQuizResponseInstance?.quiz?.id}"  />
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
