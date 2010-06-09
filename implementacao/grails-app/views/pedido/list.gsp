
<%@ page import="ObjetosDeDados.Pedido" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'pedido.label', default: 'Pedido')}" />
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
                        
                            <g:sortableColumn property="id" title="${message(code: 'pedido.id.label', default: 'Id')}" />
                        
                            <g:sortableColumn property="dataPedido" title="${message(code: 'pedido.dataPedido.label', default: 'Data Pedido')}" />
                        
                            <g:sortableColumn property="emAberto" title="${message(code: 'pedido.emAberto.label', default: 'Em Aberto')}" />
                        
                            <th><g:message code="pedido.cliente.label" default="Cliente" /></th>
                   	    
                            <g:sortableColumn property="custoTotal" title="${message(code: 'pedido.custoTotal.label', default: 'Custo Total')}" />
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${pedidoInstanceList}" status="i" var="pedidoInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${pedidoInstance.id}">${fieldValue(bean: pedidoInstance, field: "id")}</g:link></td>
                        
                            <td><g:formatDate date="${pedidoInstance.dataPedido}" /></td>
                        
                            <td><g:formatBoolean boolean="${pedidoInstance.emAberto}" /></td>
                        
                            <td>${fieldValue(bean: pedidoInstance, field: "cliente")}</td>
                        
                            <td>${fieldValue(bean: pedidoInstance, field: "custoTotal")}</td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${pedidoInstanceTotal}" />
            </div>
        </div>
    </body>
</html>
