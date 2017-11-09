require_relative 'century.rb'

describe "centuryFromYear" do
    context 'when year = 0' do
        it "returns 0" do
            zero = centuryFromYear(0)
            expect(zero).to eq(0)
        end
    end
    context 'when year is between 1 and 100' do
        it "returns 1" do
            test1 = centuryFromYear(5)
            expect(test1).to eq(1)
            test2 = centuryFromYear(20)
            expect(test2).to eq(1)
            test3 = centuryFromYear(100)
            expect(test3).to eq(1)
            test4 = centuryFromYear(101)
            expect(test4).not_to eq(1)
        end
    end
    context 'when year is above 100' do
        it "returns the correct century" do
            test1 = centuryFromYear(101)
            expect(test1).to eq(2)
            test2 = centuryFromYear(201)
            expect(test2).to eq(3)
            test3 = centuryFromYear(1700)
            expect(test3).to eq(17)
            test4 = centuryFromYear(1701)
            expect(test4).to eq(18)
        end
    end
end