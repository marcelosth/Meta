Quando("clico no botão contato e preencho {string} e {string} e {string} e não preencho o campo Mensagem") do |nome, email, telefone|
    visit ''
    find('a[href="#contact"]').click
    find("#name").set nome
    find("#email").set email
    find("#phone").set telefone
 end
  
  Então("devo clicar em {string}") do |enviar|
    click_button "Enviar"
    sleep 5 #Somente para evidênciar 
  end
  
  Então("devo visualizar a mensagem {string}") do |mensagem|
    expect(mensagem).to eql "Por favor informe uma mensagem"
    sleep 5 #Somente para evidênciar
  end