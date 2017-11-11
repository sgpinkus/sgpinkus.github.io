# Overview
Provides a scaffold for a HTML site based on [bootstrap's](https://getbootstrap.com/docs/3.3/) [grid system](https://getbootstrap.com/docs/3.3/css/#grid) and bootstrap framework in general. See [Layout](#layout).

# Installation
You can use this theme as the basis of a site or as a proper theme. When you package it as a theme, all the sample pages are excluded by default so you'll have to write you own from scratch. You'll also need to install the `bower` dependencies to you project. To install as a theme, add this line to your Jekyll site's Gemfile:

```ruby
gem "jekyll-bootstrap-structure"
```

And add this line to your Jekyll site's `_config.yml`:

```yaml
theme: jekyll-bootstrap-structure
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install jekyll-bootstrap-structure

The bower part: You need `npm` and `bower` installed. Then just run this which pull in a bunch of stuff into `bower_components/`:

    $ bower install --force

## Github Setup
Note because of the minor gem dependencies, this theme won't auto build properly with github pages (gh-pages). Github support for static sites is pretty limited, but you can just build the site locally then upload.

# Configuration
This is a list of all site configuration variables used in templates. See [_config.yml](_config.yml) sample configuration.

  title
  email
  google_analytics_id
  designer
  navbar.menu
  navbar.social
  navbar.logo
  defaults.structure.aside
  defaults.structure.banner
  defaults.structure.footer.nav-two
  defaults.structure.footer.nav-three

# Layout
Below is the HTML structure this theme provides: Items below with "#" are identified by their `id` attribute. Others are identified by tag name. Items in "[]" are optional. Their inclusion depends on configuration. See [Configuration](#configuration).

  html
    body
      header
        [#banner]
        #navbar
      article
        #content
        [#aside]
      footer
        #footer-nav
        [#footer-nav-two]
        [#footer-nav-three]

Layout rules:

  + body is always at least 100% of screen.
  + #content stretches to fill that space not take by header, footer.
  + header, article, footer are always 100% width of screen.
  + #content, banner, #navbar, #footer-navbar[-XXX] may be full width or limited to 1280px
  + #footer-navbar stretches in absence of footer-navbar-(two|three).

# Default Content
There is basic default pages for a basic site in `pages/` directory. These default pages are excluded if you install as a gem package as opposed to juts downloading the repo as basis for a site.

# Credits

<dl>
  <dt><a href="https://jekyllrb.com/">Jekyll</a></dt><dd>The Jekyll</dd>
  <dt><a href="https://getbootstrap.com/">Bootstrap></a><dd>The Bootstrap</dd>
  <dt><a href="http://fontawesome.io/">Font Awesome</a></dt><dd>Icons</dd>
  <dt><a href="https://github.com/daviddarnes/alembic">alembic</a></dt><dd>Ripped a bunch template from this theme.</dd>
  <dt><a href="https://gitlab.com/andrewbanchich/forty-jekyll-theme">forty-jekyll-theme</a></dt><dd>Ripped a bunch template from this theme.</dd>
  <dt><a href="https://github.com/octopress/paginate/">octopress/paginate</a></dt><dd>For pagination.</dd>
  <dt>...</dt><dd>Many more.</dd>
<dl>

# License
The theme is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
