Given("I visit {string}") do |string|
  visit string
end
When("I search for {string}") do |string|
  find('#twotabsearchtextbox').click
  find('#twotabsearchtextbox').set(string)

end
Then ("I should see search results for {string}") do |string|
  binding.pry
  #expect(find('a-text-normal').text).to eql("Apple-EarPods-3-5mm-Headphone-Plug")
end