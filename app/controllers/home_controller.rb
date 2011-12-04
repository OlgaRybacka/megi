class HomeController < ApplicationController
	layout "home"
	def index
    @news = News.order "created_at desc"
    @products = Product.all
	end
end
