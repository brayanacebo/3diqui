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
