\version "2.19.82"

\header {
  title = "Since First I Saw Your Face"
  composer = "Thomas Ford"
  % Remove default LilyPond tagline
  tagline = ##f
}
#(set-global-staff-size 24)

%\paper {
%  #(set-paper-size "a4")
%  line-width = 180\mm
%  left-margin = 20\mm
%  bottom-margin = 10\mm
%  top-margin = 10\mm
%}

global = {
  \key d \major
  \time 2/2
  \partial 4
}

soprano = \relative c' {
  \global
  d4
  d4. e8 fis4 g % 1
  a4 g8 fis e4 b'
  a4. 8 g4 fis
  e4.(d8) 4 d
  d4. e8 fis4 g % 5
  a4 g8(fis) e4 b'
  a4. 8 g4 fis
  e4.(d8) d4 \repeat volta 2 { fis
    b4. 8 gis4 e
    a4. 8 fis4 d % 10
    d'4. 8 4 c
    b2 a
    r2 b4. g8
    a4. fis8 g4. e8
    fis4 b a4. 8 % 15
    g4 fis e2
    d2.
  }
}

alto = \relative c' {
  \global
  d4
  d4. 8 4 4
  e4 e8 e fis4 e
  d4. 8 cis4 b
  d4(cis) d d
  d4. 8 4 d
  e4 e e e
  fis4. d8 cis4 d
  d4(cis) d \repeat volta 2 { fis4
    dis4. 8 e4 e
    e4 cis d a'
    b4. 8 4 a
    a4(gis) a2
    e4 fis d e
    cis4 d b4. cis8
    d4 b cis4. 8
    b8(cis) d2 cis4
    d2.
  }
}

tenor = \relative c {
  \global
  fis4
  fis4. g8 a4 b
  cis4 8 8 4 b8(cis)
  d4 a a a
  a2 fis4 fis
  fis4. g8 a4 b
  cis4 4 4 b8(cis)
  d4 a a a
  a2 fis4 \repeat volta 2 { a
    b4. 8 4 gis
    e4 a a fis
    fis'4 g e e
    e2 cis
    cis4 d b4. cis8
    a4. b8 g4 a
    fis4 g e4. fis8
    g8(a) 4 2
    fis2.
  }
}

bass = \relative c {
  \global
  d4
  d4. 8 4 b
  a4 8 8 a'4 g
  fis4. 8 e4 d
  a2 d4 d
  d4. 8 4 b
  a4 a a' g
  fis4. 8 e4 d
  a2 d4 \repeat volta 2 { r
    r4 b e4. 8
    cis4 a d4. 8
    b4 g gis8 gis a a
    e'2 a,
    a'4. fis8 g4. e8
    fis4. d8 e4. a,8
    d4 g, a8(b) cis(d)
    e4 d a2
    d2.
  }
}

sopranoWordsOne = \lyricmode {
  \set stanza = "1."
  Since first I saw your face I re- solv'd to ho- nour and re- known ye;
  If now I be dis- dain'd, I wish my heart had ne- ver known ye.
  What I that loved, and you that lik'd,
  Shall we be- gin to wran- gle?
  No, no, no, my heart is fast, And can- not dis- en- tan- gle.
}

sopranoWordsTwo = \lyricmode {
  \set stanza = "2."
  The sun, whose beams most glor- ious __ _ are,
  Re- ject- ed no be- hold- er;
  And your sweet beau- ty past com- pare,
  Makes my poor eyes the bold- er.
  Where beau- ty moves, and wit de- lights,
  And signs of kind- ness blind me,
  There, O there, wher- "e'er" I go,
  I leave my heart be- hind me.
}

altoWordsOne = \lyricmode {
  \set stanza = "1."
  Since first I saw your face I re- solv'd to ho- nour and re- known ye;
  If now I be dis- dain'd, I wish my heart had ne- ver known ye.
  What I that loved, and you that lik'd,
  Shall we be- gin to wran- gle?
  No, no, no, no, no, my heart is fast, And can- not dis- en- tan- gle.
}

altoWordsTwo = \lyricmode {
  \set stanza = "2."
  The sun, whose beams most glor- ious __ _ are,
  Re- ject- ed no be- hold- er;
  And your sweet beau- ty past com- pare,
  Makes my poor eyes the bold- er.
  Where beau- ty moves, and wit de- lights,
  And signs of kind- ness blind me,
  There, O there, wher- "e're," wher- "e'er" I go,
  I leave my heart be- hind me.
}

tenorWordsOne = \lyricmode {
  \set stanza = "1."
  Since first I saw your face I re- solv'd to ho- nour and re- known ye;
  If now I be dis- dain'd, I wish my heart had ne- ver known ye.
  What I that loved, and you that lik'd,
  Shall we be- gin to wran- gle?
  No, no, no, no, no, my heart is fast, And can- not dis- en- tan- gle.
}

tenorWordsTwo = \lyricmode {
  \set stanza = "2."
  The sun, whose beams most glor- ious __ _ are,
  Re- ject- ed no be- hold- er;
  And your sweet beau- ty past com- pare,
  Makes my poor eyes the bold- er.
  Where beau- ty moves, and wit de- lights,
  And signs of kind- ness blind me,
  There, O there, wher- "e're," wher- "e'er" I go,
  I leave my heart be- hind me.
}

bassWordsOne = \lyricmode {
  \set stanza = "1."
  Since first I saw your face I re- solv'd to ho- nour and re- known ye;
  If now I be dis- dain'd, I wish my heart had ne- ver known ye.
  What I that loved, and you that lik'd,
  Shall we be- gin to wran- gle?
  No, no, no, no, no, my heart is fast, And can- not dis- en- tan- gle.
}

bassWordsTwo = \lyricmode {
  \set stanza = "2."
  The sun, whose beams most glor- ious __ _ are,
  Re- ject- ed no be- hold- er;
  And your sweet beau- ty past com- pare,
  Makes my poor eyes the bold- er.
  Where beau- ty moves, and wit de- lights,
  And signs of kind- ness blind me,
  There, O there, wher- "e're," wher- "e'er" I go,
  I leave my heart be- hind me.
}

verseThree = \lyricmode {
  \set stanza = "3."
}

\score {
  \new ChoirStaff <<
    \new Staff <<
      \new Voice = "soprano" \soprano
      \new Lyrics \lyricsto "soprano" \sopranoWordsOne
      \new Lyrics \lyricsto "soprano" \sopranoWordsTwo
    >>
    \new Staff <<
      \new Voice = "alto" \alto
      \new Lyrics \lyricsto "alto" \altoWordsOne
      \new Lyrics \lyricsto "alto" \altoWordsTwo
    >>
    \new Staff <<
      \clef "treble_8"
      \new Voice = "tenor" \tenor
      \new Lyrics \lyricsto "tenor" \tenorWordsOne
      \new Lyrics \lyricsto "tenor" \tenorWordsTwo
    >>
    \new Staff <<
      \clef bass
      \new Voice = "bass" \bass
      \new Lyrics \lyricsto "bass" \bassWordsOne
      \new Lyrics \lyricsto "bass" \bassWordsTwo
    >>
  >>
  \layout { }
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 100 4)
    }
  }
}
