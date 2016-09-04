class TabOneFragment < Android::Support::V4::App::ListFragment

  attr_accessor :has_been_already_loaded

  def onCreateView(inflater, container, savedInstanceState)
    self.hasOptionsMenu = true

    view = inflater.inflate(R::Layout::Tab_one, container, false)

    swipeContainer = view.findViewById(R::Id::Swipe_container)
    swipeContainer.onRefreshListener = OnRefreshListener.new(swipeContainer)

    view
  end

  def onActivityCreated(savedInstanceState)
    super(savedInstanceState)    
    setListAdapter(adapter)
    # getListView().setOnItemClickListener(this)
  end

  def adapter
    Android::Widget::ArrayAdapter.new(activity, Android::R::Layout::Simple_list_item_1, States.all)
  end

  def onCreateOptionsMenu(menu, inflater)
    inflater.inflate(R::Menu::Tab_one_menu, menu)
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
