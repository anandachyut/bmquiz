
<%@ page import="com.bogdanmata.model.quiz.response.MultipleChoiceTextQuizResponse" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'multipleChoiceTextQuizResponse.label', default: 'MultipleChoiceTextQuizResponse')}" />
        <title><g:message code="default.show.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></span>
            <span class="menuButton"><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></span>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="default.show.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="dialog">
                <table>
                    <tbody>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="multipleChoiceTextQuizResponse.id.label" default="Id" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: multipleChoiceTextQuizResponseInstance, field: "id")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="multipleChoiceTextQuizResponse.content.label" default="Content" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: multipleChoiceTextQuizResponseInstance, field: "content")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="multipleChoiceTextQuizResponse.contentDe.label" default="Content De" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: multipleChoiceTextQuizResponseInstance, field: "contentDe")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="multipleChoiceTextQuizResponse.contentEs.label" default="Content Es" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: multipleChoiceTextQuizResponseInstance, field: "contentEs")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="multipleChoiceTextQuizResponse.contentFr.label" default="Content Fr" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: multipleChoiceTextQuizResponseInstance, field: "contentFr")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="multipleChoiceTextQuizResponse.contentIt.label" default="Content It" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: multipleChoiceTextQuizResponseInstance, field: "contentIt")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="multipleChoiceTextQuizResponse.contentRo.label" default="Content Ro" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: multipleChoiceTextQuizResponseInstance, field: "contentRo")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="multipleChoiceTextQuizResponse.correct.label" default="Correct" /></td>
                            
                            <td valign="top" class="value"><g:formatBoolean boolean="${multipleChoiceTextQuizResponseInstance?.correct}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="multipleChoiceTextQuizResponse.quiz.label" default="Quiz" /></td>
                            
                            <td valign="top" class="value"><g:link controller="multipleChoiceTextQuiz" action="show" id="${multipleChoiceTextQuizResponseInstance?.quiz?.id}">${multipleChoiceTextQuizResponseInstance?.quiz?.encodeAsHTML()}</g:link></td>
                            
                        </tr>
                    
                    </tbody>
                </table>
            </div>
            <div class="buttons">
                <g:form>
                    <g:hiddenField name="id" value="${multipleChoiceTextQuizResponseInstance?.id}" />
                    <span class="button"><g:actionSubmit class="edit" action="edit" value="${message(code: 'default.button.edit.label', default: 'Edit')}" /></span>
                    <span class="button"><g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" /></span>
                </g:form>
            </div>
        </div>
    </body>
</html>
