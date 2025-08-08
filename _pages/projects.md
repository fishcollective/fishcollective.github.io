---
permalink: /meetings/
layout: splash
title: "Meetings & Training"
excerpt: ""
toc: false
classes: wide
header:
  overlay_color: "#5e616c"
  video:
    src: /assets/videos/SAL-BV-C07_Carcharhinus-taurus_66.3m.MP4_0067191.mp4
---
<div class="media-grid">
  {% for media in site.projects %}
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
