class PagesController < ApplicationController
  def home
  end

  def deposition
    @deposition = Deposition.new
  end
end
