# CBIS DDSM DATASET

This dataset organizes information according to cases. However, it can be
convenient to organize this images in two main clases:
1. Benign
2. Malignant

We use the csv files provided by [CBIS-DDSM detailed description](https://wiki.cancerimagingarchive.net/display/Public/CBIS-DDSM#4408922e7d414e41beb7f14a2c373b8d)
and create a jupyter notebook using pandas to move the files and organize them
in two folders /train/benign and /train/malignant

**data** folder contains the images to be moved. This folder must be organized as follows:
/data
     /train
     /test

Inside **train** the CBIS DDSM roi - mass training images must be located
Inside **test** the CBIS DDSM roi - mass testing images 
