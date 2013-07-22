## Lazyload-Rails [![Build Status](https://travis-ci.org/vforge/lazyload-rails.png)](https://travis-ci.org/vforge/lazyload-rails)

This project integrates the jQuery Lazy Load Plugin
for Rails `image_tag` helpers

### What's jQuery Lazy Load?

From the project page:

*Lazy Load is a jQuery plugin written in JavaScript. It delays loading of images in long web pages. Images outside of viewport (visible part of web page) won't be loaded before user scrolls to them. This is opposite of image preloading.*

*Using Lazy Load on long web pages containing many large images makes the page load faster. Browser will be in ready state after loading visible images. In some cases it can also help to reduce server load.*

See [example](http://backbonejs.org/#examples) (scroll down to see images load)

## Documentation

### Features

* Automatically get Rails `image_tag` helpers to render lazyload-friendly
html img tags.
* Simple, really. That's pretty much it.

### Example

    <%= lazy_image_tag "kittenz.png", alt: "OMG a cat!" %>

Equals:

    <img alt="OMG a cat!" data-original="/images/kittenz.png" src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7">

## Install

Add this line to your application's Gemfile:

    gem "lazyload-rails", git: "vforge/lazyload-rails"

Download the [jQuery Lazy Load Plugin](https://raw.github.com/tuupola/jquery_lazyload/master/jquery.lazyload.js)
into your `vendor/assets/javascripts` directory and include it however you prefer.

And in your JavaScript code do:

    $("img[data-original]").lazyload();

Lazy Load can be customized, [see more options](http://www.appelsiini.net/projects/lazyload)

*Important: Remember that the Lazy Load Plugin depends on jQuery.*

## Configuration

By default, a 1x1 transparent gif is used as placeholder. This can be easily customized:

    # config/initializers/lazyload.rb
    Lazyload::Rails.configure do |config|
      config.placeholder = "/public/img/grey.gif"
    end

## License

Lazyload-Rails is released under the [MIT License](http://www.opensource.org/licenses/MIT).
