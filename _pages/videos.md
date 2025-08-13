---
permalink: /videos/
layout: splash
title: "Highlight videos"
excerpt: ""
toc: false
classes: wide
header:
  overlay_color: "#5e616c"
  video:
    src: /assets/videos/SB-BV-082_C._rubescens_L._miniatus_C._auricularis_C._westaustralis_38.7m_small.mp4
---

<div class="video-grid">
  {% for video in site.data.videos %}
    <div class="video-item">
      {% if video.platform == "youtube" %}
        <iframe src="https://www.youtube.com/embed/{{ video.id }}?autoplay=0" frameborder="0" allowfullscreen></iframe>
      {% elsif video.platform == "vimeo" %}
        <iframe src="https://player.vimeo.com/video/{{ video.id }}" frameborder="0" allowfullscreen></iframe>
      {% endif %}
      <div class="video-title">{{ video.title }}</div>
    </div>
  {% endfor %}
</div>