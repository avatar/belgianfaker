$:.unshift File.dirname(__FILE__)

require 'belgianfaker/address'
require 'belgianfaker/company'
require 'belgianfaker/internet'
require 'belgianfaker/lorem'
require 'belgianfaker/name'
require 'belgianfaker/phone_number'
#require 'belgianfaker/version'

require 'extensions/array'
require 'extensions/object'

module BelgianFaker
  def self.numerify(number_string)
    number_string.gsub(/#/) { rand(10).to_s }
  end
  
  def self.letterify(letter_string)
    letter_string.gsub(/\?/) { ('a'..'z').to_a.rand }
  end
  
  def self.bothify(string)
    self.letterify(self.numerify(string))
  end
end