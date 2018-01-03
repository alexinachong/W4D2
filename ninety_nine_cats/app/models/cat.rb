class Cat < ActiveRecord::Base
  validates :birth_date, presence: true
  validates :color, presence: true, inclusion: { in: ["red", "green", "blue"]}
  validates :name, presence: true
  validates :sex, presence: true, inclusion: { in: ["M", "F"] }
  validates :description, presence: true
end
