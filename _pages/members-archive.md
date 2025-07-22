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

.members-grid {
  display: grid;
  grid-template-columns: repeat(auto-fill, minmax(200px, 1fr));
  gap: 2rem;
  margin: 2rem 0;
}

.member-card {
  text-align: center;
}

.member-card img {
  max-width: 100%;
  border-radius: 50%;
  height: auto;
}

.member-card h3 {
  margin-top: 1rem;
  font-size: 1.2rem;
}

.member-subtitle {
  color: #666;
  font-size: 0.9rem;
  margin-top: 0.5rem;
}

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

