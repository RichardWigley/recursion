require 'spec_helper'
require_relative '../lib/flatten_array'

RSpec.describe 'flatten_array' do
  it 'outputs non-array variable' do
    expect(flatten_array [8]).to eq [8]
  end

  it 'outputs array as array' do
    expect(flatten_array [1, 2])
  end

  it 'outputs nested array as array' do
    expect(flatten_array [[1]]).to eq [1]
  end

  context 'Acceptance tests' do
    it 'converts two nested arrays' do
      expect(flatten_array([[1, 2], [3, 4]])).to eq [1, 2, 3, 4]
    end
  end
end
