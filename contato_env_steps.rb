Quando("clico no botão contato e preencho {string} e {string} e {string} e {string}") do |nome, email, telefone, msg|
    visit ''
    find('a[href="#contact"]').click
    find("#name").set nome
    find("#email").set email
    find("#phone").set telefone
    find("#message").set msg
  end
  
  Então("clico em {string}") do |enviar|
    click_button "Enviar"
    sleep 5 #Somente para evidênciar
  end
  
  Então("deve ser exibida a mensagem {string}") do |mensagem|
    expect(mensagem).to eql "Sua mensagem foi enviada com sucesso"
    end