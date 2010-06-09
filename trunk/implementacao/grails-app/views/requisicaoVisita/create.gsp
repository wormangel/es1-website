
<%@ page import="ObjetosDeDados.RequisicaoVisita" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'requisicaoVisita.label', default: 'RequisicaoVisita')}" />
        <title><g:message code="default.create.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}">Home</a></span>
            <span class="menuButton"><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="default.create.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${requisicaoVisitaInstance}">
            <div class="errors">
                <g:renderErrors bean="${requisicaoVisitaInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form action="save" method="post" >
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="nome"><g:message code="requisicaoVisita.nome.label" default="Nome" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: requisicaoVisitaInstance, field: 'nome', 'errors')}">
                                    <g:textField name="nome" value="${requisicaoVisitaInstance?.nome}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="email"><g:message code="requisicaoVisita.email.label" default="Email" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: requisicaoVisitaInstance, field: 'email', 'errors')}">
                                    <g:textField name="email" value="${requisicaoVisitaInstance?.email}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="telefone"><g:message code="requisicaoVisita.telefone.label" default="Telefone" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: requisicaoVisitaInstance, field: 'telefone', 'errors')}">
                                    <g:textField name="telefone" value="${requisicaoVisitaInstance?.telefone}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="endereco"><g:message code="requisicaoVisita.endereco.label" default="Endereco" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: requisicaoVisitaInstance, field: 'endereco', 'errors')}">
                                    <g:textField name="endereco" value="${requisicaoVisitaInstance?.endereco}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="mensagem"><g:message code="requisicaoVisita.mensagem.label" default="Mensagem" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: requisicaoVisitaInstance, field: 'mensagem', 'errors')}">
                                    <g:textField name="mensagem" value="${requisicaoVisitaInstance?.mensagem}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="emAberto"><g:message code="requisicaoVisita.emAberto.label" default="Em Aberto" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: requisicaoVisitaInstance, field: 'emAberto', 'errors')}">
                                    <g:checkBox name="emAberto" value="${requisicaoVisitaInstance?.emAberto}" />
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
