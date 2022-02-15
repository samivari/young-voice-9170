require 'rails_helper'

RSpec.describe 'index' do
  it 'lists the number each student has' do
    snape = Professor.create(name: 'Severus Snape', age: 45, specialty: 'Potions')
    hagarid = Professor.create(name: 'Rubeus Hagrid', age: 38, specialty: 'Care of Magical Creatures')
    lupin = Professor.create(name: 'Remus Lupin', age: 49, specialty: 'Defense Against The Dark Arts')

    harry = Student.create(name: 'Harry Potter', age: 11, house: 'Gryffindor')

    ProfessorStudent.create(student_id: harry.id, professor_id: snape.id)
    ProfessorStudent.create(student_id: harry.id, professor_id: hagarid.id)
    ProfessorStudent.create(student_id: harry.id, professor_id: lupin.id)

    visit '/students'

    expect(page).to have_content('Harry Potter: 3')
  end
end
