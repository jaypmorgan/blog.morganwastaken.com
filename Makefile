.PHONY: all publish publish_no_init

all: publish

publish: includes/publish.el
	@echo "Publishing... with --no-init."
	emacs --batch --no-init --eval '(setq org-confirm-babel-evaluate nil)' \
		--load includes/htmlize.el \
		--load includes/publish.el \
		--funcall org-publish-all

clean:
	@echo "Cleaning up.."
	@rm -rvf *.elc
	@rm -rvf public
	@rm -rvf ~/.org-timestamps/*

serve:
	cd public && python -m http.server 8000
