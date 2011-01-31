

<%@ page import="com.bogdanmata.model.quiz.MultipleChoiceTextQuiz" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'multipleChoiceTextQuiz.label', default: 'MultipleChoiceTextQuiz')}" />
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
            <g:hasErrors bean="${multipleChoiceTextQuizInstance}">
            <div class="errors">
                <g:renderErrors bean="${multipleChoiceTextQuizInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form method="post" >
                <g:hiddenField name="id" value="${multipleChoiceTextQuizInstance?.id}" />
                <g:hiddenField name="version" value="${multipleChoiceTextQuizInstance?.version}" />
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="groups"><g:message code="multipleChoiceTextQuiz.groups.label" default="Groups" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: multipleChoiceTextQuizInstance, field: 'groups', 'errors')}">
                                    
<ul>
<g:each in="${multipleChoiceTextQuizInstance?.groups?}" var="g">
    <li><g:link controller="quizGroupMapping" action="show" id="${g.id}">${g?.encodeAsHTML()}</g:link></li>
</g:each>
</ul>
<g:link controller="quizGroupMapping" action="create" params="['multipleChoiceTextQuiz.id': multipleChoiceTextQuizInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'quizGroupMapping.label', default: 'QuizGroupMapping')])}</g:link>

                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="help"><g:message code="multipleChoiceTextQuiz.help.label" default="Help" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: multipleChoiceTextQuizInstance, field: 'help', 'errors')}">
                                    <g:textField name="help" value="${multipleChoiceTextQuizInstance?.help}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="helpDe"><g:message code="multipleChoiceTextQuiz.helpDe.label" default="Help De" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: multipleChoiceTextQuizInstance, field: 'helpDe', 'errors')}">
                                    <g:textField name="helpDe" value="${multipleChoiceTextQuizInstance?.helpDe}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="helpDeValidate"><g:message code="multipleChoiceTextQuiz.helpDeValidate.label" default="Help De Validate" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: multipleChoiceTextQuizInstance, field: 'helpDeValidate', 'errors')}">
                                    <g:checkBox name="helpDeValidate" value="${multipleChoiceTextQuizInstance?.helpDeValidate}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="helpEs"><g:message code="multipleChoiceTextQuiz.helpEs.label" default="Help Es" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: multipleChoiceTextQuizInstance, field: 'helpEs', 'errors')}">
                                    <g:textField name="helpEs" value="${multipleChoiceTextQuizInstance?.helpEs}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="helpEsValidate"><g:message code="multipleChoiceTextQuiz.helpEsValidate.label" default="Help Es Validate" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: multipleChoiceTextQuizInstance, field: 'helpEsValidate', 'errors')}">
                                    <g:checkBox name="helpEsValidate" value="${multipleChoiceTextQuizInstance?.helpEsValidate}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="helpFr"><g:message code="multipleChoiceTextQuiz.helpFr.label" default="Help Fr" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: multipleChoiceTextQuizInstance, field: 'helpFr', 'errors')}">
                                    <g:textField name="helpFr" value="${multipleChoiceTextQuizInstance?.helpFr}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="helpFrValidate"><g:message code="multipleChoiceTextQuiz.helpFrValidate.label" default="Help Fr Validate" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: multipleChoiceTextQuizInstance, field: 'helpFrValidate', 'errors')}">
                                    <g:checkBox name="helpFrValidate" value="${multipleChoiceTextQuizInstance?.helpFrValidate}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="helpIt"><g:message code="multipleChoiceTextQuiz.helpIt.label" default="Help It" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: multipleChoiceTextQuizInstance, field: 'helpIt', 'errors')}">
                                    <g:textField name="helpIt" value="${multipleChoiceTextQuizInstance?.helpIt}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="helpItValidate"><g:message code="multipleChoiceTextQuiz.helpItValidate.label" default="Help It Validate" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: multipleChoiceTextQuizInstance, field: 'helpItValidate', 'errors')}">
                                    <g:checkBox name="helpItValidate" value="${multipleChoiceTextQuizInstance?.helpItValidate}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="helpRo"><g:message code="multipleChoiceTextQuiz.helpRo.label" default="Help Ro" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: multipleChoiceTextQuizInstance, field: 'helpRo', 'errors')}">
                                    <g:textField name="helpRo" value="${multipleChoiceTextQuizInstance?.helpRo}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="helpRoValidate"><g:message code="multipleChoiceTextQuiz.helpRoValidate.label" default="Help Ro Validate" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: multipleChoiceTextQuizInstance, field: 'helpRoValidate', 'errors')}">
                                    <g:checkBox name="helpRoValidate" value="${multipleChoiceTextQuizInstance?.helpRoValidate}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="hint"><g:message code="multipleChoiceTextQuiz.hint.label" default="Hint" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: multipleChoiceTextQuizInstance, field: 'hint', 'errors')}">
                                    <g:textField name="hint" value="${multipleChoiceTextQuizInstance?.hint}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="hintDe"><g:message code="multipleChoiceTextQuiz.hintDe.label" default="Hint De" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: multipleChoiceTextQuizInstance, field: 'hintDe', 'errors')}">
                                    <g:textField name="hintDe" value="${multipleChoiceTextQuizInstance?.hintDe}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="hintDeValidate"><g:message code="multipleChoiceTextQuiz.hintDeValidate.label" default="Hint De Validate" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: multipleChoiceTextQuizInstance, field: 'hintDeValidate', 'errors')}">
                                    <g:checkBox name="hintDeValidate" value="${multipleChoiceTextQuizInstance?.hintDeValidate}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="hintEs"><g:message code="multipleChoiceTextQuiz.hintEs.label" default="Hint Es" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: multipleChoiceTextQuizInstance, field: 'hintEs', 'errors')}">
                                    <g:textField name="hintEs" value="${multipleChoiceTextQuizInstance?.hintEs}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="hintEsValidate"><g:message code="multipleChoiceTextQuiz.hintEsValidate.label" default="Hint Es Validate" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: multipleChoiceTextQuizInstance, field: 'hintEsValidate', 'errors')}">
                                    <g:checkBox name="hintEsValidate" value="${multipleChoiceTextQuizInstance?.hintEsValidate}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="hintFr"><g:message code="multipleChoiceTextQuiz.hintFr.label" default="Hint Fr" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: multipleChoiceTextQuizInstance, field: 'hintFr', 'errors')}">
                                    <g:textField name="hintFr" value="${multipleChoiceTextQuizInstance?.hintFr}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="hintFrValidate"><g:message code="multipleChoiceTextQuiz.hintFrValidate.label" default="Hint Fr Validate" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: multipleChoiceTextQuizInstance, field: 'hintFrValidate', 'errors')}">
                                    <g:checkBox name="hintFrValidate" value="${multipleChoiceTextQuizInstance?.hintFrValidate}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="hintIt"><g:message code="multipleChoiceTextQuiz.hintIt.label" default="Hint It" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: multipleChoiceTextQuizInstance, field: 'hintIt', 'errors')}">
                                    <g:textField name="hintIt" value="${multipleChoiceTextQuizInstance?.hintIt}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="hintItValidate"><g:message code="multipleChoiceTextQuiz.hintItValidate.label" default="Hint It Validate" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: multipleChoiceTextQuizInstance, field: 'hintItValidate', 'errors')}">
                                    <g:checkBox name="hintItValidate" value="${multipleChoiceTextQuizInstance?.hintItValidate}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="hintRo"><g:message code="multipleChoiceTextQuiz.hintRo.label" default="Hint Ro" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: multipleChoiceTextQuizInstance, field: 'hintRo', 'errors')}">
                                    <g:textField name="hintRo" value="${multipleChoiceTextQuizInstance?.hintRo}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="hintRoValidate"><g:message code="multipleChoiceTextQuiz.hintRoValidate.label" default="Hint Ro Validate" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: multipleChoiceTextQuizInstance, field: 'hintRoValidate', 'errors')}">
                                    <g:checkBox name="hintRoValidate" value="${multipleChoiceTextQuizInstance?.hintRoValidate}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="question"><g:message code="multipleChoiceTextQuiz.question.label" default="Question" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: multipleChoiceTextQuizInstance, field: 'question', 'errors')}">
                                    <g:textField name="question" value="${multipleChoiceTextQuizInstance?.question}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="questionDe"><g:message code="multipleChoiceTextQuiz.questionDe.label" default="Question De" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: multipleChoiceTextQuizInstance, field: 'questionDe', 'errors')}">
                                    <g:textField name="questionDe" value="${multipleChoiceTextQuizInstance?.questionDe}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="questionDeValidate"><g:message code="multipleChoiceTextQuiz.questionDeValidate.label" default="Question De Validate" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: multipleChoiceTextQuizInstance, field: 'questionDeValidate', 'errors')}">
                                    <g:checkBox name="questionDeValidate" value="${multipleChoiceTextQuizInstance?.questionDeValidate}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="questionEs"><g:message code="multipleChoiceTextQuiz.questionEs.label" default="Question Es" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: multipleChoiceTextQuizInstance, field: 'questionEs', 'errors')}">
                                    <g:textField name="questionEs" value="${multipleChoiceTextQuizInstance?.questionEs}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="questionEsValidate"><g:message code="multipleChoiceTextQuiz.questionEsValidate.label" default="Question Es Validate" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: multipleChoiceTextQuizInstance, field: 'questionEsValidate', 'errors')}">
                                    <g:checkBox name="questionEsValidate" value="${multipleChoiceTextQuizInstance?.questionEsValidate}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="questionFr"><g:message code="multipleChoiceTextQuiz.questionFr.label" default="Question Fr" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: multipleChoiceTextQuizInstance, field: 'questionFr', 'errors')}">
                                    <g:textField name="questionFr" value="${multipleChoiceTextQuizInstance?.questionFr}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="questionFrValidate"><g:message code="multipleChoiceTextQuiz.questionFrValidate.label" default="Question Fr Validate" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: multipleChoiceTextQuizInstance, field: 'questionFrValidate', 'errors')}">
                                    <g:checkBox name="questionFrValidate" value="${multipleChoiceTextQuizInstance?.questionFrValidate}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="questionIt"><g:message code="multipleChoiceTextQuiz.questionIt.label" default="Question It" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: multipleChoiceTextQuizInstance, field: 'questionIt', 'errors')}">
                                    <g:textField name="questionIt" value="${multipleChoiceTextQuizInstance?.questionIt}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="questionItValidate"><g:message code="multipleChoiceTextQuiz.questionItValidate.label" default="Question It Validate" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: multipleChoiceTextQuizInstance, field: 'questionItValidate', 'errors')}">
                                    <g:checkBox name="questionItValidate" value="${multipleChoiceTextQuizInstance?.questionItValidate}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="questionRo"><g:message code="multipleChoiceTextQuiz.questionRo.label" default="Question Ro" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: multipleChoiceTextQuizInstance, field: 'questionRo', 'errors')}">
                                    <g:textField name="questionRo" value="${multipleChoiceTextQuizInstance?.questionRo}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="questionRoValidate"><g:message code="multipleChoiceTextQuiz.questionRoValidate.label" default="Question Ro Validate" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: multipleChoiceTextQuizInstance, field: 'questionRoValidate', 'errors')}">
                                    <g:checkBox name="questionRoValidate" value="${multipleChoiceTextQuizInstance?.questionRoValidate}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="responses"><g:message code="multipleChoiceTextQuiz.responses.label" default="Responses" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: multipleChoiceTextQuizInstance, field: 'responses', 'errors')}">
                                    
<ul>
<g:each in="${multipleChoiceTextQuizInstance?.responses?}" var="r">
    <li><g:link controller="multipleChoiceTextQuizResponse" action="show" id="${r.id}">${r?.encodeAsHTML()}</g:link></li>
</g:each>
</ul>
<g:link controller="multipleChoiceTextQuizResponse" action="create" params="['multipleChoiceTextQuiz.id': multipleChoiceTextQuizInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'multipleChoiceTextQuizResponse.label', default: 'MultipleChoiceTextQuizResponse')])}</g:link>

                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="type"><g:message code="multipleChoiceTextQuiz.type.label" default="Type" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: multipleChoiceTextQuizInstance, field: 'type', 'errors')}">
                                    <g:select name="type" from="${com.bogdanmata.model.quiz.enums.QuizType?.values()}" keys="${com.bogdanmata.model.quiz.enums.QuizType?.values()*.name()}" value="${multipleChoiceTextQuizInstance?.type?.name()}"  />
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
