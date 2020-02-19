# OA\_web

Why isn't it OA-web? Because Django project names can't take hyphens :shrug:

Must be deployed with `make gcloudbuild`.

Github <-> Cloudbuild is fukt so the `.git` folder in the submodule directory doesn't get cloned. As such cloudbuild fails to clone submodule contents unless it's pushed via tarball from commandline - ie `make gcloudbuild`.

Wait for
- https://github.com/GoogleCloudPlatform/cloud-builders/issues/435
- https://partnerissuetracker.corp.google.com/issues/123060361

## Notes to Remi
- Hey dipshit it's in python3
