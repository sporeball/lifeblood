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

#### elements
- **\--color-nav** - nav background color (default: `#efefef`)
- **\--color-nav-active** - shown on hover, and on the active page (default: `#e8e8e8`)
- **\--color-code** - code block background color (default: `#e8e8e8`)
- **\--color-hr** - horizontal rule color. also used when styling table headers and the first `h1` element on each page (default: `#d8d8d8`)
- **\--color-table-stripe** - background color for even-numbered table rows (default: `#e8e8e8`)
- **\--color-tip** - background color for tip-style [callouts](ui-elements#callouts) (default: `#e7fdb8`)
- **\--color-tip-accent** (default: `#5ac54f`)
- **\--color-note** - background color for note-style callouts (default: `#cffeff`)
- **\--color-note-accent** (default: `#0098dc`)
- **\--color-caution** - background color for caution-style callouts (default: `#fff4a5`)
- **\--color-caution-accent** (default: `#ffc825`)

#### syntax highlighting tokens
- **\--color-code-name** (default: `#e45649`)
- **\--color-code-string** (default: `#50a14f`)
- **\--color-code-function** (default: `#4078f2`)
- **\--color-code-keyword** (default: `#a626a4`)
- **\--color-code-constant** (default: `#986801`)
- **\--color-code-attribute** (default: `#b76b01`)
- **\--color-code-builtin** (default: `#cb7701`)
- **\--color-code-operator** (default: `#0184bc`)
- **\--color-code-comment** (default: `#727272`)

### fonts
- **\--font-stack** - default sans-serif font stack
- **\--font-stack-code** - default font stack for code blocks

#### overrides
- **\--font-body** - body font override
- **\--font-heading** - h1-h6 font override
- **\--font-code** - code block font override

## site options
these should go in your `_config.yml`.

#### home
type: `string`

the path to your documentation's front page; for example, [victus](https://sporeball.dev/victus) uses `/docs`.\
this will be used in the navigation.\
useful for project sites which serve an `index.html` page separate from the project's documentation.

#### footer_left
type: `string`

content to show in the left half of the site footer.

#### footer_right
type: `string`

content to show in the right half of the site footer.

#### theme_color
type: `string`

value to use for the [`theme-color`](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/meta/name/theme-color) meta tag.

#### enable_custom
type: `boolean`

if `true`, the contents of the file `assets/custom.scss` will be loaded after all other styles.\
make sure to begin the file with an empty YAML front matter block (two lines with three dashes each).

#### fonts
type: `array`

an array of fonts to load from [Google Fonts](https://fonts.google.com).\
each item should match what is found after the `family` URL parameter of the font, e.g. `Nunito+Sans` or `Rubik:wght@300;600`.

if done correctly, you'll be able to use the loaded fonts as [overrides](#overrides).

#### enable_dark_theme
type: `boolean`

if `true`, a dark theme will be used on devices which express a preference.

#### enable_versions
type: `boolean`

if `true`, the navigation will change to allow for multiple versions of documentation.\
see the [navigation](navigation#multiple-versions) page for more information.
