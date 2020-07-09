---
layout: page
title: Blog
---

{% for post in site.posts %}
  - <a href="{{ post.url | relative }}">{{ post.title }}</a><br/>
{% endfor %} 