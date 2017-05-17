clean:
	rm -f hello.img

container:
	sudo singularity create --size 1024 hello.img
	sudo singularity bootstrap hello.img hello.def

run:
	sudo singularity run hello.img

shell:
	sudo singularity shell --writable hello.img
