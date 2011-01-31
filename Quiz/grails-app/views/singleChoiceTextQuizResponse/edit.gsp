

<%@ page import="com.bogdanmata.model.quiz.response.SingleChoiceTextQuizResponse" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'singleChoiceTextQuizResponse.label', default: 'SingleChoiceTextQuizResponse')}" />
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
            <g:hasErrors bean="${singleChoiceTextQuizResponseInstance}">
            <div class="errors">
                <g:renderErrors bean="${singleChoiceTextQuizResponseInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form method="post" >
                <g:hiddenField name="id" value="${singleChoiceTextQuizResponseInstance?.id}" />
                <g:hiddenField name="version" value="${singleChoiceTextQuizResponseInstance?.version}" />
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="content"><g:message code="singleChoiceTextQuizResponse.content.label" default="Content" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: singleChoiceTextQuizResponseInstance, field: 'content', 'errors')}">
                                    <g:textField name="content" value="${singleChoiceTextQuizResponseInstance?.content}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="contentDe"><g:message code="singleChoiceTextQuizResponse.contentDe.label" default="Content De" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: singleChoiceTextQuizResponseInstance, field: 'contentDe', 'errors')}">
                                    <g:textField name="contentDe" value="${singleChoiceTextQuizResponseInstance?.contentDe}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="contentEs"><g:message code="singleChoiceTextQuizResponse.contentEs.label" default="Content Es" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: singleChoiceTextQuizResponseInstance, field: 'contentEs', 'errors')}">
                                    <g:textField name="contentEs" value="${singleChoiceTextQuizResponseInstance?.contentEs}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="contentFr"><g:message code="singleChoiceTextQuizResponse.contentFr.label" default="Content Fr" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: singleChoiceTextQuizResponseInstance, field: 'contentFr', 'errors')}">
                                    <g:textField name="contentFr" value="${singleChoiceTextQuizResponseInstance?.contentFr}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="contentIt"><g:message code="singleChoiceTextQuizResponse.contentIt.label" default="Content It" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: singleChoiceTextQuizResponseInstance, field: 'contentIt', 'errors')}">
                                    <g:textField name="contentIt" value="${singleChoiceTextQuizResponseInstance?.contentIt}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="contentRo"><g:message code="singleChoiceTextQuizResponse.contentRo.label" default="Content Ro" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: singleChoiceTextQuizResponseInstance, field: 'contentRo', 'errors')}">
                                    <g:textField name="contentRo" value="${singleChoiceTextQuizResponseInstance?.contentRo}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="quiz"><g:message code="singleChoiceTextQuizResponse.quiz.label" default="Quiz" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: singleChoiceTextQuizResponseInstance, field: 'quiz', 'errors')}">
                                    <g:select name="quiz.id" from="${com.bogdanmata.model.quiz.SingleChoiceTextQuiz.list()}" optionKey="id" value="${singleChoiceTextQuizResponseInstance?.quiz?.id}"  />
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
