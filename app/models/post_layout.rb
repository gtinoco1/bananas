# == Schema Information
#
# Table name: post_layouts
#
#  id            :integer          not null, primary key
#  caption_count :integer
#  name          :string
#  photo_count   :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class PostLayout < ApplicationRecord
  has_many :posts, :dependent => :destroy
end
