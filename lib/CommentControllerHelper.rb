module CommentControllerHelper
    def set_post
        @post = Post.find(params[:post_id])
      end
      
      def set_comment
        @comment = Comment.find(params[:id])
      end

      def comment_params_update
        params.require(:comment).permit(:body)
      end
    
      def comment_params_post
        params.permit(:body,:post_id)
      end
end