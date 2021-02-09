# Overview
Provides a scaffold for a HTML site based on [bootstrap's](https://getbootstrap.com/docs/3.3/) [grid system](https://getbootstrap.com/docs/3.3/css/#grid) and bootstrap framework in general. See [Layout](#layout).

# Installation
There is two ways to install jekyll themes: 1. Clone the repo and add start adding your content to a fork. 2. Install as a jekyll ruby gem. Following only covers the former method ...

### Install Jekyll
```
sudo apt-get install ruby-full build-essential zlib1g-dev
echo >>~/.bashrc <<EOF
# Install Ruby Gems to ~/local/gems
export GEM_HOME="$HOME/local/gems"
export PATH="$HOME/local/gems/bin:$PATH"
EOF
```

### Build
```
git clone git@github.com:sgpinkus/jekyll-bootstrap-structure.git my-site
cd my-site
npm i
edit _config.yml _fronts/* # Edit pages.
jekyll build
jekyll serve # Test locally
```

### Host on Github
```
git remote add origin ...
git subtree split --prefix=_site -b gh-pages
git push origin gh-pages
```

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
