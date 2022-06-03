require_relative './solver'

describe 'Test solver class' do
  context 'Test factorial method' do
    it 'factorial method with positive numer' do
      solver = Solver.new
      expect(solver.factorial(5)).to be(120)
    end
    it 'factorial method with zero' do
      solver = Solver.new
      expect(solver.factorial(0)).to be(1)
    end
    it 'factorial method with Negative numer' do
      solver = Solver.new
      expect { solver.factorial(-5) }.to raise_error('Error: Your number should be positive.')
    end
  end
  context 'Test Revese method' do
    it 'Revese the words of string' do
      solver = Solver.new
      expect(solver.reverse('omar')).to eql('ramo')
    end
  end
  context 'Test FizzBuzz method' do
    it 'Shoud Return Fizz if the number dividable by 3' do
      solver = Solver.new
      expect(solver.fizz_buzz(9)).to eql('fizz')
    end
    it 'Shoud Return buzz if the number dividable by 5' do
      solver = Solver.new
      expect(solver.fizz_buzz(5)).to eql('buzz')
    end
    it 'Shoud Return FizzBuzz if the number dividable by 3 and 5' do
      solver = Solver.new
      expect(solver.fizz_buzz(15)).to eql('fizzbuzz')
    end
    it 'Shoud Return the same number if the number not dividable by 3 and 5' do
      solver = Solver.new
      expect(solver.fizz_buzz(13)).to be(13)
    end
  end
end
