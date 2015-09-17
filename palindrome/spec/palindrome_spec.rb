require_relative '../lib/palindrome'

RSpec.describe 'Palidrome' do
  context 'base case palindromes' do
    it 'includes empty string' do
      expect(palindrome?('')).to eq true
    end

    it 'includes one letter words' do
      expect(palindrome?('a')).to eq true
    end
  end

  context 'odd numbered words' do
    it 'returns true when palidrome' do
      expect(palindrome?('ama')).to eq true
    end

    it 'returns false when not palidrome' do
      expect(palindrome?('bma')).to eq false
    end

    context 'smoke test' do
      it 'returns ture when palidrome for long words' do
        expect(palindrome?('redivider')).to eq true
      end

      it 'returns false when not palidrome for long words' do
        expect(palindrome?('sedivider')).to eq false
      end
    end
  end

  context 'even numbered words' do
    it 'returns true when palidrome for even numberd word' do
      expect(palindrome?('oo')).to eq true
    end

    it 'returns true when palidrome for even numberd word' do
      expect(palindrome?('md')).to eq false
    end

    context 'smoke test' do
      it 'returns true when palidrome' do
        expect(palindrome?('redder')).to eq true
      end

      it 'returns false when not palidrome' do
        expect(palindrome?('xedder')).to eq false
      end
    end
  end
end
