
<%@ page import="ObjetosDeDados.Pedido" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'pedido.label', default: 'Pedido')}" />
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
            <g:hasErrors bean="${pedidoInstance}">
            <div class="errors">
                <g:renderErrors bean="${pedidoInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form method="post" >
                <g:hiddenField name="id" value="${pedidoInstance?.id}" />
                <g:hiddenField name="version" value="${pedidoInstance?.version}" />
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="dataPedido"><g:message code="pedido.dataPedido.label" default="Data Pedido" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: pedidoInstance, field: 'dataPedido', 'errors')}">
                                    <g:datePicker name="dataPedido" precision="day" value="${pedidoInstance?.dataPedido}"  />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="emAberto"><g:message code="pedido.emAberto.label" default="Em Aberto" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: pedidoInstance, field: 'emAberto', 'errors')}">
                                    <g:checkBox name="emAberto" value="${pedidoInstance?.emAberto}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="cliente"><g:message code="pedido.cliente.label" default="Cliente" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: pedidoInstance, field: 'cliente', 'errors')}">
                                    <g:select name="cliente.id" from="${ObjetosDeDados.Cliente.list()}" optionKey="id" value="${pedidoInstance?.cliente?.id}"  />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="itensPedido"><g:message code="pedido.itensPedido.label" default="Itens Pedido" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: pedidoInstance, field: 'itensPedido', 'errors')}">
                                    
<ul>
<g:each in="${pedidoInstance?.itensPedido?}" var="i">
    <li><g:link controller="itemPedido" action="show" id="${i.id}">${i?.encodeAsHTML()}</g:link></li>
</g:each>
</ul>
<g:link controller="itemPedido" action="create" params="['pedido.id': pedidoInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'itemPedido.label', default: 'ItemPedido')])}</g:link>

                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="custoTotal"><g:message code="pedido.custoTotal.label" default="Custo Total" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: pedidoInstance, field: 'custoTotal', 'errors')}">
                                    <g:textField name="custoTotal" value="${fieldValue(bean: pedidoInstance, field: 'custoTotal')}" />
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
