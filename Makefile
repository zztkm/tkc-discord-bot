## Update module document
doc:
	v doc -o docs/ -f markdown .
	mv docs/.md docs/vdotenv.md

## Report suspicious code constructs.
vet:
	v vet *.v

## Format .v files
format:
	v fmt -w *.v

## Clean repository
clean:
	rm .env .env.parse


.PHONY: format clean
