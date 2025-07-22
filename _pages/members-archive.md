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

{% for member in site.members %}
  <div class="member-card">
    <a href="{{ member.external_url | default: member.url }}" target="_blank" rel="noopener">
      <img src="{{ member.image }}" alt="{{ member.name }}">
      <h3>{{ member.name }}</h3>
    </a>
    <p>{{ member.organisation }}</p>
  </div>
{% endfor %}
