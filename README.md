#Teknikfokus 2014

##Heroku Dataclip

Use this clip to extract all registered officials.

```sql
SELECT officials.name, officials.email, officials.size, ARRAY(SELECT roles.name FROM officials_roles INNER JOIN roles ON roles.id = officials_roles.role_id WHERE official_id = officials.id) as posts FROM officials;
```

##TODO
* Multiple languages
* E and D logo
* Thank you site when inactive
* Only show days remaining
* Sticky navigation underneath header
* Informatations sida för företagen
* Rotating quotes "Vill ha sommarjobb"
