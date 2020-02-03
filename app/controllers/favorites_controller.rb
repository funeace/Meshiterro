class FavoritesController < ApplicationController


  # post_image_idを指定している理由： routesの中でresourceとして定義されているため、idが作られない → post_image_idの値から紐づけている
  # current_user ログインしているユーザのidを取得してくれる。勝手にやってくれてるみたいです
  def create
    post_image = PostImage.find(params[:post_image_id])
    favorite = current_user.favorites.new(post_image_id: post_image.id)
    favorite.save
    redirect_to post_image_path(post_image)
  end

  def destroy
    post_image = PostImage.find(params[:post_image_id])
    favorite = current_user.favorites.find_by(post_image_id: post_image.id)
    favorite.destroy
    redirect_to post_image_path(post_image)
  end
end
