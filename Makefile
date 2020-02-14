CLOUDBUILD_CONFIG=cloudbuild.yml
SHARED_PROJECT_ID=oa-shared-247623

ACTIVE_PROJECT_ID=$(shell gcloud info | grep -oP "(?<=Project: \[).*(?=\])")

all: gcloudbuild
gcloudbuild:
ifeq ($(ACTIVE_PROJECT_ID), $(SHARED_PROJECT_ID))
	gcloud builds submit --config=$(CLOUDBUILD_CONFIG)
else
	@echo "gcloud Project ID was not set to $(SHARED_PROJECT_ID). Please change your active gcloud config."
	@echo "Current Project ID: $(ACTIVE_PROJECT_ID)"
endif
