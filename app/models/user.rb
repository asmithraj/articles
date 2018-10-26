class User < ApplicationRecord
	enum role: [:guest, :editor, :admin]

	after_initialize do
  		if self.new_record?
    		self.role ||= :guest
  		end
	end
end
