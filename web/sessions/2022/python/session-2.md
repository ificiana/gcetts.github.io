---
layout: sessions
event: pyws22
id: 1
title: >
    Python: Variables, Data Types and Operators
---

{% assign session=site.data.sessions[page.event][page.id] %}

### Video Link: {% if session.yt %} 
<a href="https://youtu.be/{{ session.yt }}">{{ page.title }}</a>
    {% else %} None 
    {% endif %}
### Notebook: [Colab link](https://colab.research.google.com/drive/{{ session.colab }})
### Resourses: 
- [Python Data Types - GeekForGeeks](https://www.geeksforgeeks.org/python-data-types/)
- [Python Operators - w3schools](https://www.w3schools.com/python/python_operators.asp)
- [PEP 8](https://peps.python.org/pep-0008/)
