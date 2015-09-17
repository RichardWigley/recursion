require_relative '../lib/beers_on_wall'

RSpec.describe 'Beers on Wall' do
  it 'has a base case' do
    expect { beers_on_wall(0) }.to output('no more bottles of beer on the wall')
      .to_stdout
  end

  it 'can count from 1' do
    expect { beers_on_wall(1) }.to output("1 bottles of beer on the wall,\n" \
                                       'no more bottles of beer on the wall')
      .to_stdout
  end

  it 'can count from n' do
    expect { beers_on_wall(2) }.to output("2 bottles of beer on the wall,\n" \
                                       "1 bottles of beer on the wall,\n"  \
                                       'no more bottles of beer on the wall')
      .to_stdout
  end
end
