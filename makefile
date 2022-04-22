all:

clean:
	rm -f *.png *.osk

build:
	./build.sh

zip:
	zip -r skin.osk . 
