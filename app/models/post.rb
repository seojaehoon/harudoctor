class Post < ApplicationRecord
  belongs_to :user, required: false # 그리고 이거 레일즈5버전부터는 이제 belongs_to 쓸때 required 가 필수로 바뀌었더라고 
  has_many :comments
end
