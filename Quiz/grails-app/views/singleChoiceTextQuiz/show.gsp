
<%@ page import="com.bogdanmata.model.quiz.SingleChoiceTextQuiz" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'singleChoiceTextQuiz.label', default: 'SingleChoiceTextQuiz')}" />
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
                            <td valign="top" class="name"><g:message code="singleChoiceTextQuiz.id.label" default="Id" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: singleChoiceTextQuizInstance, field: "id")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="singleChoiceTextQuiz.correctResponse.label" default="Correct Response" /></td>
                            
                            <td valign="top" class="value"><g:link controller="singleChoiceTextQuizResponse" action="show" id="${singleChoiceTextQuizInstance?.correctResponse?.id}">${singleChoiceTextQuizInstance?.correctResponse?.encodeAsHTML()}</g:link></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="singleChoiceTextQuiz.groups.label" default="Groups" /></td>
                            
                            <td valign="top" style="text-align: left;" class="value">
                                <ul>
                                <g:each in="${singleChoiceTextQuizInstance.groups}" var="g">
                                    <li><g:link controller="quizGroupMapping" action="show" id="${g.id}">${g?.encodeAsHTML()}</g:link></li>
                                </g:each>
                                </ul>
                            </td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="singleChoiceTextQuiz.help.label" default="Help" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: singleChoiceTextQuizInstance, field: "help")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="singleChoiceTextQuiz.helpDe.label" default="Help De" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: singleChoiceTextQuizInstance, field: "helpDe")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="singleChoiceTextQuiz.helpDeValidate.label" default="Help De Validate" /></td>
                            
                            <td valign="top" class="value"><g:formatBoolean boolean="${singleChoiceTextQuizInstance?.helpDeValidate}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="singleChoiceTextQuiz.helpEs.label" default="Help Es" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: singleChoiceTextQuizInstance, field: "helpEs")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="singleChoiceTextQuiz.helpEsValidate.label" default="Help Es Validate" /></td>
                            
                            <td valign="top" class="value"><g:formatBoolean boolean="${singleChoiceTextQuizInstance?.helpEsValidate}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="singleChoiceTextQuiz.helpFr.label" default="Help Fr" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: singleChoiceTextQuizInstance, field: "helpFr")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="singleChoiceTextQuiz.helpFrValidate.label" default="Help Fr Validate" /></td>
                            
                            <td valign="top" class="value"><g:formatBoolean boolean="${singleChoiceTextQuizInstance?.helpFrValidate}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="singleChoiceTextQuiz.helpIt.label" default="Help It" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: singleChoiceTextQuizInstance, field: "helpIt")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="singleChoiceTextQuiz.helpItValidate.label" default="Help It Validate" /></td>
                            
                            <td valign="top" class="value"><g:formatBoolean boolean="${singleChoiceTextQuizInstance?.helpItValidate}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="singleChoiceTextQuiz.helpRo.label" default="Help Ro" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: singleChoiceTextQuizInstance, field: "helpRo")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="singleChoiceTextQuiz.helpRoValidate.label" default="Help Ro Validate" /></td>
                            
                            <td valign="top" class="value"><g:formatBoolean boolean="${singleChoiceTextQuizInstance?.helpRoValidate}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="singleChoiceTextQuiz.hint.label" default="Hint" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: singleChoiceTextQuizInstance, field: "hint")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="singleChoiceTextQuiz.hintDe.label" default="Hint De" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: singleChoiceTextQuizInstance, field: "hintDe")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="singleChoiceTextQuiz.hintDeValidate.label" default="Hint De Validate" /></td>
                            
                            <td valign="top" class="value"><g:formatBoolean boolean="${singleChoiceTextQuizInstance?.hintDeValidate}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="singleChoiceTextQuiz.hintEs.label" default="Hint Es" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: singleChoiceTextQuizInstance, field: "hintEs")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="singleChoiceTextQuiz.hintEsValidate.label" default="Hint Es Validate" /></td>
                            
                            <td valign="top" class="value"><g:formatBoolean boolean="${singleChoiceTextQuizInstance?.hintEsValidate}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="singleChoiceTextQuiz.hintFr.label" default="Hint Fr" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: singleChoiceTextQuizInstance, field: "hintFr")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="singleChoiceTextQuiz.hintFrValidate.label" default="Hint Fr Validate" /></td>
                            
                            <td valign="top" class="value"><g:formatBoolean boolean="${singleChoiceTextQuizInstance?.hintFrValidate}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="singleChoiceTextQuiz.hintIt.label" default="Hint It" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: singleChoiceTextQuizInstance, field: "hintIt")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="singleChoiceTextQuiz.hintItValidate.label" default="Hint It Validate" /></td>
                            
                            <td valign="top" class="value"><g:formatBoolean boolean="${singleChoiceTextQuizInstance?.hintItValidate}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="singleChoiceTextQuiz.hintRo.label" default="Hint Ro" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: singleChoiceTextQuizInstance, field: "hintRo")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="singleChoiceTextQuiz.hintRoValidate.label" default="Hint Ro Validate" /></td>
                            
                            <td valign="top" class="value"><g:formatBoolean boolean="${singleChoiceTextQuizInstance?.hintRoValidate}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="singleChoiceTextQuiz.question.label" default="Question" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: singleChoiceTextQuizInstance, field: "question")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="singleChoiceTextQuiz.questionDe.label" default="Question De" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: singleChoiceTextQuizInstance, field: "questionDe")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="singleChoiceTextQuiz.questionDeValidate.label" default="Question De Validate" /></td>
                            
                            <td valign="top" class="value"><g:formatBoolean boolean="${singleChoiceTextQuizInstance?.questionDeValidate}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="singleChoiceTextQuiz.questionEs.label" default="Question Es" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: singleChoiceTextQuizInstance, field: "questionEs")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="singleChoiceTextQuiz.questionEsValidate.label" default="Question Es Validate" /></td>
                            
                            <td valign="top" class="value"><g:formatBoolean boolean="${singleChoiceTextQuizInstance?.questionEsValidate}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="singleChoiceTextQuiz.questionFr.label" default="Question Fr" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: singleChoiceTextQuizInstance, field: "questionFr")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="singleChoiceTextQuiz.questionFrValidate.label" default="Question Fr Validate" /></td>
                            
                            <td valign="top" class="value"><g:formatBoolean boolean="${singleChoiceTextQuizInstance?.questionFrValidate}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="singleChoiceTextQuiz.questionIt.label" default="Question It" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: singleChoiceTextQuizInstance, field: "questionIt")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="singleChoiceTextQuiz.questionItValidate.label" default="Question It Validate" /></td>
                            
                            <td valign="top" class="value"><g:formatBoolean boolean="${singleChoiceTextQuizInstance?.questionItValidate}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="singleChoiceTextQuiz.questionRo.label" default="Question Ro" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: singleChoiceTextQuizInstance, field: "questionRo")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="singleChoiceTextQuiz.questionRoValidate.label" default="Question Ro Validate" /></td>
                            
                            <td valign="top" class="value"><g:formatBoolean boolean="${singleChoiceTextQuizInstance?.questionRoValidate}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="singleChoiceTextQuiz.responses.label" default="Responses" /></td>
                            
                            <td valign="top" style="text-align: left;" class="value">
                                <ul>
                                <g:each in="${singleChoiceTextQuizInstance.responses}" var="r">
                                    <li><g:link controller="singleChoiceTextQuizResponse" action="show" id="${r.id}">${r?.encodeAsHTML()}</g:link></li>
                                </g:each>
                                </ul>
                            </td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="singleChoiceTextQuiz.type.label" default="Type" /></td>
                            
                            <td valign="top" class="value">${singleChoiceTextQuizInstance?.type?.encodeAsHTML()}</td>
                            
                        </tr>
                    
                    </tbody>
                </table>
            </div>
            <div class="buttons">
                <g:form>
                    <g:hiddenField name="id" value="${singleChoiceTextQuizInstance?.id}" />
                    <span class="button"><g:actionSubmit class="edit" action="edit" value="${message(code: 'default.button.edit.label', default: 'Edit')}" /></span>
                    <span class="button"><g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" /></span>
                </g:form>
            </div>
        </div>
    </body>
</html>
