Given(/^que abri la aplicacion$/) do
  visit '/'
end

Then(/^debo ver "(.*?)"$/) do |mensaje|
  last_response.body.should =~ /#{mensaje}/m
end

Then(/^debo ver la tabla base de nueve cuadros vacios$/) do |marca="", x=1, y=1|
  cell = "#{x}:#{y}"

  last_response.should have_xpath( "//td[@id=\"#{cell}\"]") do |td|
    td.should contain( marca )
  end
end

When(/^cuando lleno la posicion "(.*?)" con (\d+)$/) do |campo, valor|
  fill_in(campo, :with => valor)
end

When(/^doy click en el boton "(.*?)"$/) do |boton|
  click_button(boton)
end

Then(/^debo ver la letra "(.*?)" en la celda (\d+),(\d+)$/) do |text, x, y|
 cell = "#{x}:#{y}"
 # puts text + "---------------------------------------------------"
 last_response.should have_xpath( "//td[@id=\"#{cell}\"]") do |td|
   td.text.should contain(text )
 end
end
