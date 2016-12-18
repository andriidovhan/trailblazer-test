class HomeController < ApplicationController
  def index
    # render html: Home::Cell::Index.call, layout: true
    # render html: concept('home/cell/index', 'Hello', name: 'Kottans'), layout: true
    view 'home#index', 'Hello', name: 'Kottans'
  end
end