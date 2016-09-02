class TabThreeFragment < Android::Support::V4::App::Fragment

  def onCreateView(inflater, container, savedInstanceState)
    inflater.inflate(R::Layout::Tab_three, container, false)
  end

end