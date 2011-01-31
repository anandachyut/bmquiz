
<%@ page import="com.bogdanmata.model.quiz.response.SingleChoiceTextQuizResponse" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'singleChoiceTextQuizResponse.label', default: 'SingleChoiceTextQuizResponse')}" />
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
                            <td valign="top" class="name"><g:message code="singleChoiceTextQuizResponse.id.label" default="Id" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: singleChoiceTextQuizResponseInstance, field: "id")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="singleChoiceTextQuizResponse.content.label" default="Content" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: singleChoiceTextQuizResponseInstance, field: "content")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="singleChoiceTextQuizResponse.contentDe.label" default="Content De" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: singleChoiceTextQuizResponseInstance, field: "contentDe")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="singleChoiceTextQuizResponse.contentEs.label" default="Content Es" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: singleChoiceTextQuizResponseInstance, field: "contentEs")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="singleChoiceTextQuizResponse.contentFr.label" default="Content Fr" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: singleChoiceTextQuizResponseInstance, field: "contentFr")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="singleChoiceTextQuizResponse.contentIt.label" default="Content It" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: singleChoiceTextQuizResponseInstance, field: "contentIt")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="singleChoiceTextQuizResponse.contentRo.label" default="Content Ro" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: singleChoiceTextQuizResponseInstance, field: "contentRo")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="singleChoiceTextQuizResponse.quiz.label" default="Quiz" /></td>
                            
                            <td valign="top" class="value"><g:link controller="singleChoiceTextQuiz" action="show" id="${singleChoiceTextQuizResponseInstance?.quiz?.id}">${singleChoiceTextQuizResponseInstance?.quiz?.encodeAsHTML()}</g:link></td>
                            
                        </tr>
                    
                    </tbody>
                </table>
            </div>
            <div class="buttons">
                <g:form>
                    <g:hiddenField name="id" value="${singleChoiceTextQuizResponseInstance?.id}" />
                    <span class="button"><g:actionSubmit class="edit" action="edit" value="${message(code: 'default.button.edit.label', default: 'Edit')}" /></span>
                    <span class="button"><g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" /></span>
                </g:form>
            </div>
        </div>
    </body>
</html>
