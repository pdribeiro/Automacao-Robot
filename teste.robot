** Settings **
Library  SeleniumLibrary

** Variables **
${SITE_URL}  https://automationpratice.com.br/
${SITE_URL_GOOGLE}  https://www.google.com/
${USUARIO_EMAIL}  qazando@teste.com
${USUARIO_SENHA}  123456


** Keywords **

Abrir Site Google
    Open Browser  ${SITE_URL_GOOGLE}  chrome

Abrir esse Site
    [Arguments]  ${url}
    Open Browser  ${url}  chrome

Acessar Site da qazando
    Open Browser  ${SITE_URL}  chrome

Aguardar site carregar
    Sleep  5s

Clicar sobre o botao login
    Click Element  xpath://a[@href='/login']

Digitar email
    Input Text  id:user  ${USUARIO_EMAIL}

Digitar senha
    Input Text  id:password  ${USUARIO_SENHA}

Clicar em logar
    Click Element  id:btnLogin

** Test Cases **

Cenário 1: Acessando o site da QAZANDO
    [Tags]  Teste1
    Acessar Site da qazando
    Aguardar site carregar
    Clicar sobre o botao login
    Aguardar site carregar
    Digitar email
    Digitar senha
    Aguardar site carregar
    Clicar em logar
    Aguardar site carregar

Cenário 2: Testando robot
    [Tags]  Teste3
    Abrir Site Google

Cenário 3: Testando valor no teste
    [Tags]  Teste3
    Abrir esse Site  https://automationpratice.com.br/
    Aguardar site carregar
    Clicar sobre o botao login
    Aguardar site carregar
    Digitar email
    Digitar senha
    Aguardar site carregar
    Clicar em logar
    Aguardar site carregar