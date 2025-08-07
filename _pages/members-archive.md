---
title: Members of the Fish Collective
layout: splash
permalink: /members/
collection: members
entries_layout: grid
classes: wide
header:
  overlay_image: /assets/images/Steve_Lindfield_BRUV.jpg
  overlay_filter: 0.3
---

## Steering Committee
<div class="members-grid">
  {% for steering in site.steering %}
    <div class="member-card">
      <a href="{{ steering.external_url | default: steering.url }}" target="_blank" rel="noopener">
        <img src="{{ steering.image }}" alt="{{ steering.title }}">
        <h3>{{ steering.title }}</h3>
      </a>
      <p class="steering-subtitle">{{ steering.excerpt }}</p>
    </div>
  {% endfor %}
</div>

## Working Group
<div class="members-grid">
  {% for member in site.members %}
    <div class="member-card">
      <a href="{{ member.external_url | default: member.url }}" target="_blank" rel="noopener">
        <img src="{{ member.image }}" alt="{{ member.title }}">
        <h3>{{ member.title }}</h3>
      </a>
      <p class="member-subtitle">{{ member.excerpt }}</p>
    </div>
  {% endfor %}
</div>

## Members
- Coming soon...