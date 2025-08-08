---
permalink: /media/
layout: splash
title: "Media"
excerpt: "<br><br><br>"
excerpt: ""
toc: false
classes: wide
header:
  overlay_color: "#5e616c"
  video:
    src: /assets/videos/EG-CPO-014_N.ferrugineus_and_busy_reef_7m_small.mp4
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
          <p class="media-subtitle-long">
            {{ media.excerpt_long }}
          </p>
          <a class="read-more" href="{{ media.external_url | default: media.url }}" target="_blank" rel="noopener">
            Read more →
          </a>
        {% endif %}
      </div>
      <div class="media-image">
        <img src="{{ media.image }}" alt="{{ media.title }}">
      </div>
    </div>
  {% endfor %}
</div>
