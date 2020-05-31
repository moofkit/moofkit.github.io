###
# Compass
###

# Change Compass configuration
compass_config do |config|
  config.output_style = :compact
end

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

# Proxy pages (http://middlemanapp.com/dynamic-pages/)
# proxy "/this-page-has-no-template.html", "/template-file.html", :locals => {
#  :which_fake_page => "Rendering a fake page with a local variable" }

###
# Helpers
###

# Automatic image dimensions on image_tag helper
# activate :automatic_image_sizes

# Reload the browser automatically whenever files change
#activate :livereload

# Methods defined in the helpers block are available in templates
# helpers do
#   def some_helper
#     "Helping"
#   end
# end

set :css_dir, 'stylesheets'
set :js_dir, 'javascripts'
set :images_dir, 'images'


set :og_description, "For my next challenge, I'm interested in a full-time job as a Ruby (on and off Rails) Engineer with involvement in ops."
set :github_handle, "moofkit"
set :twitter_handle, "moofkit"
set :linkedin_handle, "dmitriy-ivliev-58a35178"
set :email, "ivlievda@gmail.com"

configure :development do
  set :host, "http://localhost:4567"
end

activate :i18n, langs: [:en, :ru]

activate :autoprefixer do |prefix|
  prefix.browsers = "last 2 versions"
end

# With no layout
page '/*.xml', layout: false
page '/*.json', layout: false
page '/*.txt', layout: false
page '/feed.xml', layout: false

page 'blog/*', layout: 'blog_layout'

activate :blog do |blog|
  blog.prefix = "blog"
  blog.layout = "blog_layout"
  blog.tag_template = "blog/tag.html"
  blog.calendar_template = "blog/calendar.html"
  blog.sources = "{year}-{month}-{day}-{title}.html"
end

# Build-specific configuration
configure :build do
  set :host, "https://moofkit.github.io/"

  # For example, change the Compass output style for deployment
  activate :minify_css

  # Minify Javascript on build
  activate :minify_javascript

  # Enable cache buster
  activate :asset_hash

  # Use relative URLs
  activate :relative_assets

  # Or use a different image path
  # set :http_prefix, "/Content/images/"
end
