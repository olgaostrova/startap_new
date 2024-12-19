module PostsHelper
  def valid_tags
    Post::TAGS.map{ |m| [ m ] }
  end

  def valid_categories
    Post::CATEGORIES.map{ |m| [ m ] }
  end
end
