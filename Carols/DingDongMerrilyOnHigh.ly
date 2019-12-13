\version "2.19.82"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Ding Dong！Merrily on High"
%  subtitle    = "subtitle"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "16th c. French tune"
  arranger    = "harmonized by Charles Wood"
%  opus        = "opus"

  poet        = "G. D. Woodward"
%  meter       = "meter"
%  piece       = "piece"

% centered at bottom
%  tagline     = "tagline" % default lilypond version
% tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

% \paper {
%   #(set-paper-size "a4")
%   line-width = 180\mm
%   left-margin = 20\mm
%   bottom-margin = 10\mm
%   top-margin = 10\mm
% }

global = {
  \key bes \major
  \time 2/2
  \tempo 4=120
}

soprano = \relative c'' {
  \global
  \repeat volta 2 {
    bes4 bes c8 bes a g
    f2. 4
    g4 bes bes a
    bes2 bes
  } \break
  \repeat volta 2 {
    f'4.(ees8 d ees f d
    ees4. d8 c d ees c
    d4. c8 bes c d bes
    c4. bes8 a bes c a
    bes4. a8 g a bes g
    a4.) g8 f4 f
    g4 bes bes a
    bes2 bes
  }
}

alto = \relative c' {
  \global
  \repeat volta 2 {
    f4 f g8 g ees ees
    c2. f4
    f4 ees c f
    f2 f
  } \break
  \repeat volta 2 {
    r4 f2(bes4
    bes8 a g f g f ees4)
    r4 f8(ees d4 g
    g8 f ees d ees d c4)
    r4 d8(c bes4 ees
    c8 d ees) d c4 f
    f4 ees c f
    f2 f
  }
}

tenor = \relative c' {
  \global
  \repeat volta 2 {
    d4 bes g8 g c bes
    e2. bes4
    bes4 bes c c
    d2 d
  } \break
  \repeat volta 2 {
    \oneVoice r4 \voiceOne c4(d bes
    c4 bes2 c4)
    \oneVoice r4 \voiceOne a4(bes g
    a4 g2 a4)
    \oneVoice r4 \voiceOne f4(g2
    c4) bes c d
    bes4 bes c c
    d2 d
  }
}

bass= \relative c {
  \global
  \repeat volta 2 {
    bes4 d ees8 ees c c
    f2. d4
    ees4 g f f
    bes,2 bes
  }
  \repeat volta 2 {
    s4 a'4( bes d,
    c4 d ees8 d c4)
    s4 f( g bes,
    a4 bes c8 bes a4)
    s4 d(e g
    f4) g a bes
    ees,4 g f f
    bes,2 bes
  }
}

wordsOneA = \lyricmode {
  \set stanza = "1."
  Ding dong! mer- ri- ly on high
  in heav'n the bells are ring- ing:
  Glo- __ ri- a, Ho- san- na in ex- cel- sis!
}

wordsOneB = \lyricmode {
  Ding dong! ve- ri- ly the sky
  is riv'n with an- gel sing- ing.
}

wordsTwoA = \lyricmode {
  \set stanza = "2."
  E'en so here be- low, be- low,
  let stee- ple bells be swung- en,
}

wordsTwoB = \lyricmode {
  and i- o, i- o, i- o,
  by priest and peo- ple sung- en.
}

wordsThreeA = \lyricmode {
  \set stanza = "3."
  Pray you, du- ti- ful- ly prime
  you mat- in chime, ye ring- ers;
}

wordsThreeB = \lyricmode {
  May you beau- ti- ful- ly rhyme
  your eve- time song, ye sing- ers.
}

\score {
  <<
    \new ChoirStaff <<
% Joint soprano/alto staff
      \new Staff \with { instrumentName = #"Soprano/Alto" shortInstrumentName = #"SA" } <<
        \new Voice = "soprano" { \voiceOne \soprano }
        \new Voice = "alto"    { \voiceTwo \alto    }
        \new Lyrics \lyricsto "soprano" \wordsOneA
        \new Lyrics \lyricsto "soprano" \wordsOneB
        \new Lyrics \lyricsto "soprano" \wordsTwoA
        \new Lyrics \lyricsto "soprano" \wordsTwoB
        \new Lyrics \lyricsto "soprano" \wordsThreeA
        \new Lyrics \lyricsto "soprano" \wordsThreeB
      >>
% Joint tenor/bass staff
      \new Staff \with { instrumentName = #"Tenor/Bass" shortInstrumentName = #"TB" } <<
        \new Voice = "tenor" { \clef bass \voiceOne \tenor }
        \new Voice = "bass"  { \clef bass \voiceTwo \bass  }
      >>
    >>
  >>
  \layout {
    indent = 1.5\cm
    \context {
      \Staff \RemoveAllEmptyStaves
    }
  }
  \midi {}
}
