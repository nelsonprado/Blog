class ComentariosController < ApplicationController
  before_filter :autenticacao, :only => [:destroy]
  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }
  
  def create
    @post = Post.find(params[:post_id])
    @comentario = @post.comentarios.create(params[:comentario])
    redirect_to post_path(@post)    
  end

  def destroy
    @post = Post.find(params[:post_id])
    @comentario = @post.comentarios.find(params[:id])
    @comentario.destroy
    redirect_to post_path(@post)
  end

end
