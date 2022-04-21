from django.shortcuts import render
from django.http import HttpResponse


def test(request, *args, **kwargs):
    return HttpResponse("OK")


def test_question_id(request, question_id):
    return HttpResponse("OK %s" % question_id)
