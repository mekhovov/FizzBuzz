require 'simplecov'
require 'simplecov-rcov-text'
SimpleCov.formatter = SimpleCov::Formatter::RcovTextFormatter
SimpleCov.start

require './fizz_buzz'

describe FizzBuzz do
  let(:fb) { FizzBuzz.new(1..15) }
  let(:result) { [ 1, 2, "FIZZ", 4, "BUZZ", "FIZZ", 7, 8, "FIZZ",
                   "BUZZ", 11, "FIZZ", 13, 14, "FIZZ BUZZ" ] }

  context '#fizzed_buzzed' do

    it "FIZZed & BUZZed result should be readable by '.fizzed_buzzed' " do
      fb.fizzed_buzzed.should eq(result)
    end

    it "should not change items count" do
      fb.fizzed_buzzed.should have_exactly(15).items
    end

  end

  context '#fizz' do

    it "should return 'FIZZ' if number multiples of 3" do
      fb.fizz(9).should eq('FIZZ')
    end

    it "should return 'nil' unless number multiples of 3" do
      fb.fizz(10).should be_nil
    end

  end

  context '#buzz' do

    it "should return 'BUZZ' if number multiples of 5" do
      fb.buzz(15).should eq('BUZZ')
    end

    it "should return 'nil' unless number multiples of 5" do
      fb.buzz(14).should be_nil
    end

  end

  context '#show' do

    it "should print items divided by ',' " do
      STDOUT.should_receive(:puts).with(result.join(', '))
      fb.show
    end

  end

  context '#new' do

    it "should call 'fizz_buzz_it' and return FIZZed & BUZZed array" do
      FizzBuzz.any_instance.stub(:fizz_buzz_it).and_return(result)
      FizzBuzz.new(1..15)
    end

  end

end