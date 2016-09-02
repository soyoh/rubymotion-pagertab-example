class TabTwoFragment < Android::Support::V4::App::Fragment

  def onCreateView(inflater, container, savedInstanceState)
    inflater.inflate(R::Layout::Tab_two, container, false)
  end

end