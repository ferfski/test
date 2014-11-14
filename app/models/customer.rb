class Customer < ActiveRecord::Base
	validates :fullname, presence: true
end
