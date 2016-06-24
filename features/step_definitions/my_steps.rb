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

Then(/^debo ver la letra "(.*?)" en la celda (\d+),(\d+)$/) do |marca, x, y|
  cell = "#{x}:#{y}"

  last_response.should have_xpath( "//td[@id=\"#{cell}\"]") do |td|
    td.should contain( marca )
  end
end

When(/^cuando la posicion "(.*?)" sea (\d+)$/) do |posicion, valor|
   fill_in(posicion, :with => valor)

end
When(/^doy click en el boton "(.*?)"$/) do |arg1|
  pending # express the regexp above with the code you wish you had
end
