
<%@ page import="ObjetosDeDados.Cliente" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'cliente.label', default: 'Cliente')}" />
        <title><g:message code="default.edit.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}">Home</a></span>
            <span class="menuButton"><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></span>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="default.edit.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${clienteInstance}">
            <div class="errors">
                <g:renderErrors bean="${clienteInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form method="post" >
                <g:hiddenField name="id" value="${clienteInstance?.id}" />
                <g:hiddenField name="version" value="${clienteInstance?.version}" />
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="username"><g:message code="cliente.username.label" default="Username" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: clienteInstance, field: 'username', 'errors')}">
                                    <g:textField name="username" value="${clienteInstance?.username}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="passwd"><g:message code="cliente.passwd.label" default="Passwd" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: clienteInstance, field: 'passwd', 'errors')}">
                                    <g:textField name="passwd" value="${clienteInstance?.passwd}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="enabled"><g:message code="cliente.enabled.label" default="Enabled" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: clienteInstance, field: 'enabled', 'errors')}">
                                    <g:checkBox name="enabled" value="${clienteInstance?.enabled}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="nome"><g:message code="cliente.nome.label" default="Nome" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: clienteInstance, field: 'nome', 'errors')}">
                                    <g:textField name="nome" value="${clienteInstance?.nome}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="email"><g:message code="cliente.email.label" default="Email" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: clienteInstance, field: 'email', 'errors')}">
                                    <g:textField name="email" value="${clienteInstance?.email}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="endereco"><g:message code="cliente.endereco.label" default="Endereco" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: clienteInstance, field: 'endereco', 'errors')}">
                                    <g:textField name="endereco" value="${clienteInstance?.endereco}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="telefone"><g:message code="cliente.telefone.label" default="Telefone" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: clienteInstance, field: 'telefone', 'errors')}">
                                    <g:textField name="telefone" value="${clienteInstance?.telefone}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="celular"><g:message code="cliente.celular.label" default="Celular" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: clienteInstance, field: 'celular', 'errors')}">
                                    <g:textField name="celular" value="${clienteInstance?.celular}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="ultimoLogin"><g:message code="cliente.ultimoLogin.label" default="Ultimo Login" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: clienteInstance, field: 'ultimoLogin', 'errors')}">
                                    <g:datePicker name="ultimoLogin" precision="day" value="${clienteInstance?.ultimoLogin}" noSelection="['': '']" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="pedidos"><g:message code="cliente.pedidos.label" default="Pedidos" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: clienteInstance, field: 'pedidos', 'errors')}">
                                    
<ul>
<g:each in="${clienteInstance?.pedidos?}" var="p">
    <li><g:link controller="pedido" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></li>
</g:each>
</ul>
<g:link controller="pedido" action="create" params="['cliente.id': clienteInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'pedido.label', default: 'Pedido')])}</g:link>

                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="authorities"><g:message code="cliente.authorities.label" default="Authorities" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: clienteInstance, field: 'authorities', 'errors')}">
                                    
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
