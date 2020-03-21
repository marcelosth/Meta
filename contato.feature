#language: pt

Funcionalidade: Contato

Para que eu possa entrar em contato com a jobmidia
Sendo um visitante da página
Posso preencher o formulário de contato

@negativo
Cenário: Enviar sem mensagem
Quando clico no botão contato e preencho "Marcelo" e "marcelo@gmail.com" e "11986706055" e não preencho o campo Mensagem
Então devo clicar em "Enviar"
E devo visualizar a mensagem "Por favor informe uma mensagem"

@positivo
Cenário: Preenchimento dos campos 
Quando clico no botão contato e preencho "Marcelo" e "marcelo@gmail.com" e "11986706055" 
Então devo inserir a mensagem "Gostaria de um orçamento para criação de website. Grato!" 

@positivo2
Cenário: Preenchimento e envio
Quando clico no botão contato e preencho "Marcelo" e "marcelo@gmail.com" e "11986706055" e "Gostaria de um orçamento para produtos ecológicos. Grato!"
Então clico em "Enviar"
E deve ser exibida a mensagem "Sua mensagem foi enviada com sucesso"

