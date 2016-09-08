class TabOneFragment < Android::Support::V4::App::ListFragment

  attr_accessor :has_been_already_loaded

  def onCreateView(inflater, container, savedInstanceState)
    @list = []
    @full_data_list = []
    self.hasOptionsMenu = true

    view = inflater.inflate(R::Layout::Tab_one, container, false)

    swipeContainer = view.findViewById(R::Id::Swipe_container)
    swipeContainer.onRefreshListener = OnRefreshListener.new(swipeContainer)

    view
  end

  def onActivityCreated(savedInstanceState)
    super(savedInstanceState)
    @adapter = Android::Widget::ArrayAdapter.new(activity, Android::R::Layout::Simple_list_item_1, [])
    setListAdapter(@adapter)
  end

  def onListItemClick(parent, view, position, id)
    puts @list[position]
    puts @full_data_list[position]
  end

  def onCreateOptionsMenu(menu, inflater)
    inflater.inflate(R::Menu::Tab_one_menu, menu)
  end

  def setUserVisibleHint(is_fragment_visible)
    super true
    if (self.isVisible)
      if (is_fragment_visible && !@has_been_already_loaded)
        puts "---> Fragment #{self.class} visible"
        
        get_demo_data

        @has_been_already_loaded = true
      end
    end

    def get_demo_data
      requests = MotionVolley::Request.new
      url = "http://jsonplaceholder.typicode.com/posts"
      requests.json_array(url, activity, self)

      # Simple Post
      # requests.json(:get, 'http://jsonplaceholder.typicode.com/posts/12', activity, self)
    end

    def data_response(response)
      puts "======== Success Response "
      puts response
      
      @list = []
      @full_data_list = []
      for i in 0..(response.length-1)
        object = response.get(i)
        @full_data_list << object
        @list << object.getString('title')
      end

      @adapter.clear()
      @adapter.addAll(@list)
      @adapter.notifyDataSetChanged()
    end

  end
end
