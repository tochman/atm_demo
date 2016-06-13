require './lib/atm.rb'

describe ATM do

  let(:account) { double('Account', balance: 100) }

  before do
    allow(account).to receive(:balance=)
  end

  it 'holds $1000 when created' do
    expect(subject.funds).to eq 1000
  end

  it 'deducts withdraw amount from ATM funds' do
    subject.withdraw(100, account)
    expect(subject.funds).to eq 900
  end

  it 'rejects withdraw if amount on account is to low' do
    expect(subject.withdraw(150, account)).to eq false
  end

end
