all: html pdf docx txt

html: tang-cv.md style.css
	pandoc --standalone -c style.css --from markdown --to html -o tang-cv.html tang-cv.md

pdf: html
	wkhtmltopdf tang-cv.html tang-cv.pdf

docx: tang-cv.md
	pandoc --from markdown --to docx -o tang-cv.docx tang-cv.md

txt: tang-cv.md
	pandoc --standalone --smart --from markdown --to plain -o tang-cv.txt tang-cv.md

clean:
	rm -f *.html *.pdf *.docx *.txt
