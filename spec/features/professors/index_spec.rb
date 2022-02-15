require 'rails_helper'

RSpec.describe 'index' do
  it 'lists the professors and thier info' do
    snape = Professor.create(name: 'Severus Snape', age: 45, specialty: 'Potions')
    hagarid = Professor.create(name: 'Rubeus Hagrid', age: 38, specialty: 'Care of Magical Creatures')
    lupin = Professor.create(name: 'Remus Lupin', age: 49, specialty: 'Defense Against The Dark Arts')

    visit '/professors'

    expect(page).to have_content(snape.name)
    expect(page).to have_content(lupin.name)
  end
end
