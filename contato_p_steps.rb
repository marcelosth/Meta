Quando("clico no botão contato e preencho {string} e {string} e {string}") do |nome, email, telefone|
    visit ''
    find('a[href="#contact"]').click
    find("#name").set nome
    find("#email").set email
    find("#phone").set telefone
  end
  
  Então("devo inserir a mensagem {string}") do |msg|
    find("#message").set msg
  end