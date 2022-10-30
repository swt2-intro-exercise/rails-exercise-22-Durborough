class Author < ApplicationRecord
    validates :last_name, presence: true,
                    length: { minimum: 2 }
    def name()
        # Call the methods `first_name` and `last_name` and concatenate their outputs 
        return first_name() + ' ' + last_name()
    end
end
