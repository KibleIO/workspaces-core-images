kible-core-arm-publish:
	docker build --platform linux/arm64 --file dockerfile-kasm-core -t kible/kible-core:arm .
	docker login -u "kible" -p "eehKgVR4QmoED8" docker.io
	docker push kible/kible-core:arm