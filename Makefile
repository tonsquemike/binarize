

all:
	g++ -I/usr/local/include/opencv -I/usr/local/include/opencv2 -L/usr/local/lib/ -g -o binary  binarizewolfjolion.cpp -lopencv_core -lopencv_highgui -lopencv_imgcodecs `pkg-config opencv --libs`-lstdc++

clean:
	rm -f binarizewolfjolion

test:
	./binarizewolfjolion -k 0.6 sample.jpg _result.jpg


package:	clean
	rm -f x.jpg
	tar cvfz binarizewolfjolionopencv.tgz *
