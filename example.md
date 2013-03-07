% Example slides
% Andreas Johansson

# Presentation title, bacon ipsum dolor sit

<!-- This comment is needed for a bug in pandoc which makes all headlines h1 unless there's content after the first h1 -->

---

## Page with text

Bacon ipsum dolor sit amet ham drumstick shank, bacon shankle swine ham
hock sirloin tenderloin ground round tongue. Bresaola tri-tip sirloin pork
loin, ham pastrami sausage pancetta meatball tail venison andouille
frankfurter biltong.

---

## Page with an image

![A cat!](http://placekitten.com/g/320/240)

---

## Page with a list

- Foo
    - Zap
- Bar
    1. Zomg
- Baz

---

## Page with an ordered list

1. Foo
    - Zap
2. Bar
    1. Zomg
3. Baz

---

## Page with a blockquotes

> Bacon ipsum dolor sit amet ham drumstick shank, bacon shankle swine ham
> hock sirloin tenderloin ground round tongue.
>
> Foo bar baz
>
> Zomg

---

## Definition list

Term 1
  ~ Definition 1
Term 2
  ~ Definition 1
  ~ Definition 2

---

## Sida med pre-text

~~~
(function() {
  var modes = [];
  jQuery(".code").each(function() {
    var cnt = jQuery(this),
        mode = cnt.attr("mode"),
        scripts = [];

    // Markdown wraps code elements in <pre><code> with the codemirror attributes
    // on the pre element, so we need to move the content up to the pre element
    if (cnt.is("pre")) {
      var codeElem = cnt.children("code");
      if (codeElem.length > 0) {
        cnt.html(codeElem.html());
      }
    }

    // Load code modes based on what modes are requested
    if (jQuery.inArray(mode, modes) < 0) {
      modes.push(mode);
      scripts = [mode];

      // Special need modes
      if (mode == "htmlmixed") {
        scripts.push("xml");
        scripts.push("css");
      }

      for (var i = 0; i < scripts.length; i++) {
        // Synchronously load the scripts before loading the deck.js functionality
        document.write('<script src="$data-dir$/deck.js-codemirror/mode/' + scripts[i] + "/" + scripts[i] + '.js"></s' + 'cript>');
      }
    }
  });
})();
~~~

---

## Codemirror - JS

~~~ { .code mode="javascript" }
function foo() {
    console.log("zomg");
}
foo();
// Cause overflow
bar();
baz();
zap();
zomg();
zomg();
zomg();
zomg();
~~~

---

## Codemirror - Ruby

~~~ { .code mode="ruby" }
def foo
    puts "zomg"
end
foo()
~~~

---

## Codemirror - HTML mixed

<textarea class="code" mode="htmlmixed"><script>
console.log("foo");
</script>
<style>
body { background: #000; }
</style></textarea>

---

## Codemirror - JS, runnable

~~~ { .code mode="javascript" runnable="true" }
function foo() {
    console.log("zomg");
}
foo();
~~~

