---
permalink: /sops/
layout: splash
title: "Standard Operating Procedures, Training Materials & Quality Control Tools"
excerpt: ""
toc: false
classes: wide
header:
  overlay_color: "#5e616c"
  video:
    src: /assets/videos/SB-BV-082_C._rubescens_L._miniatus_C._auricularis_C._westaustralis_38.7m_small.mp4

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

## Data Storage and Sharing
<div class="sops-grid">
  {% for sop in site.ga %}
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