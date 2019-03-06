class Mushroom < ApplicationRecord
    geocoded_by :address
    after_validation :geocode, if: :will_save_change_to_address?


    before_save :say_hi, if: :will_save_change_to_name?


    def say_hi
          puts 'hi !! '
    end


end
