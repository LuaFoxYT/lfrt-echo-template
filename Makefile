NAME := echo
lfar:
	lfrt launch lfdev tbfs -c src out.lfar

clean:
	rm pkg/full/_FILES_.tbfs

release:
	cp out.lfar ref.lfar
	rm out.lfar

lfpk:
	cp ref.lfar pkg/files/lfrtBin/$(NAME).lfar
	lfrt launch lfdev tbfs -c pkg/files/ pkg/full/_FILES_.tbfs
	lfrt launch lfdev tbfs -c pkg/full/ lfpk/lfrt/latest.lfpk

ALL:
	$(MAKE) lfar
	$(MAKE) release
	$(MAKE) lfpk
