class PostController < ApplicationController  #PrivateController
    before_action :set_post, only: [:show, :update, :destroy]

    def index
        puts '--> index'
        @posts = Post.not_delete
      end
    
      def show
        if @post
            @post
        else
            render json: {
                message: "no post with id: #{params[:id]} found"
              }, status: :bad_request
        end
      end
    
      def create
        @post = Post.new(post_params)
        if( @post.valid?)
            if @post.save
                render json: {
                    "id": @post.id,
                    "title": @post.title
                }
            else
                render json: {
                  error: @post.errors
                }, status: :unprocessable_entity
              end
        else
          render json: {
            error: @post.errors
          }, status: :unprocessable_entity
        end
      end
    
      def update
        if @post
            if @post.update(post_params)
                render json: {
                    "id": @post.id,
                    "title": @post.title
                }
            else
                render json: {
                  error: @post.errors
                }, status: :unprocessable_entity
              end
        else
          render json: {
            message: "no post with id: #{params[:id]} found"
          }, status: :bad_request
        end
      end
    
      def destroy
        if @post
            @post.destroy
        end
      end

      private 
      def set_post
        @post = Post.find_by(:id => params[:id], :deleted_at => nil)
      end

      def post_params
        params.require(:post).permit(:title, :content, :image, :category, :user_id)
      end
end
