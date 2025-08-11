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

<!-- Table HTML starts here -->
<table id="members-table" class="display" style="width:100%">
  <thead>
    <tr>
      <th>Name</th>
      <th>Affiliation</th>
    </tr>
  </thead>
  <tbody></tbody>
</table>

<!-- DataTables CSS and JS -->
<link rel="stylesheet" href="https://cdn.datatables.net/1.13.6/css/jquery.dataTables.min.css">
<script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
<script src="https://cdn.datatables.net/1.13.6/js/jquery.dataTables.min.js"></script>

<script>
const sheetUrl = "https://docs.google.com/spreadsheets/d/e/2PACX-1vTo3-WuQ8dBK5BqRkdPoZSsqf39ZgA9mnJLcVt0e6UNa-D6oI58I4IXS4Ra-oGF4hM-xXOlIPjIo6If/pub?gid=837565785&single=true&output=csv"; // Replace with your Google Sheets CSV link

fetch(sheetUrl)
  .then(response => response.text())
  .then(csvText => {
    const rows = csvText.split("\n").slice(1); // skip header row
    const tableBody = document.querySelector("#members-table tbody");

    rows.forEach(row => {
      const cols = row.split(",");
      const name = cols[0]?.trim();
      const affiliation = cols[1]?.trim();
      const consent = cols[2]?.trim().toLowerCase();

      if (consent === "yes") {
        const tr = document.createElement("tr");
        tr.innerHTML = `<td>${name}</td><td>${affiliation}</td>`;
        tableBody.appendChild(tr);
      }
    });

    $('#members-table').DataTable();
  });
</script>