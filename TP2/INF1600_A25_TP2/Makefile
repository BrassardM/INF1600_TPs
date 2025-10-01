ZIP_NAME = INF1600_remise_TP2.zip

all: remise

remise: clean
	zip -r $(ZIP_NAME) ./*

clean:
	@if [ -f $(ZIP_NAME) ]; then rm $(ZIP_NAME); fi

.PHONY: all remise clean
