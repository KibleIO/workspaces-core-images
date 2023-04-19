kible-core-arm-publish:
	docker build --platform linux/arm64 --file dockerfile-kasm-core -t kible/kible-core:arm .
	docker login -u "kible" -p "eehKgVR4QmoED8" docker.io
	docker push kible/kible-core:arm

kible-core-x86-publish:
	docker build --platform linux/amd64 --file dockerfile-kasm-core -t kible/kible-core:x86 .
	docker login -u "kible" -p "eehKgVR4QmoED8" docker.io
	docker push kible/kible-core:x86