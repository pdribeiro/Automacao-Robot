# Automação com Robot Framework

## Acesso ao Site

- **Site:** [https://automationpratice.com.br/](https://automationpratice.com.br/)
- **Email:** teste@teste.com
- **Senha:** 123456

---

## Configuração do Ambiente

### 1. Instalar o Python
- Baixe e instale o Python a partir do link:
  [https://www.python.org/downloads/](https://www.python.org/downloads/)
- Durante a instalação, selecione a opção "Add Python to PATH".

### 2. Instalar o Robot Framework
```bash
pip install robotframework
```

### 3. Instalar a biblioteca Selenium para Robot Framework
```bash
pip install robotframework-seleniumlibrary
```

### 4. Instalar a versão compatível do Selenium
```bash
pip install selenium==4.9.0
```

### 5. Baixar e Configurar o ChromeDriver
- Baixe o ChromeDriver correspondente à versão do seu navegador em:
  [https://chromedriver.chromium.org/downloads](https://chromedriver.chromium.org/downloads)
- Copie o arquivo **chromedriver.exe** para o seguinte diretório:
  ```
  C:\Users\Usuário\AppData\Local\Programs\Python\Python312\Scripts\
  ```

### 6. Instalar o Visual Studio Code
- Baixe e instale o VS Code em:
  [https://code.visualstudio.com/download](https://code.visualstudio.com/download)
- Instale a extensão **Robot Framework Intellisense** no VS Code.

---

## Criando o Projeto e Arquivo de Teste

1. Crie um projeto e um arquivo de teste chamado `teste.robot`.
2. Insira o seguinte conteúdo como exemplo:

```robot
*** Settings ***
Library  SeleniumLibrary

*** Variables ***

*** Keywords ***
Abrir Site
    Open Browser  https://automationpratice.com.br/  chrome

*** Test Cases ***
Cenário 1: Acessando o site do Robot
    Abrir Site
```

---

## Executando os Testes

### Executar um Arquivo de Teste
```bash
robot teste.robot
```

### Executar um Teste Específico por Nome
```bash
robot --test "Cenário 3: Testando valor no teste" teste.robot
```

### Executar Testes por Tag
```bash
robot --include Teste3 teste.robot
```

### Excluir Testes por Tag
```bash
robot --exclude Teste3 teste.robot
```

---

Este guia fornece os passos necessários para configurar e executar testes utilizando o Robot Framework com Selenium. Certifique-se de seguir as instruções cuidadosamente para evitar erros de configuração.


# Explicação do Código de Automação em Robot Framework

Este documento explica a estrutura e os componentes do código de automação de testes escrito em **Robot Framework**. Ele utiliza a **SeleniumLibrary** para interagir com navegadores web.

---

## **Estrutura do Código**

### **1. Settings**
A seção **Settings** define as configurações globais do script, como bibliotecas e recursos necessários.

```robot
** Settings **
Library  SeleniumLibrary
```

- **Library SeleniumLibrary**: Importa a biblioteca **SeleniumLibrary**, que fornece funções para interagir com navegadores web.

---

### **2. Variables**
A seção **Variables** armazena valores reutilizáveis, como URLs, credenciais de login e outros parâmetros, tornando o script mais flexível e fácil de manter.

```robot
** Variables **
${SITE_URL}  https://automationpratice.com.br/
${SITE_URL_GOOGLE}  https://www.google.com/
${USUARIO_EMAIL}  qazando@teste.com
${USUARIO_SENHA}  123456
```

- **${SITE_URL}**: URL principal do site que será testado.
- **${USUARIO_EMAIL}** e **${USUARIO_SENHA}**: Credenciais usadas para login.
- **${SITE_URL_GOOGLE}**: URL adicional, não utilizada no código fornecido.

---

### **3. Keywords**
A seção **Keywords** define ações reutilizáveis que encapsulam conjuntos de passos. Essas "funções" facilitam a leitura e manutenção do código.

#### Exemplos de Keywords:

1. **Abrir Site Herbert**
   ```robot
   Abrir Site Herbert
       Open Browser  ${SITE_URL_HERBERT}  chrome
   ```
   - Abre o navegador **Chrome** e tenta acessar a variável `${SITE_URL_HERBERT}` (não definida no script).

2. **Abrir Site**
   ```robot
   Abrir Site
       Open Browser  ${SITE_URL}  chrome
   ```
   - Abre o site principal armazenado em `${SITE_URL}` no navegador **Chrome**.

3. **Abrir esse site**
   ```robot
   Abrir esse site
       [Arguments]  ${url}
       Open Browser  ${url}  chrome
   ```
   - Recebe uma URL como argumento e abre no navegador **Chrome**.

4. **Esperar Página Carregar**
   ```robot
   Esperar Página Carregar
       Sleep  3s
   ```
   - Aguarda 3 segundos para garantir que a página carregue antes de executar a próxima ação.

5. **Clicar em Link de Login**
   ```robot
   Clicar em Link de Login
       Click Element  xpath://a[@href='/login']
   ```
   - Localiza e clica no link de login usando um seletor XPath.

6. **Preencher Campos de Login**
   - **Preencher Campo de E-mail**: Insere o e-mail no campo de entrada.
   - **Preencher Campo de Senha**: Insere a senha no campo de entrada.

7. **Verificar texto login realizado**
   ```robot
   Verificar texto login realizado
       ${texto_atual}  Get Text  id:swal2-title
       Should Be Equal As Strings  ${texto_atual}  Login realizado
   ```
   - Verifica se o texto exibido no elemento com o ID `swal2-title` é igual a "Login realizado".

---

### **4. Test Cases**
A seção **Test Cases** define cenários de teste específicos usando as keywords criadas anteriormente.

#### Exemplo de Test Case:

1. **Cenário 1: Acessando o site do Robot**
   ```robot
   Cenário 1: Acessando o site do Robot
       [Tags]  Teste1
       Abrir Site
       Esperar Página Carregar
       Clicar em Link de Login
       Esperar Página Carregar
       Preencher Campo de E-mail
       Preencher Campo de Senha
       Clicar em Botão de Login
       Esperar Página Carregar
       Verificar texto login realizado
   ```
   - Testa o fluxo completo de login:
     1. Abre o site.
     2. Navega até a página de login.
     3. Preenche o e-mail e senha.
     4. Realiza o login.
     5. Valida se o texto "Login realizado" é exibido.

2. **Cenário 2: Testando Robot**
   - Repete o mesmo fluxo do Cenário 1, mas está marcado com a tag `Teste3`.

3. **Cenário 3: Testando valor no teste**
   ```robot
   Cenário 3: Testando valor no teste
       [Tags]  Teste3
       Abrir esse site  https://automationpratice.com.br/
       Esperar Página Carregar
       Clicar em Link de Login
       Esperar Página Carregar
       Preencher Campo de E-mail
       Preencher Campo de Senha
       Clicar em Botão de Login
       Esperar Página Carregar
       Verificar texto login realizado
   ```
   - Difere do Cenário 1 ao usar a keyword **Abrir esse site**, permitindo testar outra URL passada como argumento.

---

## **Resumo**

- **Settings**: Configurações globais, como bibliotecas usadas.
- **Variables**: Variáveis reutilizáveis para tornar o código mais dinâmico.
- **Keywords**: Bloco de ações reutilizáveis que facilitam a automação e manutenção.
- **Test Cases**: Definem cenários de teste que utilizam as keywords para simular interações reais.

Essa organização modular do Robot Framework permite alta reutilização e clareza no código, tornando-o mais fácil de manter e expandir.


