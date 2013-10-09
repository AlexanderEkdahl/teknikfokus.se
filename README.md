#Teknikfokus 2014

##TODO
* Multiple languages
* E and D logo
* Thank you site when inactive
* Make sqlite compatible?
* Only show days remaining
* Sticky navigation underneath countdown'
* Informatations sida för företagen
* Rotating quotes "Vill ha sommarjobb"

"Efter Teknikfokus 2013 frågade vi, "Vad vill du ha utav Teknikofus?"" Här är svaren:

yml event
  date
  map
  location
  date when site should be enabled

##Att göra som funktionärsansvarig

* Chaffeur funktionär(Kevin)
* Tävling?
* Information när elever slutar
* Vi ska säga till företaget - "Ha saker med er som ni byggt"

##Informationsdisk

* Paddor a lá Apple Store
* Företagskataloger

##To import Heroku data to local database

heroku pgbackups:capture
curl -o latest.dump `heroku pgbackups:url`
pg_restore --verbose --clean --no-acl --no-owner -h localhost -U alexanderekdahl -d teknikfokus_development latest.dump
rm latest.dump
