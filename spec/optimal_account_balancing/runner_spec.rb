require 'optimal_account_balancing/runner'

RSpec.describe OptimalAccountBalancing::Runner do
  let(:transactions) do
    [
      ['naka', 'erick', 33.33],
      ['naka', 'takato', 33.33],
      ['erick', 'naka', 22],
      ['erick', 'takato', 22]
    ]
  end
  subject { described_class.call(transactions) }

  it 'outputs the number of minimum transactions' do
    expect(subject).to eq(2)
  end
end
