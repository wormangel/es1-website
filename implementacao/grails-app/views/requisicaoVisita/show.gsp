
<%@ page import="ObjetosDeDados.RequisicaoVisita" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'requisicaoVisita.label', default: 'RequisicaoVisita')}" />
        <title><g:message code="default.show.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}">Home</a></span>
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
                            <td valign="top" class="name"><g:message code="requisicaoVisita.id.label" default="Id" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: requisicaoVisitaInstance, field: "id")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="requisicaoVisita.nome.label" default="Nome" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: requisicaoVisitaInstance, field: "nome")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="requisicaoVisita.email.label" default="Email" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: requisicaoVisitaInstance, field: "email")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="requisicaoVisita.telefone.label" default="Telefone" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: requisicaoVisitaInstance, field: "telefone")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="requisicaoVisita.endereco.label" default="Endereco" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: requisicaoVisitaInstance, field: "endereco")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="requisicaoVisita.mensagem.label" default="Mensagem" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: requisicaoVisitaInstance, field: "mensagem")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="requisicaoVisita.emAberto.label" default="Em Aberto" /></td>
                            
                            <td valign="top" class="value"><g:formatBoolean boolean="${requisicaoVisitaInstance?.emAberto}" /></td>
                            
                        </tr>
                    
                    </tbody>
                </table>
            </div>
            <div class="buttons">
                <g:form>
                    <g:hiddenField name="id" value="${requisicaoVisitaInstance?.id}" />
                    <span class="button"><g:actionSubmit class="edit" action="edit" value="${message(code: 'default.button.edit.label', default: 'Edit')}" /></span>
                    <span class="button"><g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" /></span>
                </g:form>
            </div>
        </div>
    </body>
</html>
