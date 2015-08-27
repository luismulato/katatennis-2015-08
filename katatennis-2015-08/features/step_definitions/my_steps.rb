Given(/^ingreso al sitio TennisScore$/) do
  visit '/'
end

Then(/^debo ver el mensaje "(.*?)"$/) do |arg1|
  last_response.body.should =~ /#{arg1}/m
end

When(/^ingreso jugador(\d+) con "(.*?)" y jugador(\d+) con "(.*?)"$/) do |arg1, arg2, arg3, arg4|

  fill_in("jugador"+arg1, :with => arg2)
  fill_in("jugador"+arg3, :with => arg4)
  click_button("jugar")

end

When(/^ingreso los jugadores "(.*?)" y "(.*?)"$/) do |arg1, arg2|
  fill_in("jugador1", :with => arg1)
  fill_in("jugador2", :with => arg2)
  click_button("jugar")
end


