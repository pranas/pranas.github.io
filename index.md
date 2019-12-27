---
layout: columns
---

{%- if site.posts.size > 0 -%}
<ul class="posts">
  <li>
    <h1 id="posts-label">posts</h1>
  </li>

  {%- for post in site.posts -%}
  <li>
    <a class="post-link" href="{{ post.url | relative_url }}">
      <h2 class="post-title">{{ post.title | escape }}</h2>
    </a>
    <div class="post-meta">
      <ul class="post-categories">
        {%- for tag in post.categories -%}
        <li>{{ tag }}</li>
        {%- endfor -%}
      </ul>
      <div class="post-date"><i class="icon-calendar-empty"></i>{{ post.date | date: site.plainwhite.date_format }}</div>
    </div>
    <div class="post">
      {%- if site.show_excerpts -%}
      {{ post.excerpt }}
      {%- endif -%}
    </div>
  </li>
  {%- endfor -%}
</ul>

{%- endif -%}
