# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Role.create(name: 'Informationsdisk', body: 'Som infodiskvärd har du ansvar för att hjälpa till och besvara både företags och studenters frågor. Det ingår även i jobbet som infodisksvärd att hjälpa till att förbereda lokalen dagen innan Teknikfokus och att vara med och plocka undan efteråt.')
Role.create(name: 'Företagsvärd', body: 'Som företagsvärd har du hand om kontakten med företagen under Teknikfokus och hjälper dem med det de behöver. Du kommer även kontakta företagen innan mässan för att presentera dig och se till att företagen har all information som de behöver inför mässan. Det ingår även i jobbet som företagsvärd att hjälpa till att förbereda lokalen dagen innan Teknikfokus och att vara med och plocka undan efteråt.')
Role.create(name: 'Frukost- och lunchvärd', body: 'Som frukost- och lunchvärd hjälper du cafeérna under dessa två tillfällen. Resten av dagen är ledig för att gå på mässan samt kvällsminglet.')
Role.create(name: 'Efterarbetare', body: 'Som en av efterarbetarna har du endast ett ansvar, att städa undan efter kvällsminglet som är på kvällen den 12:e februari.')
Role.create(name: 'Garderobsvärd', body: 'Som garderobsvärd sköter du garderoben under dagen. Det ingår även i jobbet som garderobsvärd att hjälpa till att förbereda lokalen dagen innan Teknikfokus och att vara med och plocka undan efteråt.')
