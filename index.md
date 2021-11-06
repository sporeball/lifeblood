---
title: home
layout: page
nav_order: 1
---

# lifeblood
**lifeblood** is a hyperfocused Jekyll theme for documentation -- clean, customizable, cutesy.\
it's designed as the theme for [victus](https://sporeball.dev/victus)' documentation, while being available for all to use.

### quick start
if your site is hosted on GitHub Pages, you can add lifeblood to your site's `_config.yml` as a remote theme:

```yml
remote_theme: sporeball/lifeblood
```

#### gem-based theme
alternatively, you can install lifeblood as a gem-based theme.
1. add the gem to your `Gemfile`:
```ruby
gem "lifeblood"
```
2. change the `theme` parameter in your `_config.yml`:
```yaml
theme: lifeblood
```
2. use [Bundler](https://bundler.io)'s `bundle` command to update all bundled gems.

### configuration
you'll want to use your pages' front matter to determine how your site's [navigation](docs/navigation) will appear.

also of note are the various [customization options](docs/customization) available, including both CSS and site variables.

#### acknowledgements
lifeblood is heavily inspired by the [Just the Docs](https://pmarsceill.github.io/just-the-docs) theme by [Patrick Marsceill](https://www.thismodernweb.com).\
it also borrows some ideas from [Water.css](https://watercss.kognise.dev) by [Kognise](https://kognise.dev).

the nav icon and site favicon are taken from the [Feather](https://feathericons.com) icon set by [Cole Bemis](https://colebemis.com).
