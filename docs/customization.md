---
title: customization
layout: page
nav_order: 4
---
# customization
lifeblood tries hard to provide sensible defaults, but it also ships with a number of CSS variables and customization options should your site need them.

## CSS variables
these can be placed in your site's [custom stylesheet](#custom) under a standard [`:root`](https://developer.mozilla.org/en-US/docs/Web/CSS/:root) rule.

### colors
- **\--color-background** - site background color (default: `#f9f9f9`)
- **\--color-text** - site text color (default: `#363636`)
- **\--color-text-muted** - color for less important text, e.g. footer contents (default: `#888`)
- **\--color-link** - site link color (default: `#0076d1`)
- **\--color-link-alt** - alternate link color. used in the [version picker](navigation#multiple-versions) (default: `#0d96ff`)
- **\--color-redlink** - color for dead links (default: `#d10000`)
- **\--color-selection** - background color of selected text (default: `#ddd`)

### fonts
- **\--font-stack** - default sans-serif font stack
- **\--font-stack-code** - default font stack for code blocks

#### overrides
- **\--font-body** - body font override
- **\--font-heading** - h1-h6 font override
- **\--font-code** - code block font override

## site options
these should go in your `_config.yml`.

#### footer_left
type: `string`

content to show in the left half of the site footer.

#### footer_right
type: `string`

content to show in the right half of the site footer.

#### custom
type: `boolean`

if `true`, the contents of the file `assets/custom.scss` will be loaded after all other styles.\
make sure to begin the file with an empty YAML front matter block (two lines with three dashes each).

#### fonts
type: `array`

an array of fonts to load from [Google Fonts](https://fonts.google.com).\
each item should match what is found after the `family` URL parameter of the font, e.g. `Nunito+Sans` or `Rubik:wght@300;600`.

if done correctly, you'll be able to use the loaded fonts as [overrides](#overrides).
