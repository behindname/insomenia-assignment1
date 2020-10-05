ActiveAdmin.register Post do

  #index 부분 customize하기
  index do
    selectable_column
    id_column
    column :title
    column :body do |post|
      truncate(post.body, :length => 15)
    end
    column :created_at
    column :updated_at
    column :user
    actions
  end
  
  form do |f|
    f.inputs do
      f.input :title
      f.input :body
      f.input :user, as: :select, collection: User.all.map{|user| [user.email, user.id]}
    end
  f.actions
  end
  
  #show 부분 customize하기
  show do
    attributes_table do
      row :id
      row :title
      row :body
      row :user
      row :created_at
      row :updated_at
    end
  end
  
  
end
