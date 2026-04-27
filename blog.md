---
title: Blog
permalink: /blog/
layout: page
---

# All posts

<ul class="post-list" style="list-style: none; padding-left: 0;">
  {% for post in site.posts %}
    <li style="margin-bottom: 0.6rem;">
      <a href="{{ post.url | relative_url }}">{{ post.title }}</a>
      <span class="post-meta" style="color: #666;"> · {{ post.date | date: "%b %d, %Y" }}</span>
    </li>
  {% endfor %}
</ul>

<p>Subscribe: <a href="{{ '/feed.xml' | relative_url }}">Atom feed</a></p>
