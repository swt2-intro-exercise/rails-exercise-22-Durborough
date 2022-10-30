class Author < ApplicationRecord
    def name()
        # Call the methods `first_name` and `last_name` and concatenate their outputs 
        return first_name() + ' ' + last_name()
    end
end
