class Course < ActiveRecord::Base
  has_many :quizzes
  has_many :assignments
end
