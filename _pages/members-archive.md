---
layout: default
title: Members of the Fish Collective
permalink: /members/
---

<div class="archive archive--grid">
  <div class="archive__grid">

    {% for member in site.members %}
      <article class="archive__item" itemscope itemtype="https://schema.org/CreativeWork">
        <a href="{{ member.external_url | default: member.url }}" 
           class="archive__item-link" 
           target="_blank" rel="noopener">

          {% if member.image %}
            <img class="archive__item-image" src="{{ member.image }}" alt="{{ member.title }}">
          {% else %}
            <!-- Optional placeholder -->
            <img class="archive__item-image" src="/assets/images/placeholder.png" alt="No image">
          {% endif %}

          <h2 class="archive__item-title" itemprop="headline">{{ member.title }}</h2>
        </a>

        {% if member.excerpt %}
          <p class="archive__item-excerpt" itemprop="description">{{ member.excerpt | markdownify }}</p>
        {% endif %}
      </article>
    {% endfor %}

  </div>
</div>
