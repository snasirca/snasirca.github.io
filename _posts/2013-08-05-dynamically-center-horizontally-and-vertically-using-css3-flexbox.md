---
layout: post
title: "Dynamically Center Horizontally and Vertically using CSS3 Flexbox"
date: 2013-08-05 02:47:00 
categories: [ux]
tags: css3 flexbox
comments: true
---

I've finally found a way to horizontally and vertically center a dynamically sized div element using the CSS3 flexbox 
layout mode. Still getting the hang of it but I'll be using these snippets below for an app that I'm working on.

<!--more-->

Hopefully flexbox sticks around and solves us of our many web design layout woes. Browser compatibility is still rough 
but I feel like it's getting there and we are at a good time now to begin experimenting with it in our apps. You'll find
below that I've also added some JavaScript so that you can see that dynamically adding elements still keeps everything 
centered horizontally and vertically.

*NOTE: The below code is only tested on the latest versions of Firefox and Chrome.*

### CSS:

```css
html, body {
    height: 100%;
    margin: 0;
}
body {
    display: flex;
    justify-content: center;
    align-items: center;
}
```

### HTML:

```html
<div id="parent">
    <div class="child">This is centered horizontally and vertically!</div>
</div>
```

### JavaScript (for dynamically adding elements to parent container):

```javascript
// using jQuery
$(function () {
    $('#parent').click(function () {
        $('.child').clone().appendTo('#parent');
    });
});
```

You can also view this in action here: <http://jsfiddle.net/6ZTRZ/3/>
