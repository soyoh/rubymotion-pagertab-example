class OnRefreshListener
  def initialize(container)
    @container = container
  end

  def onRefresh
    @container.refreshing = false
  end
end