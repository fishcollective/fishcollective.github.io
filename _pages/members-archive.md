---
title: Members of the Fish Collective
layout: collection
permalink: /members/
collection: members
entries_layout: grid
classes: wide

header:
  overlay_image: /assets/images/Steve_Lindfield_BRUV.jpg
  overlay_filter: 0.3
---

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

