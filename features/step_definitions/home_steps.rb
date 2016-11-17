Dado(/^que eu estou na home do site Santander$/) do
 	Home.new.url
end

Quando(/^eu clicar no menu inferior Agências$/) do
 	Home.new.click_something("Agência")
end

Quando(/^clicar no link "([^"]*)"$/) do |link|
 	Home.new.click_something(link)
end

Quando(/^preencher o campo CEP$/) do
 	Home.new.fill_cep
  	sleep 2
end

Quando(/^clicar no botão buscar$/) do
	Home.new.click_search
end

Quando(/^clicar no botão buscar agência$/) do
	Home.new.click_search_agency
end

Quando(/^selecionar um endereço$/) do
 	Home.new.select_address
end

Então(/^aparecerá as agências disponíveis$/) do
	Home.new.verify_content
end

Quando(/^clicar na aba Busque Agência no Bairro$/) do
  	Home.new.click_agency
end

Quando(/^selecionar os dados obrigatórios$/) do
  	Home.new.select_data
end

Então(/^aparecerá as agências disponíveis na aba Busque Agência no Bairro$/) do
  	Home.new.verify_result
end