---
title: Hakyll
tags: ["haskell", "hakyll", "web"]
---

[Hakyll](https://jaspervdj.be/hakyll/) is a static website compiler library. Breaking that down:

- "static website": website consisting of web page files. Static stands in constrast to _dynamic_, usually meaning generated on-the-fly in reponse to a HTTP request.
- "compiler library": Hakyll is a [Haskell](https://en.wikipedia.org/wiki/Haskell_(programming_language)) library. You write a Haskell program to transforms (compiles) markdown files, images, CSS files into a website by following the rules. Check out [this website's file](https://github.com/pskenny/pskenny.github.io/blob/master/site.hs) as an example or [Hakyll's Hackage page](https://hackage.haskell.org/package/hakyll).

As a consequence of Hakyll being a compiler library it is configured programmatically.

## Resources

- [Hakyll Tutorials](https://jaspervdj.be/hakyll/tutorials.html)