---
layout: default
title: "Documenti"
permalink: /documenti/
author_id: gabriel
---

# Elenco dei Documenti

{% assign documents = site.data.documents %}
<ul>
  {% for document in documents %}
    <li>
      <strong>{{ document.name }}</strong> <br>
      Autore: {{ document.author }} <br>
      Data: {{ document.date }} <br>
      Oggetto: {{ document.subject }} <br>
      <a href="{{ document.url }}" target="_blank">Scarica il documento</a>
    </li>
  {% endfor %}
</ul>
