class Quote < ActiveRecord::Base
	validates :saying, :presence => true, :length => { :maximum => 350, :minimum => 5 }
	validates :author, :presence => true, :length => { :maximum => 50, :minimum => 2 }

	def unique_tag
		abbr = self.author.split(" ").collect do |sub_string|
			sub_string[0]
		end
		abbr.join + '#' + self.id.to_s

	end

	# previous & next buttons
	def previous
	 self.class.where("id < ?", id).last
	end

	def next
	 self.class.where("id > ?", id).first
	end

end
