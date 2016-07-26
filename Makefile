SOURCE = manual.md
CSS = main.css
TITLE = "簡易コーナーリフレクターの作り方"
OPTIONS = -f markdown -s -V lang=ja -V pagetitle=$(TITLE) -c $(CSS) --template=template.htm 

all :
	make $(SOURCE:%.md=%.html)

%.html : %.md $(CSS)
	pandoc $(OPTIONS) -o $@ $<

