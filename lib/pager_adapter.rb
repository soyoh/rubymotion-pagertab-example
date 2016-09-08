class PagerAdapter < Android::Support::V4::App::FragmentStatePagerAdapter

  def PagerAdapter(fragmentManager)
    super(fragmentManager)
  end

  def getItem(position)
    case position
    when 0
      return TabTwoFragment.new
    when 1
      return TabOneFragment.new
    when 2
      return TabThreeFragment.new
    end
  end

  def getCount
    3
  end

  def getPageTitle(position)
    "Page #{position}"
  end

end