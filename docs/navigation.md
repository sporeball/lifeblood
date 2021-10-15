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
