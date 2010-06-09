
<%@ page import="ObjetosDeDados.ItemPedido" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'itemPedido.label', default: 'ItemPedido')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}">Home</a></span>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="default.list.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="list">
                <table>
                    <thead>
                        <tr>
                        
                            <g:sortableColumn property="id" title="${message(code: 'itemPedido.id.label', default: 'Id')}" />
                        
                            <th><g:message code="itemPedido.produto.label" default="Produto" /></th>
                   	    
                            <th><g:message code="itemPedido.pedido.label" default="Pedido" /></th>
                   	    
                            <g:sortableColumn property="quantidadeProduto" title="${message(code: 'itemPedido.quantidadeProduto.label', default: 'Quantidade Produto')}" />
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${itemPedidoInstanceList}" status="i" var="itemPedidoInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${itemPedidoInstance.id}">${fieldValue(bean: itemPedidoInstance, field: "id")}</g:link></td>
                        
                            <td>${fieldValue(bean: itemPedidoInstance, field: "produto")}</td>
                        
                            <td>${fieldValue(bean: itemPedidoInstance, field: "pedido")}</td>
                        
                            <td>${fieldValue(bean: itemPedidoInstance, field: "quantidadeProduto")}</td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${itemPedidoInstanceTotal}" />
            </div>
        </div>
    </body>
</html>
