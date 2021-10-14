---
title: UI elements
layout: page
nav_order: 2
---
# UI elements

### typography
headings look like this:

# heading 1
## heading 2
### heading 3
#### heading 4
##### heading 5
###### heading 6

body text looks like this. it can be **bold**, *italic*, or <s>strikethrough</s>.

a horizontal rule can be seen below.\
the first `<h1>` tag on each page will be styled to appear as though it's followed by a horizontal rule.

---

### lists
- unordered lists look like this.
- item 2
- item 3

1. ordered lists look like this.
2. item 2
3. item 3

### blockquotes
> blockquotes look like this.

### tables
tables look like this:

| number | word form |
|--------|-----------|
| 1      | one       |
| 2      | two       |
| 3      | three     |

### code
inline code looks like this: `code here`

code blocks look like this (shown here with highlighting):
```js
// code with highlighting
if (thing == true) {
  object.method();
  return true;
}
```

### callouts
callouts are a type of element added by lifeblood, similar to the admonition syntax available in [Read the Docs](https://readthedocs.org).\
add one of the classes `.tip`, `.note`, or `.caution` to a paragraph using a Kramdown [inline attribute list](https://kramdown.gettalong.org/syntax.html#inline-attribute-lists) to turn it into a callout:

```md
{: .tip}
this is a *tip* callout.

{: .note}
this is a *note* callout.

{: .caution}
this is a *caution* callout.
```

{: .tip}
this is a *tip* callout.

{: .note}
this is a *note* callout.

{: .caution}
this is a *caution* callout.

add `.caps` to capitalize the callout's first letter:

```md
{: .note .caps}
this is a *note* callout with the first letter capitalized.
```

{: .note .caps}
this is a *note* callout with the first letter capitalized.
