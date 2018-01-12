# Media History of New York City

I am teaching “Media History of New York” in Spring 2018 in the [Department of
Media, Culture, and Communications](http://steinhardt.nyu.edu/mcc/) at NYU. 

This repository is an attempt to generate both a [handsome
webpage](https://muziejus.github.io/media-history-of-nyc/index.html) and a
[handsome pdf](https://muziejus.github.io/media-history-of-nyc/syllabus.pdf)
of the syllabus at the same time with Markdown. This is (not) surprisingly
rather tricky. However, this is also a template for future syllabi, and I
encourage others to tweak this work.

## Structure

Though this syllabus is a [fork of my English 101
syllabus](http://github.com/muziejus/english-101-2017a), for 2018 I have made
some radical changes. 

Most notably, I am no longer using MultiMarkdown to process the syllabus,
choosing, instead, to use [Pandoc](http://pandoc.org). This is part of a
larger process of moving towards Pandoc because I’ve come to understand a lot
of the templating more easily than with MultiMarkdown.

The syllabus relies, first and foremost, on the file `metadata.yml`, which
tells Pandoc where to find the source files, what order to put them in, and
which templates to use when creating pdfs and htmls. It also relies on a
BibTeX file (`syllabus.bib`) to generate the bibliographies at the end of each
document.

The meat of the syllabus is in the `sections/` folder, and that leaves
`process.rb`, a ruby script that reads the metadata, compiles the documents
with Pandoc, and puts them in the right place for a quick stage-commit-push to
GitHub.

## Usage

```
git clone https://github.com/muziejus/media-history-of-nyc.git
cd media-history-of-nyc
ruby process.rb
```

This assumes you have Pandoc already installed. And, probably, LaTeX.

## Credits

As noted above, this is a large reworking of a previous syllabus for a course
I taught at NYU, “[English 101](https://gihub.com/muziejus/english-101-2017a)”
which was itself, a large reworking of “[Does It
Work?](https://github.com/muziejus/does-it-work)” from autumn 2016.

In order to get the syllabus to sound “NYUish,” I copied (sometimes very
heavily) from a syllabus prepared by my colleague at NYU, [Jini
Watson](http://english.fas.nyu.edu/object/JiniWatson.html). She was also
helpful in giving me a sense of what kinds of assignments and homework students
could expect at this university. Useful info for someone who’s not taught in a
US context in over half a decade!

The bravery to create a `LaTeX` syllabus was fueled by Kieran Healy’s [custom
LaTeX templates](http://kjhealy.github.com/latex-custom-kjh). I’ve greatly
simplified his setup, however. And [Dennis Tenen](http://denten.plaintext.in/)
helped me with figuring out my Pandoc babysteps.

This structure of this GitHub syllabus was once based on Mark Sample's
[Videogame Studies](https://github.com/samplereality/videogame-studies)
syllabus, in how it is presented on GitHub. 

If you would like to know more about GitHub and syllabi, here are a few
ProfHacker articles:

* [Forking Your Syllabus](http://chronicle.com/blogs/profhacker/forking-your-syllabus/39137) (22 March 2012)
* [How to Fork a Syllabus on GitHub](http://chronicle.com/blogs/profhacker/how-to-fork-a-syllabus-on-github/39447) (12 April 2012)
* [Git a Fork in My Syllabus, It’s Done](https://chronicle.com/blogs/profhacker/git-a-fork-in-my-syllabus-its-done/40331) (5 June 2012)

## License

Media History of NYC by [Moacir P. de Sá Pereira](http://moacir.com) is licensed
under a [Creative Commons Attribution-NonCommercial-ShareAlike 4.0 Unported
License](http://creativecommons.org/licenses/by-nc-sa/4.0/). To view a copy of
this license, visit
[http://creativecommons.org/licenses/by-nc-sa/4.0/](http://creativecommons.org/licenses/by-nc-sa/4.0/)
