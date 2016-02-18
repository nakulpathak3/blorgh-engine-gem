module Blorgh
  class Article < ActiveRecord::Base

    attr_accessor :author_name
    belongs_to :author, class_name: Blorgh.author_class.to_s

    before_save :set_author

    has_many :comments
    has_many :tags

    private

    def set_author
      self.author = Blorgh.author_class.find_or_create_by(name: author_name)
    end

  end
end
