BASENAME = puzzle-programming
PDF = $(addsuffix .pdf, $(BASENAME))
TEX = $(addsuffix .tex, $(BASENAME))
PDFLATEX = pdflatex
OUT_DIR = texfiles

CODEINPUTS = plus1.hs plus2.hs plus3.hs plus4.hs plus5.hs plus6.hs\
	     id1.hs id2.hs id3.hs\
	     fst.hs\
	     pair.hs pair1.hs\
	     io1.hs io2.hs io3.hs\
	     map1.hs map2.hs map3.hs map4.hs map5.hs map6.hs map7.hs map8.hs\
	     graph1.hs graph2.hs\
	     idris.hs
CODEDIR = code
CODEINPUTSTEX = $(addprefix $(CODEDIR)/, $(addsuffix .tex, $(CODEINPUTS)))
HIGHLIGHTSTY = highlight.sty
HIGHLIGHT_OPTS = --out-format=latex -l -f -t 4 -c $(HIGHLIGHTSTY)

.PHONY: clean all

all: $(PDF)

$(PDF): $(TEX) $(CODEINPUTSTEX)
	@# Construct $(OUT_DIR) if it doesn't exist
	@test -d $(OUT_DIR) || mkdir $(OUT_DIR)
	@# Twice, so TOC is also updated
	@TEXINPUTS=$(STY_DIR)//: $(PDFLATEX) -output-directory $(OUT_DIR) $<
	@TEXINPUTS=$(STY_DIR)//: $(PDFLATEX) -output-directory $(OUT_DIR) $<
	@ln -sf $(OUT_DIR)/$@ .

clean:
	@$(RM) -r $(OUT_DIR)
	@$(RM) $(PDF) $(CODEINPUTSTEX) $(CODEDIR)/$(HIGHLIGHTSTY)

%.hs.tex: %.hs
	@highlight -S hs $(HIGHLIGHT_OPTS) -i $< -o $@
