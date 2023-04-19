EXEC_THEMIS = Themis
EXEC_LIB_RANA = librana.so

kible-core-arm-publish: $(EXEC_THEMIS) $(EXEC_LIB_RANA)
	docker build --platform linux/arm64 --file dockerfile-kasm-core -t kible/kible-core .
	docker login -u "kible" -p "eehKgVR4QmoED8" docker.io
	docker push kible/kible-core

$(EXEC_LIB_RANA):
	cp ../Rana_Core_Utils/Rana_Core_Utils/librana.so ./

$(EXEC_THEMIS):
	cp ../Themis/Themis/Themis ./