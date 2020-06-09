module CommentsHelper

    # we re not using this function naymore comment.first param
    def title_post(comment)
        post =Post.find(comment.post_id)
        post.title
    end
end
