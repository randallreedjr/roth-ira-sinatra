require "roth_ira"

class RothCalculatorController < ApplicationController
  get '/' do
    @amount = RothIRA.calculate_limit(75000, :single, 25)
    haml :'roth_calculator/index'
  end

  post '/calculate' do

  end

end