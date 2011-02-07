<%@ page import="com.bogdanmata.model.quiz.SingleChoiceTextQuiz" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'singleChoiceTextQuiz.label', default: 'SingleChoiceTextQuiz')}" />
        <title><g:message code="default.create.label" args="[entityName]" /></title>
        <script type="text/javascript">
        	dojo.require("dijit.TitlePane");
        </script>
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
            <g:hasErrors bean="${singleChoiceTextQuizInstance}">
            <div class="errors">
                <g:renderErrors bean="${singleChoiceTextQuizInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form action="save" >
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
                        </tbody>
                    </table>
                    
                    <table>
                        <tbody>    
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="help"><g:message code="singleChoiceTextQuiz.help.label" default="Help" /></label>
                                </td>
                                <td valign="top" class="name"></td>
                                <td valign="top" class="value ${hasErrors(bean: singleChoiceTextQuizInstance, field: 'help', 'errors')}">
                                    <g:textArea name="help" value="${singleChoiceTextQuizInstance?.help}" class="small" rows="4"/>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                    
                    <div id="help.translate" dojoType="dijit.TitlePane" title="${message(code: 'singleChoiceTextQuiz.help.translate', default: 'Help translate')}" open="false" >
                    <table>
                        <tbody>    
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="helpDe"><g:message code="singleChoiceTextQuiz.helpDe.label" default="Help De" /></label>
                                </td>
                                <td valign="top" class="name">
                                    <g:checkBox name="helpDeValidate" value="${singleChoiceTextQuizInstance?.helpDeValidate}" />
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: singleChoiceTextQuizInstance, field: 'helpDe', 'errors')}">
                                    <g:textArea name="helpDe" value="${singleChoiceTextQuizInstance?.helpDe}" class="small" rows="4"/>
                                </td>
                                <td valign="middle" class="name">
                                	<a class="fakeLink" onclick="javascript: alert('aaaaa: ' + document.getElementById('helpDe').value);">
                                		<g:message code="default.translate.label" default="Translate" />
                                	</a>
                                </td>
                            </tr>    
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="helpEs"><g:message code="singleChoiceTextQuiz.helpEs.label" default="Help Es" /></label>
                                </td>
                                <td valign="top" class="name">
                                    <g:checkBox name="helpEsValidate" value="${singleChoiceTextQuizInstance?.helpEsValidate}" />
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: singleChoiceTextQuizInstance, field: 'helpEs', 'errors')}">
                                    <g:textArea name="helpEs" value="${singleChoiceTextQuizInstance?.helpEs}" class="small" rows="4"/>
                                </td>
                            </tr>                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="helpFr"><g:message code="singleChoiceTextQuiz.helpFr.label" default="Help Fr" /></label>
                                </td>
                                <td valign="top" class="name">
                                    <g:checkBox name="helpFrValidate" value="${singleChoiceTextQuizInstance?.helpFrValidate}" />
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: singleChoiceTextQuizInstance, field: 'helpFr', 'errors')}">
                                    <g:textArea name="helpFr" value="${singleChoiceTextQuizInstance?.helpFr}" class="small" rows="4"/>
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="helpIt"><g:message code="singleChoiceTextQuiz.helpIt.label" default="Help It" /></label>
                                </td>
                                <td valign="top" class="name">
                                    <g:checkBox name="helpItValidate" value="${singleChoiceTextQuizInstance?.helpItValidate}" />
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: singleChoiceTextQuizInstance, field: 'helpIt', 'errors')}">
                                    <g:textArea name="helpIt" value="${singleChoiceTextQuizInstance?.helpIt}" class="small" rows="4"/>
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="helpRo"><g:message code="singleChoiceTextQuiz.helpRo.label" default="Help Ro" /></label>
                                </td>
                                <td valign="top" class="name">
                                    <g:checkBox name="helpRoValidate" value="${singleChoiceTextQuizInstance?.helpRoValidate}" />
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: singleChoiceTextQuizInstance, field: 'helpRo', 'errors')}">
                                    <g:textArea name="helpRo" value="${singleChoiceTextQuizInstance?.helpRo}" class="small" rows="4"/>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                    </div>
                    
                    <table>
                        <tbody>    
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="hint"><g:message code="singleChoiceTextQuiz.hint.label" default="Hint" /></label>
                                </td>
                                <td valign="top" class="name"></td>
                                <td valign="top" class="value ${hasErrors(bean: singleChoiceTextQuizInstance, field: 'hint', 'errors')}">
                                    <g:textArea name="hint" value="${singleChoiceTextQuizInstance?.hint}" />
                                </td>
                            </tr>
                        </tbody>
                    </table>
                    
                    <div id="hint.translate" dojoType="dijit.TitlePane" title="${message(code: 'singleChoiceTextQuiz.hint.translate', default: 'Hint translate')}" open="false" >
                    <table>
                        <tbody>    
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="hintDe"><g:message code="singleChoiceTextQuiz.hintDe.label" default="Hint De" /></label>
                                </td>
                                <td valign="top" class="name">
                                    <g:checkBox name="hintDeValidate" value="${singleChoiceTextQuizInstance?.hintDeValidate}" />
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: singleChoiceTextQuizInstance, field: 'hintDe', 'errors')}">
                                    <g:textArea name="hintDe" value="${singleChoiceTextQuizInstance?.hintDe}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="hintEs"><g:message code="singleChoiceTextQuiz.hintEs.label" default="Hint Es" /></label>
                                </td>
                                <td valign="top" class="name">
                                    <g:checkBox name="hintEsValidate" value="${singleChoiceTextQuizInstance?.hintEsValidate}" />
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: singleChoiceTextQuizInstance, field: 'hintEs', 'errors')}">
                                    <g:textArea name="hintEs" value="${singleChoiceTextQuizInstance?.hintEs}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="hintFr"><g:message code="singleChoiceTextQuiz.hintFr.label" default="Hint Fr" /></label>
                                </td>
                                <td valign="top" class="name">
                                    <g:checkBox name="hintFrValidate" value="${singleChoiceTextQuizInstance?.hintFrValidate}" />
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: singleChoiceTextQuizInstance, field: 'hintFr', 'errors')}">
                                    <g:textArea name="hintFr" value="${singleChoiceTextQuizInstance?.hintFr}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="hintIt"><g:message code="singleChoiceTextQuiz.hintIt.label" default="Hint It" /></label>
                                </td>
                                <td valign="top" class="name">
                                    <g:checkBox name="hintItValidate" value="${singleChoiceTextQuizInstance?.hintItValidate}" />
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: singleChoiceTextQuizInstance, field: 'hintIt', 'errors')}">
                                    <g:textArea name="hintIt" value="${singleChoiceTextQuizInstance?.hintIt}" />
                                </td>
                            </tr>
                        
                           <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="hintRo"><g:message code="singleChoiceTextQuiz.hintRo.label" default="Hint Ro" /></label>
                                </td>
                                <td valign="top" class="name">
                                    <g:checkBox name="hintRoValidate" value="${singleChoiceTextQuizInstance?.hintRoValidate}" />
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: singleChoiceTextQuizInstance, field: 'hintRo', 'errors')}">
                                    <g:textArea name="hintRo" value="${singleChoiceTextQuizInstance?.hintRo}" />
                                </td>
                            </tr>
                        </tbody>
                    </table>
                    </div>
                    
                    <table>
                        <tbody>    
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="question"><g:message code="singleChoiceTextQuiz.question.label" default="Question" /></label>
                                </td>
                                <td valign="top" class="name"></td>
                                <td valign="top" class="value ${hasErrors(bean: singleChoiceTextQuizInstance, field: 'question', 'errors')}">
                                    <g:textArea name="question" value="${singleChoiceTextQuizInstance?.question}" />
                                </td>
                            </tr>
                        </tbody>
                    </table>
                    
                    <div id="question.translate" dojoType="dijit.TitlePane" title="${message(code: 'singleChoiceTextQuiz.question.translate', default: 'Question translate')}" open="false" >
                    <table>
                        <tbody>    
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="questionDe"><g:message code="singleChoiceTextQuiz.questionDe.label" default="Question De" /></label>
                                </td>
                                <td valign="top" class="name">
                                    <g:checkBox name="questionDeValidate" value="${singleChoiceTextQuizInstance?.questionDeValidate}" />
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: singleChoiceTextQuizInstance, field: 'questionDe', 'errors')}">
                                    <g:textArea name="questionDe" value="${singleChoiceTextQuizInstance?.questionDe}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="questionEs"><g:message code="singleChoiceTextQuiz.questionEs.label" default="Question Es" /></label>
                                </td>
                                <td valign="top" class="name">
                                    <g:checkBox name="questionEsValidate" value="${singleChoiceTextQuizInstance?.questionEsValidate}" />
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: singleChoiceTextQuizInstance, field: 'questionEs', 'errors')}">
                                    <g:textArea name="questionEs" value="${singleChoiceTextQuizInstance?.questionEs}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="questionFr"><g:message code="singleChoiceTextQuiz.questionFr.label" default="Question Fr" /></label>
                                </td>
                                <td valign="top" class="name">
                                    <g:checkBox name="questionFrValidate" value="${singleChoiceTextQuizInstance?.questionFrValidate}" />
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: singleChoiceTextQuizInstance, field: 'questionFr', 'errors')}">
                                    <g:textArea name="questionFr" value="${singleChoiceTextQuizInstance?.questionFr}" />
                                </td>
                            </tr>
                            
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="questionIt"><g:message code="singleChoiceTextQuiz.questionIt.label" default="Question It" /></label>
                                </td>
                                <td valign="top" class="name">
                                    <g:checkBox name="questionItValidate" value="${singleChoiceTextQuizInstance?.questionItValidate}" />
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: singleChoiceTextQuizInstance, field: 'questionIt', 'errors')}">
                                    <g:textArea name="questionIt" value="${singleChoiceTextQuizInstance?.questionIt}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="questionRo"><g:message code="singleChoiceTextQuiz.questionRo.label" default="Question Ro" /></label>
                                </td>
                                <td valign="top" class="name">
                                    <g:checkBox name="questionRoValidate" value="${singleChoiceTextQuizInstance?.questionRoValidate}" />
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: singleChoiceTextQuizInstance, field: 'questionRo', 'errors')}">
                                    <g:textArea name="questionRo" value="${singleChoiceTextQuizInstance?.questionRo}" />
                                </td>
                            </tr>
                        </tbody>
                    </table>
                    </div>
                    
                    <div id="singleChoiceTextQuiz.responses" dojoType="dijit.TitlePane" title="${message(code: 'singleChoiceTextQuiz.responses', default: 'Responses')}" open="false" >
                    	<g:each var="r" in="${responses}" status="key">
                    	<div id="singleChoiceTextQuiz.response.${r.key}" dojoType="dijit.TitlePane" title="${message(code: 'singleChoiceTextQuiz.response', default: 'Response')}" open="false" >
                    	<table>
	                    	<tbody>
                    		<tr class="prop">
                                <td valign="top" class="name">
                                    <label for="reponse.content.${r.key}"><g:message code="singleChoiceTextQuizResponse.content.label" default="Content" /></label>
                                </td>
                                <td valign="top" class="name"></td>
                                <td valign="top" class="value ${hasErrors(bean: responses[r], field: 'content', 'errors')}">
                                    <g:textArea name="reponse.content.${r.key}" value="${responses[r]?.content}" />
                                </td>
                            </tr>
	                        </tbody>
	                    </table>
	                    
	                    <div id="singleChoiceTextQuiz.reponse.translate.${r.key}" dojoType="dijit.TitlePane" title="${message(code: 'singleChoiceTextQuiz.response.translate', default: 'response translate')}" open="false" >
	                    	<table>
			                   	<tbody>
		                   		<tr class="prop">
		                            <td valign="top" class="name">
		                                <label for="reponse.contentRo.${r.key}"><g:message code="singleChoiceTextQuizResponse.contentRo.label" default="Content ro" /></label>
		                            </td>
		                            <td valign="top" class="name">
		                              	<g:checkBox name="reponse.contentValidateRo.${r.key}" value="${responses[r]?.contentRoValidate}" />
		                            </td>
		                            <td valign="top" class="value ${hasErrors(bean: responses[r], field: 'contentRo', 'errors')}">
		                                <g:textArea name="reponse.contentRo.${r.key}" value="${responses[r]?.contentRo}" />
		                            </td>
		                        </tr>
		                        <tr class="prop">
		                            <td valign="top" class="name">
		                                <label for="reponse.contentFr.${r.key}"><g:message code="singleChoiceTextQuizResponse.contentFr.label" default="Content fr" /></label>
		                            </td>
		                            <td valign="top" class="name">
		                              	<g:checkBox name="reponse.contentValidateFr.${r.key}" value="${responses[r]?.contentFrValidate}" />
		                            </td>
		                            <td valign="top" class="value ${hasErrors(bean: responses[r], field: 'contentFr', 'errors')}">
		                                <g:textArea name="reponse.contentFr.${r.key}" value="${responses[r]?.contentFr}" />
		                            </td>
		                        </tr>
		                        <tr class="prop">
		                            <td valign="top" class="name">
		                                <label for="reponse.contentDe.${r.key}"><g:message code="singleChoiceTextQuizResponse.contentDe.label" default="Content De" /></label>
		                            </td>
		                            <td valign="top" class="name">
		                              	<g:checkBox name="reponse.contentValidateDe.${r.key}" value="${responses[r]?.contentDeValidate}" />
		                            </td>
		                            <td valign="top" class="value ${hasErrors(bean: responses[r], field: 'contentDe', 'errors')}">
		                                <g:textArea name="reponse.contentDe.${r.key}" value="${responses[r]?.contentDe}" />
		                            </td>
		                        </tr>
		                        <tr class="prop">
		                            <td valign="top" class="name">
		                                <label for="reponse.contentIt.${r.key}"><g:message code="singleChoiceTextQuizResponse.contentIt.label" default="Content It" /></label>
		                            </td>
		                            <td valign="top" class="name">
		                              	<g:checkBox name="reponse.contentValidateIt.${r.key}" value="${responses[r]?.contentItValidate}" />
		                            </td>
		                            <td valign="top" class="value ${hasErrors(bean: responses[r], field: 'contentIt', 'errors')}">
		                                <g:textArea name="reponse.contentIt.${r.key}" value="${responses[r]?.contentIt}" />
		                            </td>
		                        </tr>
		                        <tr class="prop">
		                            <td valign="top" class="name">
		                                <label for="reponse.contentEs.${r.key}"><g:message code="singleChoiceTextQuizResponse.contentEs.label" default="Content es" /></label>
		                            </td>
		                            <td valign="top" class="name">
		                              	<g:checkBox name="reponse.contentValidateEs.${r.key}" value="${responses[r]?.contentEsValidate}" />
		                            </td>
		                            <td valign="top" class="value ${hasErrors(bean: responses[r], field: 'contentEs', 'errors')}">
		                                <g:textArea name="reponse.contentEs.${r.key}" value="${responses[r]?.contentEs}" />
		                            </td>
		                        </tr>
			                    </tbody>
			                </table>
	                    </div>
                    	</div>
                    	</g:each>
                    </div>
                </div>
                <div class="buttons">
                    <span class="button"><g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" /></span>
                </div>
            </g:form>
        </div>
    </body>
</html>
