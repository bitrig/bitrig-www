{% extends 'layouts/main.swig' %}

{% block pagetitle %}Downloads{% endblock %}

{% block content %}
    <h1>Downloads</h1>

    <p>
    We are in the process of getting our first public release ready. Please be
    patient and check back often to see where we are at. The plan is to have
    something available for public consumption soon. In the meantime you can
    download <a href="{{wikiurl}}Snapshots">snapshots</a> from our mirrors.
    </p>

    <h2>Mirrors</h2>

    <table class="downloads">
    {% for mirror in mirrors %}
        <tr>
            <td><a href="{{mirror.url}}">{{mirror.url}}</a></td>
            <td>{{mirror.location}}</td>
        </tr>
    {% endfor %}
    </table>
{% endblock %}
