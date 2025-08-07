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
        <h3 class="sop-title">{{ sop.title }}</h3>
      </a>
                <a class="read-more" href="{{ sop.external_url | default: sop.url }}" target="_blank" rel="noopener">
            View SOP →
          </a>
    </div>
  {% endfor %}
</div>

## Annotation Guides
<div class="sops-grid">
  {% for sop in site.annotation %}
    <div class="sops-card">
      <a href="{{ sop.external_url | default: sop.url }}" target="_blank" rel="noopener">
        <div class="sop-image">
          <img src="{{ sop.image }}" alt="{{ sop.title }}">
        </div>
        <h3 class="sop-title">{{ sop.title }}</h3>
      </a>
                <a class="read-more" href="{{ sop.external_url | default: sop.url }}" target="_blank" rel="noopener">
            View SOP →
          </a>
    </div>
  {% endfor %}
</div>

## Quality Control Tools
<div class="sops-grid">
  {% for sop in site.qctools %}
    <div class="sops-card">
      <a href="{{ sop.external_url | default: sop.url }}" target="_blank" rel="noopener">
        <div class="sop-image">
          <img src="{{ sop.image }}" alt="{{ sop.title }}">
        </div>
        <h3 class="sop-title">{{ sop.title }}</h3>
      </a>
                <a class="read-more" href="{{ sop.external_url | default: sop.url }}" target="_blank" rel="noopener">
            View SOP →
          </a>
    </div>
  {% endfor %}
</div>