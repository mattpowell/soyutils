# soyutils
Quick shim for providing soyutils (et al., soy and soydata) as a node/commonjs module. This module is meant to be used when browserify-ing Soy templates compiled via [`commonjs-soy`](http://github.com/mattpowell/commonjs-soy), but obviously, feel free to use however you want :).

Installation
===
`npm install soyutils --save` or download [`soyutils_nogoog.js`](raw/master/soyutils_nogoog.js) manually.

Usage
===
```js
var soy = require('soyutils/soy');
var soydata = require('soyutils/soydata');
// ... run soy templates ...
```
-- or, in the browser --
```js
<script src="soyutils_nogoog.js"></script>
<script>
// window.soy and window.soydata should be available
// ... run soy templates ...
</script>
```