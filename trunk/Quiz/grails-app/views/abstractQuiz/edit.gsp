

<%@ page import="com.bogdanmata.model.quiz.AbstractQuiz" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'abstractQuiz.label', default: 'AbstractQuiz')}" />
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
            <g:hasErrors bean="${abstractQuizInstance}">
            <div class="errors">
                <g:renderErrors bean="${abstractQuizInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form method="post" >
                <g:hiddenField name="id" value="${abstractQuizInstance?.id}" />
                <g:hiddenField name="version" value="${abstractQuizInstance?.version}" />
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="groups"><g:message code="abstractQuiz.groups.label" default="Groups" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: abstractQuizInstance, field: 'groups', 'errors')}">
                                    
<ul>
<g:each in="${abstractQuizInstance?.groups?}" var="g">
    <li><g:link controller="quizGroupMapping" action="show" id="${g.id}">${g?.encodeAsHTML()}</g:link></li>
</g:each>
</ul>
<g:link controller="quizGroupMapping" action="create" params="['abstractQuiz.id': abstractQuizInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'quizGroupMapping.label', default: 'QuizGroupMapping')])}</g:link>

                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="help"><g:message code="abstractQuiz.help.label" default="Help" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: abstractQuizInstance, field: 'help', 'errors')}">
                                    <g:textField name="help" value="${abstractQuizInstance?.help}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="helpDe"><g:message code="abstractQuiz.helpDe.label" default="Help De" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: abstractQuizInstance, field: 'helpDe', 'errors')}">
                                    <g:textField name="helpDe" value="${abstractQuizInstance?.helpDe}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="helpDeValidate"><g:message code="abstractQuiz.helpDeValidate.label" default="Help De Validate" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: abstractQuizInstance, field: 'helpDeValidate', 'errors')}">
                                    <g:checkBox name="helpDeValidate" value="${abstractQuizInstance?.helpDeValidate}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="helpEs"><g:message code="abstractQuiz.helpEs.label" default="Help Es" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: abstractQuizInstance, field: 'helpEs', 'errors')}">
                                    <g:textField name="helpEs" value="${abstractQuizInstance?.helpEs}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="helpEsValidate"><g:message code="abstractQuiz.helpEsValidate.label" default="Help Es Validate" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: abstractQuizInstance, field: 'helpEsValidate', 'errors')}">
                                    <g:checkBox name="helpEsValidate" value="${abstractQuizInstance?.helpEsValidate}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="helpFr"><g:message code="abstractQuiz.helpFr.label" default="Help Fr" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: abstractQuizInstance, field: 'helpFr', 'errors')}">
                                    <g:textField name="helpFr" value="${abstractQuizInstance?.helpFr}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="helpFrValidate"><g:message code="abstractQuiz.helpFrValidate.label" default="Help Fr Validate" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: abstractQuizInstance, field: 'helpFrValidate', 'errors')}">
                                    <g:checkBox name="helpFrValidate" value="${abstractQuizInstance?.helpFrValidate}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="helpIt"><g:message code="abstractQuiz.helpIt.label" default="Help It" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: abstractQuizInstance, field: 'helpIt', 'errors')}">
                                    <g:textField name="helpIt" value="${abstractQuizInstance?.helpIt}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="helpItValidate"><g:message code="abstractQuiz.helpItValidate.label" default="Help It Validate" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: abstractQuizInstance, field: 'helpItValidate', 'errors')}">
                                    <g:checkBox name="helpItValidate" value="${abstractQuizInstance?.helpItValidate}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="helpRo"><g:message code="abstractQuiz.helpRo.label" default="Help Ro" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: abstractQuizInstance, field: 'helpRo', 'errors')}">
                                    <g:textField name="helpRo" value="${abstractQuizInstance?.helpRo}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="helpRoValidate"><g:message code="abstractQuiz.helpRoValidate.label" default="Help Ro Validate" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: abstractQuizInstance, field: 'helpRoValidate', 'errors')}">
                                    <g:checkBox name="helpRoValidate" value="${abstractQuizInstance?.helpRoValidate}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="hint"><g:message code="abstractQuiz.hint.label" default="Hint" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: abstractQuizInstance, field: 'hint', 'errors')}">
                                    <g:textField name="hint" value="${abstractQuizInstance?.hint}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="hintDe"><g:message code="abstractQuiz.hintDe.label" default="Hint De" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: abstractQuizInstance, field: 'hintDe', 'errors')}">
                                    <g:textField name="hintDe" value="${abstractQuizInstance?.hintDe}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="hintDeValidate"><g:message code="abstractQuiz.hintDeValidate.label" default="Hint De Validate" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: abstractQuizInstance, field: 'hintDeValidate', 'errors')}">
                                    <g:checkBox name="hintDeValidate" value="${abstractQuizInstance?.hintDeValidate}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="hintEs"><g:message code="abstractQuiz.hintEs.label" default="Hint Es" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: abstractQuizInstance, field: 'hintEs', 'errors')}">
                                    <g:textField name="hintEs" value="${abstractQuizInstance?.hintEs}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="hintEsValidate"><g:message code="abstractQuiz.hintEsValidate.label" default="Hint Es Validate" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: abstractQuizInstance, field: 'hintEsValidate', 'errors')}">
                                    <g:checkBox name="hintEsValidate" value="${abstractQuizInstance?.hintEsValidate}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="hintFr"><g:message code="abstractQuiz.hintFr.label" default="Hint Fr" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: abstractQuizInstance, field: 'hintFr', 'errors')}">
                                    <g:textField name="hintFr" value="${abstractQuizInstance?.hintFr}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="hintFrValidate"><g:message code="abstractQuiz.hintFrValidate.label" default="Hint Fr Validate" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: abstractQuizInstance, field: 'hintFrValidate', 'errors')}">
                                    <g:checkBox name="hintFrValidate" value="${abstractQuizInstance?.hintFrValidate}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="hintIt"><g:message code="abstractQuiz.hintIt.label" default="Hint It" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: abstractQuizInstance, field: 'hintIt', 'errors')}">
                                    <g:textField name="hintIt" value="${abstractQuizInstance?.hintIt}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="hintItValidate"><g:message code="abstractQuiz.hintItValidate.label" default="Hint It Validate" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: abstractQuizInstance, field: 'hintItValidate', 'errors')}">
                                    <g:checkBox name="hintItValidate" value="${abstractQuizInstance?.hintItValidate}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="hintRo"><g:message code="abstractQuiz.hintRo.label" default="Hint Ro" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: abstractQuizInstance, field: 'hintRo', 'errors')}">
                                    <g:textField name="hintRo" value="${abstractQuizInstance?.hintRo}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="hintRoValidate"><g:message code="abstractQuiz.hintRoValidate.label" default="Hint Ro Validate" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: abstractQuizInstance, field: 'hintRoValidate', 'errors')}">
                                    <g:checkBox name="hintRoValidate" value="${abstractQuizInstance?.hintRoValidate}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="question"><g:message code="abstractQuiz.question.label" default="Question" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: abstractQuizInstance, field: 'question', 'errors')}">
                                    <g:textField name="question" value="${abstractQuizInstance?.question}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="questionDe"><g:message code="abstractQuiz.questionDe.label" default="Question De" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: abstractQuizInstance, field: 'questionDe', 'errors')}">
                                    <g:textField name="questionDe" value="${abstractQuizInstance?.questionDe}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="questionDeValidate"><g:message code="abstractQuiz.questionDeValidate.label" default="Question De Validate" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: abstractQuizInstance, field: 'questionDeValidate', 'errors')}">
                                    <g:checkBox name="questionDeValidate" value="${abstractQuizInstance?.questionDeValidate}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="questionEs"><g:message code="abstractQuiz.questionEs.label" default="Question Es" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: abstractQuizInstance, field: 'questionEs', 'errors')}">
                                    <g:textField name="questionEs" value="${abstractQuizInstance?.questionEs}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="questionEsValidate"><g:message code="abstractQuiz.questionEsValidate.label" default="Question Es Validate" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: abstractQuizInstance, field: 'questionEsValidate', 'errors')}">
                                    <g:checkBox name="questionEsValidate" value="${abstractQuizInstance?.questionEsValidate}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="questionFr"><g:message code="abstractQuiz.questionFr.label" default="Question Fr" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: abstractQuizInstance, field: 'questionFr', 'errors')}">
                                    <g:textField name="questionFr" value="${abstractQuizInstance?.questionFr}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="questionFrValidate"><g:message code="abstractQuiz.questionFrValidate.label" default="Question Fr Validate" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: abstractQuizInstance, field: 'questionFrValidate', 'errors')}">
                                    <g:checkBox name="questionFrValidate" value="${abstractQuizInstance?.questionFrValidate}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="questionIt"><g:message code="abstractQuiz.questionIt.label" default="Question It" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: abstractQuizInstance, field: 'questionIt', 'errors')}">
                                    <g:textField name="questionIt" value="${abstractQuizInstance?.questionIt}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="questionItValidate"><g:message code="abstractQuiz.questionItValidate.label" default="Question It Validate" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: abstractQuizInstance, field: 'questionItValidate', 'errors')}">
                                    <g:checkBox name="questionItValidate" value="${abstractQuizInstance?.questionItValidate}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="questionRo"><g:message code="abstractQuiz.questionRo.label" default="Question Ro" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: abstractQuizInstance, field: 'questionRo', 'errors')}">
                                    <g:textField name="questionRo" value="${abstractQuizInstance?.questionRo}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="questionRoValidate"><g:message code="abstractQuiz.questionRoValidate.label" default="Question Ro Validate" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: abstractQuizInstance, field: 'questionRoValidate', 'errors')}">
                                    <g:checkBox name="questionRoValidate" value="${abstractQuizInstance?.questionRoValidate}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="type"><g:message code="abstractQuiz.type.label" default="Type" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: abstractQuizInstance, field: 'type', 'errors')}">
                                    <g:select name="type" from="${com.bogdanmata.model.quiz.enums.QuizType?.values()}" keys="${com.bogdanmata.model.quiz.enums.QuizType?.values()*.name()}" value="${abstractQuizInstance?.type?.name()}"  />
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
