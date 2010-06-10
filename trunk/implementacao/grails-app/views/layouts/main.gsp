<html>
    <head>
        <title><g:layoutTitle default="Gerenciador de Pedidos do Franqueado Hermes" /></title>
        <link rel="stylesheet" href="${resource(dir:'css',file:'main.css')}" />
        <link rel="shortcut icon" href="${resource(dir:'images',file:'hermes_fav.ico')}" type="image/x-icon" />
        <g:layoutHead />
        <g:javascript library="application" />
    </head>
    <body>
        <div id="spinner" class="spinner" style="display:none;">
            <img src="${resource(dir:'images',file:'spinner.gif')}" alt="Spinner" />
        </div>
        <div id="faixaSuperior" class="faixaSuperior">
          <a href=".">
            <img src="${resource(dir:'images',file:'hermes.png')}" alt="Hermes" border="0" height="150" />
            <label style="font-size: 30px; font-style: italic; color: maroon; vertical-align: 50px; padding-left: 100px;">Gerenciador de pedidos do franqueado Hermes</label>
          </a>
        </div>
        
        <div id="menuOpcoes" class="menuOpcoes">
          <span class="opcaoMenu"><a href="${createLink(uri: '/')}">Home</a></span>
          <span class="opcaoMenu"><a href="${createLink(uri: '/produto/list/')}">Ver produtos</a></span>
          <span class="opcaoMenu">Cadastrar na newsletter</span>
          <span class="opcaoMenu"><a href="${createLink(uri: '/pedido/create/')}">Fazer pedido</a></span>
          <span class="opcaoMenu"><a href="${createLink(uri: '/pedido/list/')}">Verificar pedidos</a></span>
          <span class="opcaoMenu"><a href="${createLink(uri: '/requisicaoVisita/create/')}">Solicitar visita</a></span>
        </div>
        <div id="menuAdministrador" class="menuAdministrador">
          <span class="opcaoMenu"><a href="${createLink(uri: '/cliente/create/')}">Cadastrar franqueado</a></span>
          <span class="opcaoMenu"><a href="${createLink(uri: '/produto/create/')}">Cadastrar produto</a></span>
          <span class="opcaoMenu">Cadastrar na newsletter</span>
          <span class="opcaoMenu">Imprimir relatório</span>
          <span class="opcaoMenu">Fazer backup</span>
          <span class="opcaoMenu"><a href="${createLink(uri: '/requisicaoVisita/list/')}">Verificar solicitações</a></span>
        </div>
        <g:layoutBody />
        <div id="faixaInferior" class="faixaInferior">
          <span class="opcaoMenu">Copyright 2010 - ES1</span>
        </div>
    </body>

</html>