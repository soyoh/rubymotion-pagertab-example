class TabThreeFragment < Android::Support::V4::App::Fragment

  attr_accessor :has_been_already_loaded

  def onCreateView(inflater, container, savedInstanceState)
    inflater.inflate(R::Layout::Tab_three, container, false)
  end

  def setUserVisibleHint(is_fragment_visible)
    super true
    if (self.isVisible)
      if (is_fragment_visible && !@has_been_already_loaded)
        puts "---> Fragment #{self.class} visible"
        @has_been_already_loaded = true
      end
    end

  end

end