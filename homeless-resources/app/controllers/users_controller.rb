class UsersController < ApplicationController
  def index
    @quotes = Quote.all
    @num_quotes = Quote.count
  end
end
