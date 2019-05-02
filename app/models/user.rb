class User < ApplicationRecord
 def self.search(name: nil)

    if (name.nil?)
        query = self # the User class, just so we can start the query chain
        query = query.where('name like ?', "%#{name}%") if first_name.present?

    end
 end

 
end
