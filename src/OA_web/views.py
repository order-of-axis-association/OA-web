from django.http import HttpResponse, HttpResponseRedirect
from django.template import loader
from django.shortcuts import render, get_object_or_404

def index(request):
    template = loader.get_template('templates/wip.html')
    return HttpResponse(template.render({}, request));
