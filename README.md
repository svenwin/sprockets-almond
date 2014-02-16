This library adds AMD (via Almond) support to [Sprockets](https://github.com/sstephenson/sprockets).

## What is AMD?

The AMD format is a way of encapsulating JavaScript libraries, ensuring they have to explicitly define their dependencies.

## This library

This library adds AMD support to Sprockets, so it can wrap up JavaScript files as modules, and serve them appropriately. This is done by using `define_module` to declare a new module. You should put your files under `app/assets/javascripts/modules/`.

```
define_module(["backbone"], function(BB) {});
```

Sprockets will then postprocess your JS and insert the correct logical asset name as module name.

```
define("tickets/controller", ["backbone"], function(BB) {});
```

This is just syntactic sugar on top of the goodness that AMD already provides through Almond.

## Usage

1. Add `gem 'sprockets-almond'` to your `Gemfile`
1. Add `//= require sprockets/almond ` to your `application.js`
1. Require all the modules, e.g.: `//= require_tree ./models`
