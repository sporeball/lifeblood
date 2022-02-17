---
title: navigation
layout: page
nav_order: 3
---
# navigation

the navigation order for your site is created using your pages' front matter.

any pages with a `title` property in their front matter block will appear in the site navigation.\
(you'll probably want to give some sort of title to every page.)

titled pages with a `nav_order` property will appear first, sorted in ascending order, followed by all titled pages **without** a `nav_order`, sorted alphabetically.

for example, this is the front matter block for this page:

```yaml
---
title: navigation
layout: page
nav_order: 3
---
```

{: .note}
if a page is given a `title` of `404`, it will automatically be excluded from the navigation.

### multiple versions
if the `enable_versions` site variable is set to `true`, the navigation will change to allow for multiple versions of documentation within the same site.

suppose you have the following documentation structure:

```
docs/
|- stable/
|  |- index.md
|  |- api.md
|- dev/
|  |- index.md
```

each page will now accept a `version` property in its front matter -- for example, here's what the block for `stable/index.md` should look like:

```yaml
---
title: home
layout: page
version: stable
nav_order: 1
---
```

if you set `version` to either `stable` or `dev` for each of the corresponding pages, then browse to `docs/stable/index.html`, the main navigation will include *only* the stable pages, sorted according to the above rules, and a new section with links to *both* versions of the current page -- `stable` and `dev` -- will be added underneath.

next, browse to `docs/stable/api.html`. since this page only has a `stable` version, the link to the `dev` version will turn red to indicate that there is no matching page.

{: .caution}
with `enable_versions` set to `true`, any pages without a `version` property in their front matter will not appear in the navigation at all.

### categories
using the `nav_categories` site variable, you can further sort each of your site's pages into one of several unique categories.

first, set `nav_categories` to an array of categories (e.g. `["general", "API reference"]`).\
then, add a `category` property to the front matter of each page, and set it to one of the categories given in the array.

with categories enabled, **the `nav_order` property changes behavior:** it will determine the page's placement *within its category* instead, and the alphabetically sorted section will not be used.

{: .caution}
using this feature presents a similar gotcha to the version feature -- any pages without a `category` property will not appear.
