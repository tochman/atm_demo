require './lib/atm.rb'

describe ATM do

  it 'holds $1000 when created' do
    expect(subject.funds).to eq 1000
  end

  it 'deducts withdraw amount from ATM funds' do
    subject.withdraw(100)
    expect(subject.funds).to eq 900
  end

end
