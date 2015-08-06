require ('rspec')
require('coin_combinations')
require('pry')

describe ('Float#coin_combinations') do
#   it('takes an input and converts it into a Float') do
#     test_example = 25
#     expect((test_example).coin_combinations()).to(eq(25.0))
#   end
  #
   it('takes input and determines how many quarters') do
    expect((0.99).coin_combinations()).to(eq(3))
   end
end
