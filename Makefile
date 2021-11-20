install:
	python3 setup.py install
package:
	python3 setup.py sdist
clean:
	rm -rf build
	rm -rf dist
	rm -rf *.egg-info
