\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Welsh Carol"
  subtitle    = "(General: Whitsuntide)"
%  subsubtitle = "Sankey 880 No. Y"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup "Welsh (Dr. Caradog Roberts"
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup "Pr. K. E. Roberts"
%  meter       = \markup\smallCaps "meter"
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key c \major
  \time 6/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \repeat volta 2 {
    \textMark \markup { \box \bold "A" } s4 s1.*2
    \textMark \markup { \box \bold "B" }    s1.*3
    \textMark \markup { \box \bold "C" }    s1.*3
    \textMark \markup { \box \bold "D" }    s1.*3
    \textMark \markup { \box \bold "E" }    s1.*3
    \textMark \markup { \box \bold "F" }    s1.
    \alternative {
      {s1.}
      {s2. s2}
    }
  }
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \repeat volta 2 {
    \tempo 4=120
    s4 | s1 \tempo 4=60 s4 \tempo 4=120 s4 |
    s1 \tempo 4=60 s4 \tempo 4=120 s4 |
    s1. | s1. % B
    s1 \tempo 4=60 s4 \tempo 4=120 s4 |
    s1 \tempo 4=60 s4 \tempo 4=120 s4 | % C
    s1. |
    \tempo 4=90 s2. \tempo 4=120 s2 \tempo 4=60 s4 |
    \tempo 4=120 s1 \tempo 4=60 s4 \tempo 4=120 s4 | % D
    s1 \tempo 4=60 s4 \tempo 4=120 s4 |
    s1. |
    s1. | % E
    s1 \tempo 4=60 s4 \tempo 4=120 s4 |
    s1 \tempo 4=60 s4 \tempo 4=120 s4 |
    s1. % F
    \alternative {
      {\tempo 4=90 s2. \tempo 4=120 s2 \tempo 4=60 s4}
      {\tempo 4=120 s2. s2}
    }
  }
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  \repeat volta 2 {
    \partial 4
    e'4 | a a a gis a\fermata b | c c c b d\fermata b |
    c4 a a e e e | a2.~2 e4 | a a a gis a\fermata b |
    c4 c c b d\fermata b | c a a e e e | a2.\fermata b\fermata^\cresc
    c4^\f e e e d\fermata c | b c c c b\fermata b | a e' e e d c |
    b2.~2 4 | c d a gis a\fermata b | c c c b d\fermata b |
    c4 a a e e e |
    \alternative {
      { a2.\fermata b\fermata }
      { a2.~2                }
    }
  }
}

alto = \relative {
  \autoBeamOff
  \repeat volta 2 {
    e'4 | c d e e c\fermata e | e a g f a a |
    a4 e c b c d | c2.~2 e4 | e e e e e\fermata e |
    e4 a g f a\fermata a | a e c b c d | c2.\fermata g'\fermata\omit\cresc |
    g4\omit\f g g g g\fermata a | e e e e e\fermata gis | a a gis a b a |
    gis2.~2 4 | a gis e e e\fermata e | e a g f a\fermata a |
    a4 e c b c d |
    \alternative {
      { c2.\fermata g'\fermata }
      { c,2.~2 }
    }
  }
}

tenor = \relative {
  \autoBeamOff
  \repeat volta 2 {
    e4 | a a a b a\fermata gis | a e' e d f\fermata f |
    e4 c a gis a b | a2.~2 e4 | e' d c d c\fermata b |
    a4 e' e d f\fermata f | e c a gis a b | a2.\fermata d4(e\cresc f\fermata) |
    e4\omit\f c c c b\fermata a  gis a a a gis\fermata e' | e e d c f e |
    e2.~2 4  e d c b a\fermata gis | a e' e d f f |
    e4 c a gis a b |
    \alternative {
      { a2. d4(e f\fermata) }
      { a,2.~2 }
    }
  }
}

bass = \relative {
  \autoBeamOff
  \repeat volta 2 {
    e4 | a, b c e f\fermata e | a a, a d d\fermata d |
    e4 e e e e e | a,2.~2 e'4 | c' b a b a\fermata gis |
    a4 a a d, d\fermata d | e e e e e e | a,2.\fermata g'\fermata\omit\cresc
    c4\omit\f c, e g g\fermata a | e a, c e e\fermata d | c c' b a gis a |
    e2.~2 4 | a, b c d c\fermata e | a a, a d d\fermata d |
    e4 e e e e e |
    \alternative {
      { a,2.\fermata g'\fermata }
      { a,2.~2 }
    }
  }
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
}

chorusMen = \lyricmode {
}

verses = 2

wordsOne = \lyricmode {
  \set stanza = "1."
  A -- wake were they on -- ly,
  those shep -- herds so lone -- ly,
  On guard in that si -- lence pro -- found: __
  When co -- lour had fa -- ded,
  when night -- time had sha -- ded
  Their sen -- ses from sight and from sound,
  Lo, __ then broke a won -- der,
  then drif -- ted a  -- sun -- der
  The veils from the splen -- dour of God, __
  When light from the Ho -- ly
  came down from the low -- ly,
  And heav'n to the earth that they trod.
  Lo, __
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  May light now en -- fold us,
  O Lord, for be -- hold us
  Like shep -- herds, from tu -- mult with -- drawn, __
  Nor hear -- ing, nor see -- ing,
  all oth -- er care flee -- ing,
  We wait the in -- eff -- a -- ble dawn.
  O, __ Spi -- rit all- know -- ing,
  thou source o -- ver -- flow -- ing,
  O move in the dark -- ness a -- round, __
  That sight may be in us,
  true hear -- ing to win us
  Glad ti -- dings where Christ may be _ _ found. __
}
  
wordsSingle = \lyricmode {
  \set stanza = "1."
  A -- wake were they on -- ly,
  those shep -- herds so lone -- ly,
  On guard in that si -- lence pro -- found: __
  When co -- lour had fa -- ded,
  when night -- time had sha -- ded
  Their sen -- ses from sight and from sound,
  Lo, __ then broke a won -- der,
  then drif -- ted a  -- sun -- der
  The veils from the splen -- dour of God, __
  When light from the Ho -- ly
  came down from the low -- ly,
  And heav'n to the earth that they trod.
  Lo, __

  \set stanza = "2."
  May light now en -- fold us,
  O Lord, for be -- hold us
  Like shep -- herds, from tu -- mult with -- drawn, __
  Nor hear -- ing, nor see -- ing,
  all oth -- er care flee -- ing,
  We wait the in -- eff -- a -- ble dawn.
  O, __ Spi -- rit all- know -- ing,
  thou source o -- ver -- flow -- ing,
  O move in the dark -- ness a -- round, __
  That sight may be in us,
  true hear -- ing to win us
  Glad ti -- dings where Christ may be found. __
}

wordsMidi = \lyricmode {
  \set stanza = "1."
  "A" "wake " "were " "they " on "ly, "
  "\nthose " shep "herds " "so " lone "ly, "
  "\nOn " "guard " "in " "that " si "lence " pro "found: " 
  "\nWhen " co "lour " "had " fa "ded, "
  "\nwhen " night "time " "had " sha "ded "
  "\nTheir " sen "ses " "from " "sight " "and " "from " "sound, "
  "\nLo, "  "then " "broke " "a " won "der, "
  "\nthen " drif "ted " a sun "der "
  "\nThe " "veils " "from " "the " splen "dour " "of " "God, " 
  "\nWhen " "light " "from " "the " Ho "ly "
  "\ncame " "down " "from " "the " low "ly, "
  "\nAnd " "heav'n " "to " "the " "earth " "that " "they " "trod. "
  "\nLo, " 

  \set stanza = "2."
  "\nMay " "light " "now " e "fold " "us, "
  "\nO " "Lord, " "for " be "hold " "us "
  "\nLike " shep "herds, " "from " tu "mult " with "drawn, " 
  "\nNor " hear "ing, " "nor " see "ing, "
  "\nall " oth "er " "care " flee "ing, "
  "\nWe " "wait " "the " in eff a "ble " "dawn. "
  "\nO, "  Spi "rit " all know "ing, "
  "\nthou " "source " o ver flow "ing, "
  "\nO " "move " "in " "the " dark "ness " a "round, " 
  "\nThat " "sight " "may " "be " "in " "us, "
  "\ntrue " hear "ing " "to " "win " "us "
  "\nGlad " ti "dings " "where " "Christ " "may " "be " "found. " 
}

\book {
  \bookOutputSuffix "midi"
  \score {
%    \articulate
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano
          <<
            \new Voice { \unfoldRepeats \TempoTrack     }
            \new Voice { \global \unfoldRepeats \soprano \bar "|." }
            \addlyrics \wordsMidi
          >>
                                % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global \unfoldRepeats { \alto \nl } \bar "|." }
          >>
                                % Tenor staff
          \new Staff = tenor
          <<
            \clef "treble_8"
            \new Voice { \global \unfoldRepeats \tenor }
          >>
                                % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Voice { \global \unfoldRepeats \bass }
          >>
        >>
    \midi {}
  }
}

\book {
  \bookOutputSuffix "repeat"
  \score {
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff = women \with { printPartCombineTexts = ##f }
          <<
            \new Voice \RehearsalTrack
            \new Voice \TempoTrack
            \new NullVoice = "aligner" \soprano
            \new Voice \partCombine #'(2 . 88) { \global \soprano \bar "|." } { \global \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne \chorus }
            \new Lyrics \lyricsto "aligner"   \wordsTwo
          >>
                                  % Joint tenor/bass staff
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice \partCombine #'(2 . 88) { \global \tenor } { \global \bass }
            \new NullVoice = alignerT { \tenor }
          >>
          \new Lyrics \with {alignAboveContext = men} \lyricsto alignerT \chorusMen
        >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}

singlescore = {
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff = women \with { printPartCombineTexts = ##f }
          <<
            \new Voice { \unfoldRepeats \RehearsalTrack }
            \new Voice { \unfoldRepeats \TempoTrack }
            \new NullVoice = "aligner" { \unfoldRepeats \soprano }
            \new Voice \partCombine #'(2 . 88) { \global \unfoldRepeats \soprano \bar "|." }
                                    { \global \unfoldRepeats { \alto \nl } \bar "|." }
            \new Lyrics \lyricsto "aligner" \wordsSingle
          >>
                                  % Joint tenor/bass staff
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice \partCombine #'(2 . 88) { \global \unfoldRepeats \tenor }
                                    { \global \unfoldRepeats \bass }
            \new NullVoice = alignerT { \unfoldRepeats \tenor }
          >>
        >>
}

\book {
  \bookOutputSuffix "single"
  \score {
    \singlescore
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}

\book {
  \bookOutputSuffix "singlepage"
  \paper {
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #15
    system-separator-markup = \slashSeparator
  }
  \score {
    \singlescore
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}
