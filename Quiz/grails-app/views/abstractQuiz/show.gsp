
<%@ page import="com.bogdanmata.model.quiz.AbstractQuiz" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'abstractQuiz.label', default: 'AbstractQuiz')}" />
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
                            <td valign="top" class="name"><g:message code="abstractQuiz.id.label" default="Id" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: abstractQuizInstance, field: "id")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="abstractQuiz.groups.label" default="Groups" /></td>
                            
                            <td valign="top" style="text-align: left;" class="value">
                                <ul>
                                <g:each in="${abstractQuizInstance.groups}" var="g">
                                    <li><g:link controller="quizGroupMapping" action="show" id="${g.id}">${g?.encodeAsHTML()}</g:link></li>
                                </g:each>
                                </ul>
                            </td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="abstractQuiz.help.label" default="Help" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: abstractQuizInstance, field: "help")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="abstractQuiz.helpDe.label" default="Help De" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: abstractQuizInstance, field: "helpDe")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="abstractQuiz.helpDeValidate.label" default="Help De Validate" /></td>
                            
                            <td valign="top" class="value"><g:formatBoolean boolean="${abstractQuizInstance?.helpDeValidate}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="abstractQuiz.helpEs.label" default="Help Es" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: abstractQuizInstance, field: "helpEs")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="abstractQuiz.helpEsValidate.label" default="Help Es Validate" /></td>
                            
                            <td valign="top" class="value"><g:formatBoolean boolean="${abstractQuizInstance?.helpEsValidate}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="abstractQuiz.helpFr.label" default="Help Fr" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: abstractQuizInstance, field: "helpFr")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="abstractQuiz.helpFrValidate.label" default="Help Fr Validate" /></td>
                            
                            <td valign="top" class="value"><g:formatBoolean boolean="${abstractQuizInstance?.helpFrValidate}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="abstractQuiz.helpIt.label" default="Help It" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: abstractQuizInstance, field: "helpIt")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="abstractQuiz.helpItValidate.label" default="Help It Validate" /></td>
                            
                            <td valign="top" class="value"><g:formatBoolean boolean="${abstractQuizInstance?.helpItValidate}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="abstractQuiz.helpRo.label" default="Help Ro" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: abstractQuizInstance, field: "helpRo")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="abstractQuiz.helpRoValidate.label" default="Help Ro Validate" /></td>
                            
                            <td valign="top" class="value"><g:formatBoolean boolean="${abstractQuizInstance?.helpRoValidate}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="abstractQuiz.hint.label" default="Hint" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: abstractQuizInstance, field: "hint")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="abstractQuiz.hintDe.label" default="Hint De" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: abstractQuizInstance, field: "hintDe")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="abstractQuiz.hintDeValidate.label" default="Hint De Validate" /></td>
                            
                            <td valign="top" class="value"><g:formatBoolean boolean="${abstractQuizInstance?.hintDeValidate}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="abstractQuiz.hintEs.label" default="Hint Es" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: abstractQuizInstance, field: "hintEs")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="abstractQuiz.hintEsValidate.label" default="Hint Es Validate" /></td>
                            
                            <td valign="top" class="value"><g:formatBoolean boolean="${abstractQuizInstance?.hintEsValidate}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="abstractQuiz.hintFr.label" default="Hint Fr" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: abstractQuizInstance, field: "hintFr")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="abstractQuiz.hintFrValidate.label" default="Hint Fr Validate" /></td>
                            
                            <td valign="top" class="value"><g:formatBoolean boolean="${abstractQuizInstance?.hintFrValidate}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="abstractQuiz.hintIt.label" default="Hint It" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: abstractQuizInstance, field: "hintIt")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="abstractQuiz.hintItValidate.label" default="Hint It Validate" /></td>
                            
                            <td valign="top" class="value"><g:formatBoolean boolean="${abstractQuizInstance?.hintItValidate}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="abstractQuiz.hintRo.label" default="Hint Ro" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: abstractQuizInstance, field: "hintRo")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="abstractQuiz.hintRoValidate.label" default="Hint Ro Validate" /></td>
                            
                            <td valign="top" class="value"><g:formatBoolean boolean="${abstractQuizInstance?.hintRoValidate}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="abstractQuiz.question.label" default="Question" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: abstractQuizInstance, field: "question")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="abstractQuiz.questionDe.label" default="Question De" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: abstractQuizInstance, field: "questionDe")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="abstractQuiz.questionDeValidate.label" default="Question De Validate" /></td>
                            
                            <td valign="top" class="value"><g:formatBoolean boolean="${abstractQuizInstance?.questionDeValidate}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="abstractQuiz.questionEs.label" default="Question Es" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: abstractQuizInstance, field: "questionEs")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="abstractQuiz.questionEsValidate.label" default="Question Es Validate" /></td>
                            
                            <td valign="top" class="value"><g:formatBoolean boolean="${abstractQuizInstance?.questionEsValidate}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="abstractQuiz.questionFr.label" default="Question Fr" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: abstractQuizInstance, field: "questionFr")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="abstractQuiz.questionFrValidate.label" default="Question Fr Validate" /></td>
                            
                            <td valign="top" class="value"><g:formatBoolean boolean="${abstractQuizInstance?.questionFrValidate}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="abstractQuiz.questionIt.label" default="Question It" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: abstractQuizInstance, field: "questionIt")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="abstractQuiz.questionItValidate.label" default="Question It Validate" /></td>
                            
                            <td valign="top" class="value"><g:formatBoolean boolean="${abstractQuizInstance?.questionItValidate}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="abstractQuiz.questionRo.label" default="Question Ro" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: abstractQuizInstance, field: "questionRo")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="abstractQuiz.questionRoValidate.label" default="Question Ro Validate" /></td>
                            
                            <td valign="top" class="value"><g:formatBoolean boolean="${abstractQuizInstance?.questionRoValidate}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="abstractQuiz.type.label" default="Type" /></td>
                            
                            <td valign="top" class="value">${abstractQuizInstance?.type?.encodeAsHTML()}</td>
                            
                        </tr>
                    
                    </tbody>
                </table>
            </div>
            <div class="buttons">
                <g:form>
                    <g:hiddenField name="id" value="${abstractQuizInstance?.id}" />
                    <span class="button"><g:actionSubmit class="edit" action="edit" value="${message(code: 'default.button.edit.label', default: 'Edit')}" /></span>
                    <span class="button"><g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" /></span>
                </g:form>
            </div>
        </div>
    </body>
</html>
