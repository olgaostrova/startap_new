module PostsHelper
  def valid_tags
    Post::TAGS.map{ |m| [ m ] }
  end

  def valid_categories
    Post::CATEGORIES.map{ |m| [ m ] }
  end

  def getDislikesModule(dislikes)
    count = dislikes
    if count < 0
      count *= 1
    end
    count
  end
end
