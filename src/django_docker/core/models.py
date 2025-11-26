from django.db import models

class Actor(models.Model):
    name = models.CharField(max_length=128)
    nationality=models.CharField(max_length=128)
    created_at=models.DateTimeField(auto_now_add=True)
    released=models.DateField(null=True, blank=True)

    def __str__(self):
        return self.name
