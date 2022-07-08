---
layout: sessions
event: pyws22
id: 0
title: >
    Python: Introduction and Working with numbers
---

{% assign session=site.data.sessions[page.event][page.id] %}

### Video Link: {% if session.yt %} 
<a href="https://youtu.be/{{ session.yt }}">{{ page.title }}</a>
    {% else %} None 
    {% endif %}
### Notebook: [Colab link](https://colab.research.google.com/drive/{{ session.colab }})
### Resourses:
- [Python Official Website](http://python.org)
