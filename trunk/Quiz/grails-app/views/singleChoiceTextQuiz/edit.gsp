<%@ page import="com.bogdanmata.model.quiz.SingleChoiceTextQuiz" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'singleChoiceTextQuiz.label', default: 'SingleChoiceTextQuiz')}" />
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
            <g:hasErrors bean="${singleChoiceTextQuizInstance}">
            <div class="errors">
                <g:renderErrors bean="${singleChoiceTextQuizInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form method="post" >
                <g:hiddenField name="id" value="${singleChoiceTextQuizInstance?.id}" />
                <g:hiddenField name="version" value="${singleChoiceTextQuizInstance?.version}" />
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="correctResponse"><g:message code="singleChoiceTextQuiz.correctResponse.label" default="Correct Response" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: singleChoiceTextQuizInstance, field: 'correctResponse', 'errors')}">
                                    <g:select name="correctResponse.id" from="${com.bogdanmata.model.quiz.response.SingleChoiceTextQuizResponse.list()}" optionKey="id" value="${singleChoiceTextQuizInstance?.correctResponse?.id}"  />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="groups"><g:message code="singleChoiceTextQuiz.groups.label" default="Groups" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: singleChoiceTextQuizInstance, field: 'groups', 'errors')}">
                                    
<ul>
<g:each in="${singleChoiceTextQuizInstance?.groups?}" var="g">
    <li><g:link controller="quizGroupMapping" action="show" id="${g.id}">${g?.encodeAsHTML()}</g:link></li>
</g:each>
</ul>
<g:link controller="quizGroupMapping" action="create" params="['singleChoiceTextQuiz.id': singleChoiceTextQuizInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'quizGroupMapping.label', default: 'QuizGroupMapping')])}</g:link>

                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="help"><g:message code="singleChoiceTextQuiz.help.label" default="Help" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: singleChoiceTextQuizInstance, field: 'help', 'errors')}">
                                    <g:textField name="help" value="${singleChoiceTextQuizInstance?.help}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="helpDe"><g:message code="singleChoiceTextQuiz.helpDe.label" default="Help De" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: singleChoiceTextQuizInstance, field: 'helpDe', 'errors')}">
                                    <g:textField name="helpDe" value="${singleChoiceTextQuizInstance?.helpDe}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="helpDeValidate"><g:message code="singleChoiceTextQuiz.helpDeValidate.label" default="Help De Validate" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: singleChoiceTextQuizInstance, field: 'helpDeValidate', 'errors')}">
                                    <g:checkBox name="helpDeValidate" value="${singleChoiceTextQuizInstance?.helpDeValidate}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="helpEs"><g:message code="singleChoiceTextQuiz.helpEs.label" default="Help Es" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: singleChoiceTextQuizInstance, field: 'helpEs', 'errors')}">
                                    <g:textField name="helpEs" value="${singleChoiceTextQuizInstance?.helpEs}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="helpEsValidate"><g:message code="singleChoiceTextQuiz.helpEsValidate.label" default="Help Es Validate" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: singleChoiceTextQuizInstance, field: 'helpEsValidate', 'errors')}">
                                    <g:checkBox name="helpEsValidate" value="${singleChoiceTextQuizInstance?.helpEsValidate}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="helpFr"><g:message code="singleChoiceTextQuiz.helpFr.label" default="Help Fr" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: singleChoiceTextQuizInstance, field: 'helpFr', 'errors')}">
                                    <g:textField name="helpFr" value="${singleChoiceTextQuizInstance?.helpFr}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="helpFrValidate"><g:message code="singleChoiceTextQuiz.helpFrValidate.label" default="Help Fr Validate" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: singleChoiceTextQuizInstance, field: 'helpFrValidate', 'errors')}">
                                    <g:checkBox name="helpFrValidate" value="${singleChoiceTextQuizInstance?.helpFrValidate}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="helpIt"><g:message code="singleChoiceTextQuiz.helpIt.label" default="Help It" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: singleChoiceTextQuizInstance, field: 'helpIt', 'errors')}">
                                    <g:textField name="helpIt" value="${singleChoiceTextQuizInstance?.helpIt}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="helpItValidate"><g:message code="singleChoiceTextQuiz.helpItValidate.label" default="Help It Validate" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: singleChoiceTextQuizInstance, field: 'helpItValidate', 'errors')}">
                                    <g:checkBox name="helpItValidate" value="${singleChoiceTextQuizInstance?.helpItValidate}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="helpRo"><g:message code="singleChoiceTextQuiz.helpRo.label" default="Help Ro" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: singleChoiceTextQuizInstance, field: 'helpRo', 'errors')}">
                                    <g:textField name="helpRo" value="${singleChoiceTextQuizInstance?.helpRo}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="helpRoValidate"><g:message code="singleChoiceTextQuiz.helpRoValidate.label" default="Help Ro Validate" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: singleChoiceTextQuizInstance, field: 'helpRoValidate', 'errors')}">
                                    <g:checkBox name="helpRoValidate" value="${singleChoiceTextQuizInstance?.helpRoValidate}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="hint"><g:message code="singleChoiceTextQuiz.hint.label" default="Hint" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: singleChoiceTextQuizInstance, field: 'hint', 'errors')}">
                                    <g:textField name="hint" value="${singleChoiceTextQuizInstance?.hint}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="hintDe"><g:message code="singleChoiceTextQuiz.hintDe.label" default="Hint De" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: singleChoiceTextQuizInstance, field: 'hintDe', 'errors')}">
                                    <g:textField name="hintDe" value="${singleChoiceTextQuizInstance?.hintDe}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="hintDeValidate"><g:message code="singleChoiceTextQuiz.hintDeValidate.label" default="Hint De Validate" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: singleChoiceTextQuizInstance, field: 'hintDeValidate', 'errors')}">
                                    <g:checkBox name="hintDeValidate" value="${singleChoiceTextQuizInstance?.hintDeValidate}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="hintEs"><g:message code="singleChoiceTextQuiz.hintEs.label" default="Hint Es" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: singleChoiceTextQuizInstance, field: 'hintEs', 'errors')}">
                                    <g:textField name="hintEs" value="${singleChoiceTextQuizInstance?.hintEs}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="hintEsValidate"><g:message code="singleChoiceTextQuiz.hintEsValidate.label" default="Hint Es Validate" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: singleChoiceTextQuizInstance, field: 'hintEsValidate', 'errors')}">
                                    <g:checkBox name="hintEsValidate" value="${singleChoiceTextQuizInstance?.hintEsValidate}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="hintFr"><g:message code="singleChoiceTextQuiz.hintFr.label" default="Hint Fr" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: singleChoiceTextQuizInstance, field: 'hintFr', 'errors')}">
                                    <g:textField name="hintFr" value="${singleChoiceTextQuizInstance?.hintFr}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="hintFrValidate"><g:message code="singleChoiceTextQuiz.hintFrValidate.label" default="Hint Fr Validate" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: singleChoiceTextQuizInstance, field: 'hintFrValidate', 'errors')}">
                                    <g:checkBox name="hintFrValidate" value="${singleChoiceTextQuizInstance?.hintFrValidate}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="hintIt"><g:message code="singleChoiceTextQuiz.hintIt.label" default="Hint It" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: singleChoiceTextQuizInstance, field: 'hintIt', 'errors')}">
                                    <g:textField name="hintIt" value="${singleChoiceTextQuizInstance?.hintIt}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="hintItValidate"><g:message code="singleChoiceTextQuiz.hintItValidate.label" default="Hint It Validate" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: singleChoiceTextQuizInstance, field: 'hintItValidate', 'errors')}">
                                    <g:checkBox name="hintItValidate" value="${singleChoiceTextQuizInstance?.hintItValidate}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="hintRo"><g:message code="singleChoiceTextQuiz.hintRo.label" default="Hint Ro" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: singleChoiceTextQuizInstance, field: 'hintRo', 'errors')}">
                                    <g:textField name="hintRo" value="${singleChoiceTextQuizInstance?.hintRo}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="hintRoValidate"><g:message code="singleChoiceTextQuiz.hintRoValidate.label" default="Hint Ro Validate" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: singleChoiceTextQuizInstance, field: 'hintRoValidate', 'errors')}">
                                    <g:checkBox name="hintRoValidate" value="${singleChoiceTextQuizInstance?.hintRoValidate}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="question"><g:message code="singleChoiceTextQuiz.question.label" default="Question" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: singleChoiceTextQuizInstance, field: 'question', 'errors')}">
                                    <g:textField name="question" value="${singleChoiceTextQuizInstance?.question}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="questionDe"><g:message code="singleChoiceTextQuiz.questionDe.label" default="Question De" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: singleChoiceTextQuizInstance, field: 'questionDe', 'errors')}">
                                    <g:textField name="questionDe" value="${singleChoiceTextQuizInstance?.questionDe}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="questionDeValidate"><g:message code="singleChoiceTextQuiz.questionDeValidate.label" default="Question De Validate" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: singleChoiceTextQuizInstance, field: 'questionDeValidate', 'errors')}">
                                    <g:checkBox name="questionDeValidate" value="${singleChoiceTextQuizInstance?.questionDeValidate}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="questionEs"><g:message code="singleChoiceTextQuiz.questionEs.label" default="Question Es" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: singleChoiceTextQuizInstance, field: 'questionEs', 'errors')}">
                                    <g:textField name="questionEs" value="${singleChoiceTextQuizInstance?.questionEs}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="questionEsValidate"><g:message code="singleChoiceTextQuiz.questionEsValidate.label" default="Question Es Validate" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: singleChoiceTextQuizInstance, field: 'questionEsValidate', 'errors')}">
                                    <g:checkBox name="questionEsValidate" value="${singleChoiceTextQuizInstance?.questionEsValidate}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="questionFr"><g:message code="singleChoiceTextQuiz.questionFr.label" default="Question Fr" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: singleChoiceTextQuizInstance, field: 'questionFr', 'errors')}">
                                    <g:textField name="questionFr" value="${singleChoiceTextQuizInstance?.questionFr}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="questionFrValidate"><g:message code="singleChoiceTextQuiz.questionFrValidate.label" default="Question Fr Validate" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: singleChoiceTextQuizInstance, field: 'questionFrValidate', 'errors')}">
                                    <g:checkBox name="questionFrValidate" value="${singleChoiceTextQuizInstance?.questionFrValidate}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="questionIt"><g:message code="singleChoiceTextQuiz.questionIt.label" default="Question It" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: singleChoiceTextQuizInstance, field: 'questionIt', 'errors')}">
                                    <g:textField name="questionIt" value="${singleChoiceTextQuizInstance?.questionIt}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="questionItValidate"><g:message code="singleChoiceTextQuiz.questionItValidate.label" default="Question It Validate" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: singleChoiceTextQuizInstance, field: 'questionItValidate', 'errors')}">
                                    <g:checkBox name="questionItValidate" value="${singleChoiceTextQuizInstance?.questionItValidate}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="questionRo"><g:message code="singleChoiceTextQuiz.questionRo.label" default="Question Ro" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: singleChoiceTextQuizInstance, field: 'questionRo', 'errors')}">
                                    <g:textField name="questionRo" value="${singleChoiceTextQuizInstance?.questionRo}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="questionRoValidate"><g:message code="singleChoiceTextQuiz.questionRoValidate.label" default="Question Ro Validate" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: singleChoiceTextQuizInstance, field: 'questionRoValidate', 'errors')}">
                                    <g:checkBox name="questionRoValidate" value="${singleChoiceTextQuizInstance?.questionRoValidate}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="responses"><g:message code="singleChoiceTextQuiz.responses.label" default="Responses" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: singleChoiceTextQuizInstance, field: 'responses', 'errors')}">
                                    
<ul>
<g:each in="${singleChoiceTextQuizInstance?.responses?}" var="r">
    <li><g:link controller="singleChoiceTextQuizResponse" action="show" id="${r.id}">${r?.encodeAsHTML()}</g:link></li>
</g:each>
</ul>
<g:link controller="singleChoiceTextQuizResponse" action="create" params="['singleChoiceTextQuiz.id': singleChoiceTextQuizInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'singleChoiceTextQuizResponse.label', default: 'SingleChoiceTextQuizResponse')])}</g:link>

                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="type"><g:message code="singleChoiceTextQuiz.type.label" default="Type" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: singleChoiceTextQuizInstance, field: 'type', 'errors')}">
                                    <g:select name="type" from="${com.bogdanmata.model.quiz.enums.QuizType?.values()}" keys="${com.bogdanmata.model.quiz.enums.QuizType?.values()*.name()}" value="${singleChoiceTextQuizInstance?.type?.name()}"  />
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
