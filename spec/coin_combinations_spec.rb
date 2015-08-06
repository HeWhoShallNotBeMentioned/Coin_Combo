require ('rspec')
require('coin_combinations')

describe ('Fixnum#coin_combinations') do
  it('takes an input and converts it into a Float') do
    expect((25).coin_combinations()).to(eq(25.0))
  end
end
