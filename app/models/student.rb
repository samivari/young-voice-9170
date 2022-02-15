class Student < ApplicationRecord
  has_many :professor_students
  has_many :professors, through: :professor_students

  validates :name, presence: true
  validates :age, presence: true
  validates :house, presence: true

  def professor_count
    professors.count
  end
end
