class BlogController < ApplicationController
    def index
        @posts = Post.all.reverse
    end
    
    def create
        Post.create(writer: params[:irum], content: params[:naeyong])
        redirect_to :root
    end
    
    def destroy
        destroyed = Post.find(params[:id])
        destroyed.destroy
        redirect_to :root
    end
    
    def edit
       @post = Post.find(params[:id])
    end
    
    def update
       pp = Post.find(params[:id]) 
       pp.writer = params[:irum]
       pp.content = params[:naeyong]
       pp.save
       redirect_to :root
    end
    
end
