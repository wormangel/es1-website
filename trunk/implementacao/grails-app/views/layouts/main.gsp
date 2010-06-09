<html>
    <head>
        <title><g:layoutTitle default="GPFHMasterPage" /></title>
        <link rel="stylesheet" href="${resource(dir:'css',file:'main.css')}" />
        <link rel="shortcut icon" href="${resource(dir:'images',file:'favicon.ico')}" type="image/x-icon" />
        <g:layoutHead />
        <g:javascript library="application" />
    </head>
    <body>
        <div id="spinner" class="spinner" style="display:none;">
            <img src="${resource(dir:'images',file:'spinner.gif')}" alt="Spinner" />
        </div>
        <div id="hermesLogo" class="logo">
          <a href=".">
            <img src="${resource(dir:'images',file:'hermes.png')}" alt="Hermes" border="0" height="150" />
            <label style="font-size: 30px; font-style: italic; color: maroon;">Gerenciador de pedidos do franqueado Hermes</label>
          </a>
        </div>
        
        <div id="menuOpcoes" class="menuOpcoes" style="background-color: red; color: yellow; font-family: Verdana; font-size: 20px">
           Home
        </div>
        <g:layoutBody />
        <div style="background-color: red; color: yellow; font-family: Verdana; font-size: 20px">Copyright blablablabla - Powered by Grails</div>
    </body>

</html>