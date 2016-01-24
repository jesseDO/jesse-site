###
# Compass
###

# Change Compass configuration
# compass_config do |config|
#   config.output_style = :compact
# end

###
# Page options, layouts, aliases and proxies
###

# Per-page layout changes:
#
# With no layout
# page "/path/to/file.html", :layout => false
#
# With alternative layout
# page "/path/to/file.html", :layout => :otherlayout
#
# A path which all have the same layout
# with_layout :admin do
#   page "/admin/*"
# end

# Proxy pages (https://middlemanapp.com/advanced/dynamic_pages/)
# proxy "/this-page-has-no-template.html", "/template-file.html", :locals => {
#  :which_fake_page => "Rendering a fake page with a local variable" }

###
# Helpers
###

# Automatic image dimensions on image_tag helper
# activate :automatic_image_sizes

# Reload the browser automatically whenever files change
activate :livereload

activate :directory_indexes


# Methods defined in the helpers block are available in templates
# helpers do
#   def some_helper
#     "Helping"
#   end
# end


# Views
# set :layouts_dir,  'templates/layouts'
# set :partials_dir, 'templates/partials'

config[:layouts_dir]  =    'templates/_layouts'
config[:partials_dir] =    'templates/_partials'

# Assets
set :css_dir,    'assets/css'
set :js_dir,     'assets/js'
set :images_dir, 'assets/images'



# Build-specific configuration
configure :build do
  # For example, change the Compass output style for deployment
  # activate :minify_css

  activate :autoprefixer

  # Minify Javascript on build
  # activate :minify_javascript

  # Enable cache buster
  # activate :asset_hash

  # Use relative URLs
  activate :relative_assets, true

  # Or use a different image path
  # set :http_prefix, "/Content/images/"
end

activate :blog do |work|
  work.name      = "work"
  work.paginate  = false
  work.prefix    = "work"

  work.layout    = :blog

  work.permalink = "{title}.html"
  work.sources   = "{title}.html"
  work.page_link = "page/{num}"
end

activate :blog do |labs|
  labs.name      = "labs"
  labs.paginate  = false
  labs.prefix    = "labs"

  labs.layout    = :labs

  labs.permalink = "{title}.html"
  labs.sources   = "{title}.html"
  labs.page_link = "page/{num}"
end