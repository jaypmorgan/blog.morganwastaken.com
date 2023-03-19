(require 'ox-publish)

(setq org-html-preamble-format
      '(("en"
         "<h1 class=\"title\">%t</h1>
          <p class=\"subtitle\">%d</p>")))

(setq org-publish-project-alist
      '(("posts"
	 :base-directory "./"
	 :base-extension "org"
	 :publishing-directory "./public/"
;	 :exclude ".*/public/.*"
	 :recursive t
	 :publishing-function org-html-publish-to-html)
	("news"
	 :base-directory "./news"
	 :base-extension "org"
	 :publishing-directory "./public/news"
	 :publishing-function org-html-publish-to-html)
	("css"
	 :base-directory "css/"
	 :base-extension "css"
	 :publishing-directory "public/css"
	 :publishing-function org-publish-attachment)
	("images"
	 :base-directory "./"
	 :base-extension "png\\|jpg\\jpeg"
	 :recursive t
;	 :exclude "./public/.*"
	 :publishing-function org-publish-attachment
	 :publishing-directory "./public/")
	("all" :components ("posts" "css" "images"))))
