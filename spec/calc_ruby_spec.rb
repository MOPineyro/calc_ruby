require('calc_ruby')
require('rspec')

describe('calc_ruby') do
  it('Takes the word two plus three and adds 2+3') do
    calc_ruby('2 plus 3').should(eq(5))
  end
  it('Takes a string and deciphers the operator to give mathematical result with division') do
    calc_ruby('9 divided by 3').should(eq(3))
  end
  it('Takes a string and multiplies the number to the specified power') do
    calc_ruby('What is 2 to the 3rd power?').should(eq(8))
  end
end
