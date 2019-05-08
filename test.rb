#!/usr/bin/env ruby

require 'coverage'
Coverage.start

require './dog'

Dog.new('Delilah').gracie?

puts Coverage.peek_result
