require './lib/atm.rb'

describe ATM do

  it 'holds $1000 when created' do
    expect(subject.funds).to eq 1000
  end

end
