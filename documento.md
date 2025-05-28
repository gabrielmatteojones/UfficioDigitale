---
layout: default
title: "Documenti"
permalink: /documenti/
author_id: gabriel
---

<h1 style="font-family: Arial, sans-serif; margin-bottom: 30px;">Elenco dei Documenti</h1>

{% assign documents = site.data.documents %}
<div style="display: flex; flex-wrap: wrap; gap: 20px;">

  {% for document in documents %}
    <div style="border: 1px solid #ccc; border-radius: 8px; padding: 20px; width: 300px; box-shadow: 2px 2px 5px rgba(0,0,0,0.1); font-family: Arial, sans-serif;">
      
      <h2 style="margin-top: 0; font-size: 1.3em; color: #004085;">{{ document.name }}</h2>
      
      <p style="margin: 5px 0; color: #555;"><strong>Autore:</strong> {{ document.author }}</p>
      <p style="margin: 5px 0; color: #555;"><strong>Data:</strong> {{ document.date }}</p>
      <p style="margin: 5px 0 15px 0; font-style: italic; color: #666;">{{ document.subject }}</p>
      
      <a href="{{ document.url }}" target="_blank" style="display: inline-block; padding: 8px 15px; background-color: #007bff; color: white; text-decoration: none; border-radius: 5px; font-weight: bold;">
        Scarica Documento
      </a>
      
    </div>
  {% endfor %}

</div>
