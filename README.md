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

