require_relative '../base_runner'

module OptimalAccountBalancing
  # You are given an array of transactions transactions where 
  # transactions[i] = [fromi, toi, amounti] indicates that the person with ID = fromi gave $amounti 
  # to the person with ID = toi.

  # Return the minimum number of transactions required to settle the debt.

  class Runner < ::BaseRunner
    def initialize(transactions)
      @transactions = transactions
    end

    def call
      puts 'Hello'
    end
  end
end
