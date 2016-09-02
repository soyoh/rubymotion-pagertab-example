class TabSelected
  
  def initialize(view_pager)
    @view_pager = view_pager
  end

  def onTabSelected(tab)
    @view_pager.setCurrentItem(tab.getPosition())
  end

  def onTabUnselected(tab)
  end

  def onTabReselected(tab)
  end
end