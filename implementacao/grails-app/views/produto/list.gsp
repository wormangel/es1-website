
<%@ page import="ObjetosDeDados.Produto" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'produto.label', default: 'Produto')}" />
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
                        
                            <g:sortableColumn property="id" title="${message(code: 'produto.id.label', default: 'Id')}" />
                        
                            <g:sortableColumn property="nome" title="${message(code: 'produto.nome.label', default: 'Nome')}" />
                        
                            <g:sortableColumn property="preco" title="${message(code: 'produto.preco.label', default: 'Preco')}" />
                        
                            <g:sortableColumn property="descricao" title="${message(code: 'produto.descricao.label', default: 'Descricao')}" />
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${produtoInstanceList}" status="i" var="produtoInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${produtoInstance.id}">${fieldValue(bean: produtoInstance, field: "id")}</g:link></td>
                        
                            <td>${fieldValue(bean: produtoInstance, field: "nome")}</td>
                        
                            <td>${fieldValue(bean: produtoInstance, field: "preco")}</td>
                        
                            <td>${fieldValue(bean: produtoInstance, field: "descricao")}</td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${produtoInstanceTotal}" />
            </div>
        </div>
    </body>
</html>
