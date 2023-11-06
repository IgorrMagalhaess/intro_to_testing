# mermaid_spec.rb
# Ensure rspec testing framework is available for use in this file
# allow the spec file to read the contents of the mermaid file
# create a ruby file named mermaid.rb

require 'rspec'
require './lib/mermaid'

# start of describe block; one per class
# create a new instance of the Mermaid class
# start of it block for an individual test 
# the string should describe briefly in plain english what is being tested
# define Mermaid class; since an argument is being passed to Student, define an initialize method that takes one parameter
# name. set an intance variable to store the name value passed when
# creating a new instance of the Mermaid class
# assert that the mermaid is from the Mermaid class


describe Mermaid do
  it 'is an instance of mermaid' do
    mermaid = Mermaid.new('Sereia')
    expect(mermaid).to be_a Mermaid
  end

  # assert that the mermaid has a name property which matches what
  # was passed in. 

  it 'has a name' do
    mermaid = Mermaid.new('Sereia')
    expect(mermaid.name).to eq 'Sereia'
  end
  
  # since there is no age argument being passed,
  # Set a default age for 22 inside the initialize method
  # implement the age method in the Mermaid class. This method should
  # return the value of the `@age` instance variable
  # we need an attr_reader for the age variable

  it 'has an age' do
    mermaid = Mermaid.new('Sereia')
    expect(mermaid.age).to eq 22
  end

# Lets ensure the mermaid can age properly
# implement the get_older method. This method should increment the age
# instance variable by 1 each time it is called.
  
  it 'has can get older' do
    mermaid = Mermaid.new('Sereia')
    mermaid.get_older
    expect(mermaid.age).to eq 23
  end
end