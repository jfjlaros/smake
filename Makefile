SHELL := ./wrapper
export SBATCH := --mem=1G

IN := $(wildcard *.in)
OUT := $(addsuffix .out, $(basename $(IN)))


all: $(OUT)

clean:
	rm -f $(OUT)


%.out: %.tmp
	touch $@

%.tmp: %.in
	SBATCH="--mem=2G" touch $@
