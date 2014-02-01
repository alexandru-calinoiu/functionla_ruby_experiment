require 'rspec'
require_relative '../stateful_calculator'

describe StatefulCalculator do
	let(:calculator) { StatefulCalculator.new }

	it 'will add some numbers' do
		expect(calculator.add(10).div(2).add(37).result).to eq(42)
	end

	it 'will div some numbers' do
		expect(calculator.add(10).div(2).result).to eq(5)
	end
end
