
CC = xelatex
RESUME_DIR = resume
OUTPUT_DIR = output
OUTPUT_FILENAME = resume
RESUME_SRCS = $(shell find $(RESUME_DIR) -name '*.tex')
CV_SRCS = $(shell find $(CV_DIR) -name '*.tex')

resume.pdf: $(RESUME_DIR)/resume.tex $(RESUME_SRCS)
	sudo apt install texlive-xetex
	sudo apt-get install texlive-fonts-recommended texlive-fonts-extra
	$(CC) --jobname=$(OUTPUT_FILENAME) -output-directory=$(OUTPUT_DIR) $<
	rm $(OUTPUT_DIR)/$(OUTPUT_FILENAME).aux
	rm $(OUTPUT_DIR)/$(OUTPUT_FILENAME).log
	rm $(OUTPUT_DIR)/$(OUTPUT_FILENAME).out
	cp $(OUTPUT_DIR)/$(OUTPUT_FILENAME).pdf ../

clean:
	rm -rf $(OUTPUT_DIR)/*.pdf
