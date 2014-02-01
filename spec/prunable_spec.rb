require 'rspec'
require 'ostruct'
require_relative '../prunable'

describe Prunable do
	describe :from_assets do
		let(:f) { ->(id, date_created){ OpenStruct.new(id: id, date_created: date_created) } }

		it 'prunes accounts according to a true table' do
			cases = 
			[
				{
					input: [f.(1, Date.today - 30), f.(2, Date.today - 15)],
					output: [f.(1, Date.today - 30)],
					message: 'first to be prunable'
				},
				{
					input: [f.(1, Date.today - 16), f.(2, Date.today - 15)],
					output: [],
					message: 'is empty'
				}
			] 
			
			cases.each do |c|
				expect(Prunable.from_assets(c[:input])).to eq(c[:output]), c[:message]
			end
		end
	end
end