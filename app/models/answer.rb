class Answer < ActiveRecord::Base
	has_many :comments
	belongs_to :question
end
