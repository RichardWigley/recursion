require 'spec_helper'
require_relative '../lib/fibonacci'

RSpec.describe 'fibonacci' do
  it 'returns the base case 0' do
    expect(fibonacci(0)).to eq 0
  end

  it 'returns the base case 1' do
    expect(fibonacci(1)).to eq 1
  end

  it 'calculates the 2' do
    expect(fibonacci(2)).to eq 1
  end

  it 'calculates the 3' do
    expect(fibonacci(3)).to eq 2
  end

  it 'calculates the 4' do
    expect(fibonacci(4)).to eq 3
  end

  it 'calculates the 5' do
    expect(fibonacci(5)).to eq 5
  end

  it 'calculates the n' do
    expect(fibonacci(9)).to eq 34
  end
end
