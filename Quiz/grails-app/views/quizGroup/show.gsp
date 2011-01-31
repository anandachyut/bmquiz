
<%@ page import="com.bogdanmata.model.quiz.QuizGroup" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'quizGroup.label', default: 'QuizGroup')}" />
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
                            <td valign="top" class="name"><g:message code="quizGroup.id.label" default="Id" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: quizGroupInstance, field: "id")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="quizGroup.description.label" default="Description" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: quizGroupInstance, field: "description")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="quizGroup.descriptionDe.label" default="Description De" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: quizGroupInstance, field: "descriptionDe")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="quizGroup.descriptionEs.label" default="Description Es" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: quizGroupInstance, field: "descriptionEs")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="quizGroup.descriptionFr.label" default="Description Fr" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: quizGroupInstance, field: "descriptionFr")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="quizGroup.descriptionIt.label" default="Description It" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: quizGroupInstance, field: "descriptionIt")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="quizGroup.descriptionRo.label" default="Description Ro" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: quizGroupInstance, field: "descriptionRo")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="quizGroup.groups.label" default="Groups" /></td>
                            
                            <td valign="top" style="text-align: left;" class="value">
                                <ul>
                                <g:each in="${quizGroupInstance.groups}" var="g">
                                    <li><g:link controller="quizGroupMapping" action="show" id="${g.id}">${g?.encodeAsHTML()}</g:link></li>
                                </g:each>
                                </ul>
                            </td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="quizGroup.name.label" default="Name" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: quizGroupInstance, field: "name")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="quizGroup.nameDe.label" default="Name De" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: quizGroupInstance, field: "nameDe")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="quizGroup.nameEs.label" default="Name Es" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: quizGroupInstance, field: "nameEs")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="quizGroup.nameFr.label" default="Name Fr" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: quizGroupInstance, field: "nameFr")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="quizGroup.nameIt.label" default="Name It" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: quizGroupInstance, field: "nameIt")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="quizGroup.nameRo.label" default="Name Ro" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: quizGroupInstance, field: "nameRo")}</td>
                            
                        </tr>
                    
                    </tbody>
                </table>
            </div>
            <div class="buttons">
                <g:form>
                    <g:hiddenField name="id" value="${quizGroupInstance?.id}" />
                    <span class="button"><g:actionSubmit class="edit" action="edit" value="${message(code: 'default.button.edit.label', default: 'Edit')}" /></span>
                    <span class="button"><g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" /></span>
                </g:form>
            </div>
        </div>
    </body>
</html>
