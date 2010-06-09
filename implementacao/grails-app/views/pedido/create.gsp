
<%@ page import="ObjetosDeDados.Pedido" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'pedido.label', default: 'Pedido')}" />
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
            <g:hasErrors bean="${pedidoInstance}">
            <div class="errors">
                <g:renderErrors bean="${pedidoInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form action="save" method="post" >
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
                    <span class="button"><g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" /></span>
                </div>
            </g:form>
        </div>
    </body>
</html>
