
<%@ page import="ObjetosDeDados.ItemPedido" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'itemPedido.label', default: 'ItemPedido')}" />
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
            <g:hasErrors bean="${itemPedidoInstance}">
            <div class="errors">
                <g:renderErrors bean="${itemPedidoInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form action="save" method="post" >
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="produto"><g:message code="itemPedido.produto.label" default="Produto" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: itemPedidoInstance, field: 'produto', 'errors')}">
                                    <g:select name="produto.id" from="${ObjetosDeDados.Produto.list()}" optionKey="id" value="${itemPedidoInstance?.produto?.id}"  />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="pedido"><g:message code="itemPedido.pedido.label" default="Pedido" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: itemPedidoInstance, field: 'pedido', 'errors')}">
                                    <g:select name="pedido.id" from="${ObjetosDeDados.Pedido.list()}" optionKey="id" value="${itemPedidoInstance?.pedido?.id}"  />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="quantidadeProduto"><g:message code="itemPedido.quantidadeProduto.label" default="Quantidade Produto" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: itemPedidoInstance, field: 'quantidadeProduto', 'errors')}">
                                    <g:textField name="quantidadeProduto" value="${fieldValue(bean: itemPedidoInstance, field: 'quantidadeProduto')}" />
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
