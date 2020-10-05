module LikesHelper
    def user_like_post?(post, user)
        if user == nil
            return false
        else
            like = Like.find_by(post_id: post.id, user_id: user.id)
            return like.present?
        end
    end
end
