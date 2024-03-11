# chopin-opus-17
[LilyPond](https://lilypond.org/) engraving source files used to create Chopin's Four Mazurkas, opus 17.

## Creating the PDF and MIDI files
(I highly recommend the [Frescobaldi](https://www.frescobaldi.org/) IDE for LilyPond.  It makes all of the following much easier.)

The PDF and MIDI files can be created by issuing the following command in the directory this file is in (assuming you have `lilypond` in your PATH variable):

        lilypond mazurkas-op17-book.ly

To create a smaller PDF, try:

        lilypond -dno-point-and-click mazurkas-op17-book.ly

You may also [download the latest release](https://github.com/ksnortum/chopin-opus-17/releases/latest) to get the compiled PDF and MIDI files.

### Problems with MIDI
The MIDI playback for the fourth mazurka is incorrect.  I couldn't find a way for the music to end at the first ending of the first repeat volta, only the second.  For the PDF, I just moved the "Fine" to the left so it is under the first ending, but this doesn't affect the playback.

### Two-sided printing
The pieces are set up so that they can be printed on two sides of the paper, leaving an extra margin amount on the inside pages for binding.  If you don't want this, open the file `header-paper.ily`,
find the `\paper` block (in the middle) and set `two-sided = ##f`.

## Thanks
Thanks to the folks at the [LilyPond user's mailing list](mailto://lilypond-user@gnu.org), especially [Jean Abou Samra](https://github.com/jeanas), for all the help getting LilyPond to do what I wanted.

## License
This work is licensed under the [Attribution-ShareAlike 4.0 International (CC BY-SA 4.0)](https://creativecommons.org/licenses/by-sa/4.0/) from Creative Commons.  Follow the link for details.  Basically, you can use this work however you want *if* you keep the same license and you attribute the work to me, Knute Snortum (knute (at) snortum (dot) net).

