NAME := echo
lfar:
	lfrt launch lfdev tbfs -c src pkg/files/_-_lfrtBin_-_/$(NAME).lfar

clean:
	rm pkg/files/lfrtBin/$(NAME).lfar
	rm pkg/full/_FILES_.tbfs

release:
	cp out.lfar ref.lfar

lfpk:
	lfrt launch lfdev tbfs -c pkg/files/ pkg/full/_FILES_.tbfs
	lfrt launch lfdev tbfs -c pkg/full/ lfpk/lfrt/latest.lfpk

ALL:
	$(MAKE) lfar
	$(MAKE) lfpk
