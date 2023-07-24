# MONGODB for other applications

Docker image to prepare MongoDB for other pplications to work.
Based on official MongoDB image.

## ENVIRONMENT VARIABLES

### Required:

- *MONGO_DB* - non-admin database name to create.
- *MONGO\_USER*, *MONGO\_PASSWORD* - non-admin user to be set for database authorization. Will be set as a user permitted for read-write operation for objects of `${MONGO_DB}`.
- *MONGO\_INITDB\_ROOT\_USERNAME*, *MONGO\_INITDB\_ROOT\_PASSWORD* - root (admin) user credentials. Comes from official *MongoDB* image.

### Optional:

See official MongoDB image documentation.

## DATABASE STORAGE

See official MongoDB image documentation.
