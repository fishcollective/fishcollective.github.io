---
permalink: /media/
layout: splash
title: "Media"
excerpt: ""
toc: false
classes: wide
header:
  overlay_image: /assets/images/Steve_Lindfield_BRUV.jpg
  overlay_filter: 0.3
---

<div class="media-grid">
  {% for media in site.media %}
    <div class="media-card">
      <div class="media-text">
        <a href="{{ media.external_url | default: media.url }}" target="_blank" rel="noopener">
          <h3>{{ media.title }}</h3>
        </a>
        <p class="media-subtitle">{{ media.excerpt }}</p>
        {% if media.excerpt_long %}
          <p class="media-subtitle-long">{{ media.excerpt_long }}</p>
        {% endif %}
      </div>
      <div class="media-image">
        <img src="{{ media.image }}" alt="{{ media.title }}">
      </div>
    </div>
  {% endfor %}
</div>