# latex-template
This repository is a template for writing and building documents with LaTeX.

## Usage
Please write documents in `main.tex`.
If you want to use bibtex, you can write references in `main.bib`.

### images
You can use draw.io to create images.
First, please install draw.io desktop app from [here](https://github.com/jgraph/drawio-desktop/releases).  
Next, please update `DRAWIO` in `Makefile` to the path of draw.io desktop app.  
You can create `images/<name>.drawio.png` and run `make images` to generate `images/<name>.pdf`.

### latexdiff
You can check diff with latexdiff.

When you run below command, `main-diff.pdf` will be built.
```
make main-diff.pdf <commit hash (HEAD if you do not specify it)>
```

## Outputs
### local
You can see `main.pdf` by running command `make`.

### remote
This repository builds PDF with GitHub Action and [container-texlive](https://github.com/hiroyaonoe/container-texlive).
GitHub Action builds PDF when you push a commit or tag.
Please make Actions Workflow permissions `Read and write permissions` in Settings>Actions>General.

#### Commit
You can see `main.pdf` in 
- `main-pdf` branch
- Artifacts of GitHub Actions Workflow

#### Tag
If you push a tag, GitHub Action create release.
You can see `main.pdf` in Assets of the release.
