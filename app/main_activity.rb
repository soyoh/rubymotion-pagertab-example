class MainActivity < Android::Support::V7::App::AppCompatActivity

  def onCreate(savedInstanceState)
    super
    
    setContentView(R::Layout::Main_activity)

    toolbar = findViewById(R::Id::Toolbar)
    setSupportActionBar(toolbar)


    tabLayout = findViewById(R::Id::Tab_layout)
    tabLayout.addTab(tabLayout.newTab().setText("Tab 1"))
    tabLayout.addTab(tabLayout.newTab().setText("Tab 2"))
    tabLayout.addTab(tabLayout.newTab().setText("Tab 3"))
    tabLayout.setTabGravity(Android::Support::Design::Widget::TabLayout::GRAVITY_FILL)


    pager_adapter = PagerAdapter.new(getSupportFragmentManager())

    view_pager = findViewById(R::Id::View_pager)
    view_pager.setAdapter pager_adapter

    tabLayout.onTabSelectedListener = TabSelected.new(view_pager)

    @main_layout = findViewById(R::Id::Main_layout)
  end
end