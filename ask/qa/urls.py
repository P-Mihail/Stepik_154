from django.urls import path
from qa.views import test_question_id

urlpatterns = [
    path("<int:question_id>/", test_question_id),
]
