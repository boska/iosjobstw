class Case < ActiveRecord::Base
  paginates_per 20
  acts_as_opengraph
  belongs_to :user
  validates :name, presence: true
  validates :description, presence: true
  validates :description, length: { maximum: 100 }
  validates :detail, length: { maximum: 5000 }

  def opengraph_image
    "http://i.imgur.com/W11MEgT.png"
  end
  def opengraph_title
    "#{name} | #{description}"
  end
  def opengraph_description
    description
  end
end
