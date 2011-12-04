class ProductPhotosController < ApplicationController
  def index
    @product = Product.find(params[:product_id])
    @product_photos = @product.photos

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @product_photos }
    end
  end

  def show
    @product = Product.find(params[:product_id])
    @product_photo = ProductPhoto.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @product_photo }
    end
  end

  def new
    @product = Product.find(params[:product_id])
    @product_photo = ProductPhoto.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @product_photo }
    end
  end

  def edit
    @product = Product.find(params[:product_id])
    @product_photo = ProductPhoto.find(params[:id])
  end

  def create
    @product = Product.find(params[:product_id])
    @product_photo = @product.photos.build(params[:product_photo])

    respond_to do |format|
      if @product_photo.save
        format.html { redirect_to [@product,@product_photo], notice: 'Product photo was successfully created.' }
        format.json { render json: @product_photo, status: :created, location: @product_photo }
      else
        format.html { render action: "new" }
        format.json { render json: @product_photo.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @product = Product.find(params[:product_id])
    @product_photo = ProductPhoto.find(params[:id])

    respond_to do |format|
      if @product_photo.update_attributes(params[:product_photo])
        format.html { redirect_to [@product,@product_photo], notice: 'Product photo was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @product_photo.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @product = Product.find(params[:product_id])
    @product_photo = ProductPhoto.find(params[:id])
    @product_photo.destroy

    respond_to do |format|
      format.html { redirect_to product_product_photos_url(@product) }
      format.json { head :ok }
    end
  end
end
