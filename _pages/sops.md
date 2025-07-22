---
permalink: /sops/
layout: splash
title: "Standard Operating Procedures, Training Materials & Quality Control Tools"
excerpt: ""
toc: false
classes: wide
header:
  overlay_image: /assets/images/Steve_Lindfield_BRUV.jpg
  overlay_filter: 0.3
---

## Standard Operating Procedures
<div class="sops-grid">
  {% for sop in site.sops %}
    <div class="sops-card">
      <a href="{{ sop.external_url | default: sop.url }}" target="_blank" rel="noopener">
        <div class="sop-image">
          <img src="{{ sop.image }}" alt="{{ sop.title }}">
        </div>
        <div>
        <h3 class="sop-title">{{ sop.title }}</h3></br>
      </a>
      <p class="sop-excerpt">{{ sop.excerpt }}</p>
      </div>
                <a class="read-more" href="{{ media.external_url | default: media.url }}" target="_blank" rel="noopener">
            View Standard Operating Procedure →
          </a>
    </div>
  {% endfor %}
</div>

## Quality Control Tools


## Training Materials