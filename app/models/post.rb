class Post

  def initialize(data = {})
    @data = data
  end

  def title
    fetch('title')
  end

  def body
    fetch('body')
  end

  def id
    fetch('id')
  end

  private

  def fetch(key, no_text = 'N/a')
    @data.fetch(key, no_text)
  end

end