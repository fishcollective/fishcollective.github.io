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
      <a href="{{ media.external_url | default: media.url }}" target="_blank" rel="noopener">
        <img src="{{ media.image }}" alt="{{ media.title }}">
        <h3>{{ media.title }}</h3>
      </a>
      <p class="media-subtitle">{{ media.excerpt }}</p>
    </div>
  {% endfor %}
</div>