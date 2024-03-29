

<%@ page import="com.bogdanmata.quiz.security.UserRole" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'userRole.label', default: 'UserRole')}" />
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
            <g:hasErrors bean="${userRoleInstance}">
            <div class="errors">
                <g:renderErrors bean="${userRoleInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form action="save" >
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="role"><g:message code="userRole.role.label" default="Role" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: userRoleInstance, field: 'role', 'errors')}">
                                    <g:select name="role.id" from="${com.bogdanmata.quiz.security.Role.list()}" optionKey="id" value="${userRoleInstance?.role?.id}"  />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="user"><g:message code="userRole.user.label" default="User" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: userRoleInstance, field: 'user', 'errors')}">
                                    <g:select name="user.id" from="${com.bogdanmata.quiz.security.User.list()}" optionKey="id" value="${userRoleInstance?.user?.id}"  />
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
