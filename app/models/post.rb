# == Schema Information
#
# Table name: posts
#
#  id             :integer          not null, primary key
#  caption1       :text
#  caption2       :text
#  caption3       :text
#  category       :string
#  cook_time      :integer
#  ingredients    :text
#  instructions   :text
#  notes          :text
#  photo1         :string
#  photo2         :string
#  photo3         :string
#  photo4         :string
#  prep_time      :integer
#  serving        :string
#  title          :string
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  post_layout_id :integer
#  user_id        :integer
#

class Post < ApplicationRecord

mount_uploader :photo1, Photo1Uploader
mount_uploader :photo2, Photo2Uploader
mount_uploader :photo3, Photo3Uploader

belongs_to :user
has_many :comments, :dependent => :destroy
belongs_to :post_layout
end
