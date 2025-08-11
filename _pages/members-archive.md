---
title: Members of The Fish Collective
excerpt: "<br><br><br>"
layout: splash
permalink: /members/
collection: members
entries_layout: grid
classes: wide
header:
  overlay_color: "#5e616c"
  video:
    src: /assets/videos/GB-BV-P06_G.hebraicum_77cm_16.0m_small.mp4
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
The following members have agreed to have their names and affiliations listed publicly.

{% raw %}
<link rel="stylesheet" href="https://cdn.datatables.net/1.13.6/css/jquery.dataTables.min.css">

<table id="members-table" class="display" style="width:100%">
  <thead>
    <tr>
      <th>Name</th>
      <th>Institute/Organisation/Affiliation</th>
    </tr>
  </thead>
  <tbody></tbody>
</table>

<script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
<script src="https://cdn.datatables.net/1.13.6/js/jquery.dataTables.min.js"></script>

<script>
document.addEventListener("DOMContentLoaded", function() {
  const sheetId = "1vTo3-WuQ8dBK5BqRkdPoZSsqf39ZgA9mnJLcVt0e6UNa-D6oI58I4IXS4Ra-oGF"; // your sheet ID
  const gid = "837565785"; // your sheet tab GID
  const sheetUrl = `https://docs.google.com/spreadsheets/d/${sheetId}/gviz/tq?tqx=out:json&gid=${gid}`;

  fetch(sheetUrl)
    .then(res => res.text())
    .then(text => {
      // Remove Google Sheets' JSONP wrapper
      const json = JSON.parse(text.substr(47).slice(0, -2));
      const rows = json.table.rows;

      const tableBody = document.querySelector("#members-table tbody");

      rows.forEach(row => {
        const name = row.c[0] ? row.c[0].v : "";
        const affiliation = row.c[1] ? row.c[1].v : "";

        if (name && affiliation) {
          const tr = document.createElement("tr");
          tr.innerHTML = `<td>${name}</td><td>${affiliation}</td>`;
          tableBody.appendChild(tr);
        }
      });

      $('#members-table').DataTable();
    })
    .catch(err => console.error("Error loading data:", err));
});
</script>
{% endraw %}

