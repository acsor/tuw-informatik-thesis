# Unofficial thesis template for informatics at TU Wien

The current rendered template PDF can be found here: https://otto-aa.github.io/unofficial-tu-wien-thesis-template/thesis.pdf

## Goals

This template has the following goals:

- provide a cover page that is similar to the official template
- provide decent styling (enabled by default, can be removed in `thesis.typ`)
- provide a decent file structure


## Installing

Set up the local package repository (see docs at https://github.com/typst/packages).

For instance on Linux:

```bash
cd ~/.local/share/
mkdir -p typst/packages/local/unofficial-tu-wien-thesis
cd "$_"
ln -s ~/the/path/to/this/repo/ 0.0.1
```

Then you can copy the template with:

```bash
typst init @local/unofficial-tu-wien-thesis
```

## Usage

After setting up the template, you will have the following files:

- `thesis.typ`: overall structure and styling, configuration for the cover pages and PDF metadata. This imports the other typst files.
- `content/front-matter.typ`: acknowledgments and abstract
- `content/main.typ`: all your chapters
- `content/appendix.typ`: AI tools acknowledgment and other appendices
- `refs.bib`: references

I recommend to always compare the cover pages from this template with the official one, to make sure that this part is correct. Refer to official documents ([formal guidelines for the master](https://informatics.tuwien.ac.at/study-services/master-graduation/#formal-guidelines)) on what is allowed/required.

If you want to adapt the styling, you can remove the `show: ...` commands in the `thesis.typ` and replace them with your own, or simply extend them with your own `show: ...` commands.

You can use your typical Typst setup to work with this template, e.g. I use VS Code with the Tinymist extension for a live preview.

## Contributing

I guess there are many ways to improve this template, feel free to do so and submit issues and PRs!

## Acknowledgments

This work is based on the [official template](https://gitlab.com/ThomasAUZINGER/vutinfth) maintained by Thomas Auzinger.