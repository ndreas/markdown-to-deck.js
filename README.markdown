# Markdown to deck.js slides

This is my personal utility for writing presentation slides using
[markdown](http://johnmacfarlane.net/pandoc/README.html#pandocs-markdown)
and generating [deck.js](http://imakewebthings.com/deck.js/) slides.

## Requirements

[Pandoc](http://johnmacfarlane.net/pandoc/) is used to convert markdown to HTML
and needs to be installed. For installation see
[here](http://johnmacfarlane.net/pandoc/installing.html).

The makefile used to generate the HTML documents requires
[GNU Make](http://www.gnu.org/software/make/)

## Included components

A few other libraries are included to make this work:

* [deck.js](http://imakewebthings.com/deck.js/)
* [CodeMirror](http://codemirror.net/)
* [deck.js-codemirror](https://github.com/iros/deck.js-codemirror)

## Usage

1. Write a markdown file, it should use 
[Pandoc's slideshow format](http://johnmacfarlane.net/pandoc/README.html#producing-slide-shows-with-pandoc).
   See [example.md](example.md) for an example.
2. Run `make <filename without suffix>`, for example `make example`. Just running `make` compiles all `*.md` files as presentations
3. Open the generated markdown file, for eample `example.html`

## Interesting things

* The base for generating the slides is Pandoc's dzslides mode, but the templates
  are overridden to use deck.js instead. The templates can be found in the data directory.
* CodeMirror modes are automatically loaded. The document reads all
  CodeMirror-enabled blocks and loads the required modes.
* It's possible to customize themes and data, see [the Makefile](Makefile) and the files
  in the data directory for examples

