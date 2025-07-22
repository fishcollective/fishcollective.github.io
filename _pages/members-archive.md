---
layout: default
title: Members of the Fish Collective
permalink: /members/
---

<div class="grid-container">
  <div class="grid-x grid-margin-x small-up-1 medium-up-2 large-up-3">
    {% for member in site.members %}
      <article class="cell archive__item" itemscope itemtype="https://schema.org/CreativeWork">
        <a href="{{ member.external_url | default: member.url }}" target="_blank" rel="noopener" class="archive__item-title">
          {% if member.image %}
            <div class="archive__item-teaser">
              <img src="{{ member.image }}" alt="{{ member.title }}">
            </div>
          {% endif %}
          <h2 itemprop="headline">{{ member.title }}</h2>
        </a>
        {% if member.excerpt %}
          <p itemprop="description">{{ member.excerpt | markdownify }}</p>
        {% endif %}
      </article>
    {% endfor %}
  </div>
</div>
