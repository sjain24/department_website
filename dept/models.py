from django.db import models

# Create your models here.

class ProfileBox(models.Model):
    img = models.ImageField()
    first_name = models.CharField(max_length=50 , blank=True)
    middle_name = models.CharField(max_length=50, blank=True)
    last_name = models.CharField(max_length=50, blank=True)
    designation = models.CharField(max_length=50, blank=True)
    id = models.IntegerField(default = 0 , primary_key =True)
    phone_no = models.CharField(max_length=50, blank=True)
    fax = models.CharField(max_length=50, blank=True)
    email_id = models.CharField(max_length=50, blank=True)
    office_address = models.CharField(max_length=500, blank=True)
    research_int1 = models.CharField(max_length=50, blank=True)
    research_int2 = models.CharField(max_length=50, blank=True)
    research_int3 = models.CharField(max_length=50, blank=True)
    research_int4 = models.CharField(max_length=50, blank=True)
    research_int5 = models.CharField(max_length=50, blank=True)
    def __str__(self):
        return self.first_name