class Person < ApplicationRecord
    has_many :addresses, :dependent => :destroy
    has_many :phones, :dependent => :destroy
    has_many :emails, :dependent => :destroy
    accepts_nested_attributes_for :addresses, :emails, :phones
end
