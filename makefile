all:

clean:
	rm -f *.png *.osk
	rm -rf build

build:
	mkdir build
	./build.sh
	cp ./hitsounds/* ./build/
	cp ./sounds/* ./build/
	cp ./skin.ini ./build/
	cp ./MainHUDComponents.json ./build/

zip:
	cd build && zip -r skin.osk . && mv skin.osk ../Owczarek.osk
