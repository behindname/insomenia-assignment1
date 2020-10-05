ActiveAdmin.register Comment, :as => "PostComment" do

  form do |f|
    f.inputs do
      f.input :body
      f.input :user, as: :select, collection: User.all.map{|user| [user.email, user.id]}
    end
    f.actions
  end
  
end
