class WelcomeController < ApplicationController
  before_action :counter

  def index
    bad_method
  end

  def never_hit
    if true
      puts "this is never hit as it has no route"
    end
  end

  private

  def counter
    @count = REDIS.incr "count"
  end

  def bad_method
    @user = 'batman'
  end
end
