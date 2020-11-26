class Dogefact < ApplicationRecord
    validates_presence_of :context
    validates_length_of :context, :minimum => 5
end
