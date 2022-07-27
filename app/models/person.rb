class Person < ApplicationRecord
    has_many :addresses
    has_many :phones
    has_many :emails
    #accepts_nested_attributes_for :emails
end
