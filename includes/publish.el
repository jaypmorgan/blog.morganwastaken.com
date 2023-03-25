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
	 :recursive t
	 :include ("sitemap.org")
	 :publishing-function org-html-publish-to-html)
	("sitemap"
	 :base-directory "./"
	 :base-extension "xml"
	 :publishing-directory "./public/"
	 :publishing-function org-publish-attachment)
	("robots"
	 :base-directory "./"
	 :base-extension "txt"
	 :publishing-directory "./public/"
	 :publishing-function org-publish-attachment)
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
	 :base-extension "png\\|jpg\\|jpeg"
	 :recursive t
	 :publishing-function org-publish-attachment
	 :publishing-directory "./public/")
	("all" :components ("posts" "news" "css" "images"))))
