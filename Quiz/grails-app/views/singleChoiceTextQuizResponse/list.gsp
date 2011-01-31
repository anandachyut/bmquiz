
<%@ page import="com.bogdanmata.model.quiz.response.SingleChoiceTextQuizResponse" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'singleChoiceTextQuizResponse.label', default: 'SingleChoiceTextQuizResponse')}" />
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
                        
                            <g:sortableColumn property="id" title="${message(code: 'singleChoiceTextQuizResponse.id.label', default: 'Id')}" />
                        
                            <g:sortableColumn property="content" title="${message(code: 'singleChoiceTextQuizResponse.content.label', default: 'Content')}" />
                        
                            <g:sortableColumn property="contentDe" title="${message(code: 'singleChoiceTextQuizResponse.contentDe.label', default: 'Content De')}" />
                        
                            <g:sortableColumn property="contentEs" title="${message(code: 'singleChoiceTextQuizResponse.contentEs.label', default: 'Content Es')}" />
                        
                            <g:sortableColumn property="contentFr" title="${message(code: 'singleChoiceTextQuizResponse.contentFr.label', default: 'Content Fr')}" />
                        
                            <g:sortableColumn property="contentIt" title="${message(code: 'singleChoiceTextQuizResponse.contentIt.label', default: 'Content It')}" />
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${singleChoiceTextQuizResponseInstanceList}" status="i" var="singleChoiceTextQuizResponseInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${singleChoiceTextQuizResponseInstance.id}">${fieldValue(bean: singleChoiceTextQuizResponseInstance, field: "id")}</g:link></td>
                        
                            <td>${fieldValue(bean: singleChoiceTextQuizResponseInstance, field: "content")}</td>
                        
                            <td>${fieldValue(bean: singleChoiceTextQuizResponseInstance, field: "contentDe")}</td>
                        
                            <td>${fieldValue(bean: singleChoiceTextQuizResponseInstance, field: "contentEs")}</td>
                        
                            <td>${fieldValue(bean: singleChoiceTextQuizResponseInstance, field: "contentFr")}</td>
                        
                            <td>${fieldValue(bean: singleChoiceTextQuizResponseInstance, field: "contentIt")}</td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${singleChoiceTextQuizResponseInstanceTotal}" />
            </div>
        </div>
    </body>
</html>
