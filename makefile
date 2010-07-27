all: languages

languages:
	lrelease trans/*.ts

clean:
	rm -f trans/*.qm
	rm -f stuff/*.pyc

install:
	mkdir -p $(DESTDIR)/usr/lib/python-whiteboard
	mkdir -p $(DESTDIR)/usr/share/pixmaps
	mkdir -p $(DESTDIR)/usr/share/applications
	mkdir -p $(DESTDIR)/bin
	mkdir -p $(DESTDIR)/usr/share/qt4/translations/
	cp python-whiteboard $(DESTDIR)/bin
	cp stuff/* $(DESTDIR)/usr/lib/python-whiteboard
	cp dist/pywb_pixmap.xpm $(DESTDIR)/usr/share/pixmaps
	cp dist/python-whiteboard.desktop $(DESTDIR)/usr/share/applications
	cp trans/*.qm $(DESTDIR)/usr/share/qt4/translations/

