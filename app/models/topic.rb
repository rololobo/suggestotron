class Topic < ApplicationRecord
  has_many :votes, dependent: :destroy

  def pluralize
    self.title + 's'
  end

  def self.pluralize_all_the_things
    Topic.all.map do |topic|
      topic.pluralize
    end
  end

end
