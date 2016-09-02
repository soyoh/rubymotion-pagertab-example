class TabOneFragment < Android::Support::V4::App::Fragment

  def onCreateView(inflater, container, savedInstanceState)
    inflater.inflate(R::Layout::Tab_one, container, false)
  end

end