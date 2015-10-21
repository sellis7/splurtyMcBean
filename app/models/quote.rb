class Quote < ActiveRecord::Base
	validates :saying, :presence => true, :length => { :maximum => 350, :minimum => 5 }
	validates :author, :presence => true, :length => { :maximum => 50, :minimum => 2 }
end
