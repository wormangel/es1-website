
<%@ page import="ObjetosDeDados.RequisicaoVisita" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'requisicaoVisita.label', default: 'RequisicaoVisita')}" />
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
                        
                            <g:sortableColumn property="id" title="${message(code: 'requisicaoVisita.id.label', default: 'Id')}" />
                        
                            <g:sortableColumn property="nome" title="${message(code: 'requisicaoVisita.nome.label', default: 'Nome')}" />
                        
                            <g:sortableColumn property="email" title="${message(code: 'requisicaoVisita.email.label', default: 'Email')}" />
                        
                            <g:sortableColumn property="telefone" title="${message(code: 'requisicaoVisita.telefone.label', default: 'Telefone')}" />
                        
                            <g:sortableColumn property="endereco" title="${message(code: 'requisicaoVisita.endereco.label', default: 'Endereco')}" />
                        
                            <g:sortableColumn property="mensagem" title="${message(code: 'requisicaoVisita.mensagem.label', default: 'Mensagem')}" />
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${requisicaoVisitaInstanceList}" status="i" var="requisicaoVisitaInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${requisicaoVisitaInstance.id}">${fieldValue(bean: requisicaoVisitaInstance, field: "id")}</g:link></td>
                        
                            <td>${fieldValue(bean: requisicaoVisitaInstance, field: "nome")}</td>
                        
                            <td>${fieldValue(bean: requisicaoVisitaInstance, field: "email")}</td>
                        
                            <td>${fieldValue(bean: requisicaoVisitaInstance, field: "telefone")}</td>
                        
                            <td>${fieldValue(bean: requisicaoVisitaInstance, field: "endereco")}</td>
                        
                            <td>${fieldValue(bean: requisicaoVisitaInstance, field: "mensagem")}</td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${requisicaoVisitaInstanceTotal}" />
            </div>
        </div>
    </body>
</html>
