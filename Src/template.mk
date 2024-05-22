SWIFTC = swiftc
SWIFTCFLAGS = -O -whole-module-optimization

all:run

# 只是一个模版，在子文件夹中先定义target，然后include这个模版，就可以直接make run了

build/%:%.swift
	if [ ! -d build ]; then mkdir build; fi
	$(SWIFTC) $(SWIFTCFLAGS) -o $@ $<
	echo "Build Done"
	echo 


clean:
	rm -rf build
.PHONY:clean

run: $(target)
	./$(target)