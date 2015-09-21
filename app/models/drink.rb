class Drink < ActiveRecord::Base
	validates :name, presence: {message:"sorry!!!, can't be blank"}
	has_many :posts # one drink has_many post's'
end
