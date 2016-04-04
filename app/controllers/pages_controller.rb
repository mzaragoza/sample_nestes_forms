class PagesController < ApplicationController
  expose(:users){User.all.order(:id)}

end
