
<%@ page import="com.bogdanmata.model.quiz.MultipleChoiceTextQuiz" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'multipleChoiceTextQuiz.label', default: 'MultipleChoiceTextQuiz')}" />
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
                            <td valign="top" class="name"><g:message code="multipleChoiceTextQuiz.id.label" default="Id" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: multipleChoiceTextQuizInstance, field: "id")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="multipleChoiceTextQuiz.groups.label" default="Groups" /></td>
                            
                            <td valign="top" style="text-align: left;" class="value">
                                <ul>
                                <g:each in="${multipleChoiceTextQuizInstance.groups}" var="g">
                                    <li><g:link controller="quizGroupMapping" action="show" id="${g.id}">${g?.encodeAsHTML()}</g:link></li>
                                </g:each>
                                </ul>
                            </td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="multipleChoiceTextQuiz.help.label" default="Help" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: multipleChoiceTextQuizInstance, field: "help")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="multipleChoiceTextQuiz.helpDe.label" default="Help De" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: multipleChoiceTextQuizInstance, field: "helpDe")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="multipleChoiceTextQuiz.helpDeValidate.label" default="Help De Validate" /></td>
                            
                            <td valign="top" class="value"><g:formatBoolean boolean="${multipleChoiceTextQuizInstance?.helpDeValidate}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="multipleChoiceTextQuiz.helpEs.label" default="Help Es" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: multipleChoiceTextQuizInstance, field: "helpEs")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="multipleChoiceTextQuiz.helpEsValidate.label" default="Help Es Validate" /></td>
                            
                            <td valign="top" class="value"><g:formatBoolean boolean="${multipleChoiceTextQuizInstance?.helpEsValidate}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="multipleChoiceTextQuiz.helpFr.label" default="Help Fr" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: multipleChoiceTextQuizInstance, field: "helpFr")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="multipleChoiceTextQuiz.helpFrValidate.label" default="Help Fr Validate" /></td>
                            
                            <td valign="top" class="value"><g:formatBoolean boolean="${multipleChoiceTextQuizInstance?.helpFrValidate}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="multipleChoiceTextQuiz.helpIt.label" default="Help It" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: multipleChoiceTextQuizInstance, field: "helpIt")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="multipleChoiceTextQuiz.helpItValidate.label" default="Help It Validate" /></td>
                            
                            <td valign="top" class="value"><g:formatBoolean boolean="${multipleChoiceTextQuizInstance?.helpItValidate}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="multipleChoiceTextQuiz.helpRo.label" default="Help Ro" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: multipleChoiceTextQuizInstance, field: "helpRo")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="multipleChoiceTextQuiz.helpRoValidate.label" default="Help Ro Validate" /></td>
                            
                            <td valign="top" class="value"><g:formatBoolean boolean="${multipleChoiceTextQuizInstance?.helpRoValidate}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="multipleChoiceTextQuiz.hint.label" default="Hint" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: multipleChoiceTextQuizInstance, field: "hint")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="multipleChoiceTextQuiz.hintDe.label" default="Hint De" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: multipleChoiceTextQuizInstance, field: "hintDe")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="multipleChoiceTextQuiz.hintDeValidate.label" default="Hint De Validate" /></td>
                            
                            <td valign="top" class="value"><g:formatBoolean boolean="${multipleChoiceTextQuizInstance?.hintDeValidate}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="multipleChoiceTextQuiz.hintEs.label" default="Hint Es" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: multipleChoiceTextQuizInstance, field: "hintEs")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="multipleChoiceTextQuiz.hintEsValidate.label" default="Hint Es Validate" /></td>
                            
                            <td valign="top" class="value"><g:formatBoolean boolean="${multipleChoiceTextQuizInstance?.hintEsValidate}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="multipleChoiceTextQuiz.hintFr.label" default="Hint Fr" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: multipleChoiceTextQuizInstance, field: "hintFr")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="multipleChoiceTextQuiz.hintFrValidate.label" default="Hint Fr Validate" /></td>
                            
                            <td valign="top" class="value"><g:formatBoolean boolean="${multipleChoiceTextQuizInstance?.hintFrValidate}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="multipleChoiceTextQuiz.hintIt.label" default="Hint It" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: multipleChoiceTextQuizInstance, field: "hintIt")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="multipleChoiceTextQuiz.hintItValidate.label" default="Hint It Validate" /></td>
                            
                            <td valign="top" class="value"><g:formatBoolean boolean="${multipleChoiceTextQuizInstance?.hintItValidate}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="multipleChoiceTextQuiz.hintRo.label" default="Hint Ro" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: multipleChoiceTextQuizInstance, field: "hintRo")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="multipleChoiceTextQuiz.hintRoValidate.label" default="Hint Ro Validate" /></td>
                            
                            <td valign="top" class="value"><g:formatBoolean boolean="${multipleChoiceTextQuizInstance?.hintRoValidate}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="multipleChoiceTextQuiz.question.label" default="Question" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: multipleChoiceTextQuizInstance, field: "question")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="multipleChoiceTextQuiz.questionDe.label" default="Question De" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: multipleChoiceTextQuizInstance, field: "questionDe")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="multipleChoiceTextQuiz.questionDeValidate.label" default="Question De Validate" /></td>
                            
                            <td valign="top" class="value"><g:formatBoolean boolean="${multipleChoiceTextQuizInstance?.questionDeValidate}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="multipleChoiceTextQuiz.questionEs.label" default="Question Es" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: multipleChoiceTextQuizInstance, field: "questionEs")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="multipleChoiceTextQuiz.questionEsValidate.label" default="Question Es Validate" /></td>
                            
                            <td valign="top" class="value"><g:formatBoolean boolean="${multipleChoiceTextQuizInstance?.questionEsValidate}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="multipleChoiceTextQuiz.questionFr.label" default="Question Fr" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: multipleChoiceTextQuizInstance, field: "questionFr")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="multipleChoiceTextQuiz.questionFrValidate.label" default="Question Fr Validate" /></td>
                            
                            <td valign="top" class="value"><g:formatBoolean boolean="${multipleChoiceTextQuizInstance?.questionFrValidate}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="multipleChoiceTextQuiz.questionIt.label" default="Question It" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: multipleChoiceTextQuizInstance, field: "questionIt")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="multipleChoiceTextQuiz.questionItValidate.label" default="Question It Validate" /></td>
                            
                            <td valign="top" class="value"><g:formatBoolean boolean="${multipleChoiceTextQuizInstance?.questionItValidate}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="multipleChoiceTextQuiz.questionRo.label" default="Question Ro" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: multipleChoiceTextQuizInstance, field: "questionRo")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="multipleChoiceTextQuiz.questionRoValidate.label" default="Question Ro Validate" /></td>
                            
                            <td valign="top" class="value"><g:formatBoolean boolean="${multipleChoiceTextQuizInstance?.questionRoValidate}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="multipleChoiceTextQuiz.responses.label" default="Responses" /></td>
                            
                            <td valign="top" style="text-align: left;" class="value">
                                <ul>
                                <g:each in="${multipleChoiceTextQuizInstance.responses}" var="r">
                                    <li><g:link controller="multipleChoiceTextQuizResponse" action="show" id="${r.id}">${r?.encodeAsHTML()}</g:link></li>
                                </g:each>
                                </ul>
                            </td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="multipleChoiceTextQuiz.type.label" default="Type" /></td>
                            
                            <td valign="top" class="value">${multipleChoiceTextQuizInstance?.type?.encodeAsHTML()}</td>
                            
                        </tr>
                    
                    </tbody>
                </table>
            </div>
            <div class="buttons">
                <g:form>
                    <g:hiddenField name="id" value="${multipleChoiceTextQuizInstance?.id}" />
                    <span class="button"><g:actionSubmit class="edit" action="edit" value="${message(code: 'default.button.edit.label', default: 'Edit')}" /></span>
                    <span class="button"><g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" /></span>
                </g:form>
            </div>
        </div>
    </body>
</html>
