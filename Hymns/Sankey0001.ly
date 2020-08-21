\version "2.20.2"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Praise, my Soul, the King of Heaven!"
  subtitle    = "Sankey No. 1"
  subsubtitle = "Old Sankey 679"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Dr. Gauntlett"
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = "H. F. Lyte"
  meter       = "8.7.4"
  piece       = "Triumph"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key c \major
  \time 4/4
  \tempo 4=120
  \partial 2
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
% \mark \markup { \circle "1a" }
  \mark \markup { \box "a" } s4 s2.
}

soprano = \relative c' {
  \global
  \repeat volta 4 {
    c4 e
    g4. g8 g4 a
    g4 e g g
    c4 b a a
    g2 \bar "" \break e4 g
    c4. c8 c4 b
    d4 c c a
    g4 e' d4. d8
    c2 \bar "" \break e,4 g
    a4 fis g c
    c4 b c f
    f4 e d d
    c2
  }
}

dynamicsWomen = {
  \override DynamicTextSpanner.style = #'none
}

alto = \relative c' {
  \global
  \repeat volta 4 {
    c4 e
    g4. g8 g4 a
    g4 e e g
    fis4 g g fis
    g2 e4 g
    c4. c8 c4 b
    d4 c a f
    g4 g g4. f8
    e2 c4 d
    e4 d d g
    f4 f e f
    g4 g g4. f8
    e2
  }
}

tenor = \relative c {
  \global
  \repeat volta 4 {
    c4 e
    g4. g8 g4 a
    g4 e c' d
    c4 d d4. c8 b2 e,4 g
    c4. c8 c4 b
    d4 c c c
    c4 c c b
    c2 g4 b
    c4 a d c
    d4 d c c
    d4 c c b
    c2
  }
}

dynamicsMen = {
  \override DynamicTextSpanner.style = #'none
}

bass= \relative c {
  \global
  \repeat volta 4 {
    c4 e
    g4. g8 g4 a
    g4 e c' b
    a4 g d d
    g2 e4 g
    c4. c8 c4 b
    d4 c f, f
    e4 c g'4. g8
    c,2 c4 b
    a4 d b e
    d4 g a a
    b4 c g g
    c,2
  }
  \bar "|."
}

wordsOne = \lyricmode {
  Praise, my soul, the King of hea- ven;
  To His feet thy tri- bute bring;
  Ran- som'd, heal'd, re- stored, for- giv- en,
  Who like thee His praise shall sing?
  Praise Him! praise Him! Praise Him! praise Him!
  Praise the ev- er- last- ing King!
}

wordsTwo = \lyricmode {
  Praise Him for His grace and fa- vour
  To our fa- thers in dis- tress;
  Praise Him, still the same as ev- er,
  Slow to chide, and swift to bless:
  Praise Him! praise Him! Praise Him! praise Him!
  Glo- rious in His faith- ful- ness!
}

wordsThree = \lyricmode {
  Fath- er like He tends and spares us,
  Well our fee- ble frame He knows;
  In His hands he gent- ly bears us,
  Res- cues us from all our foes:
  Praise Him! praise Him! Praise Him! praise Him!
  Wide- ly as His merc- y flows,
}

wordsFour = \lyricmode {
  An- gels help us to a- dore Him,
  Ye be- hold Him face to face!
  Sun and moon, bow down be- fore Him!
  Dwel- lers all in time and space,
  Praise Him! praise Him! Praise Him! praise Him!
  Praise with us the God of grace!
}

wordsMidi = \lyricmode {
  "Praise, " "my " "soul, " "the " "King " "of " hea "ven; "
  "\nTo " "His " "feet " "thy " tri "bute " "bring; "
  "\nRan" "som'd, " "heal'd, " re "stored, " for giv "en, "
  "\nWho " "like " "thee " "His " "praise " "shall " "sing? "
  "\nPraise " "Him! " "praise " "Him! " "Praise " "Him! " "praise " "Him! "
  "\nPraise " "the " ev er last "ing " "King!\n"

  "\nPraise " "Him " "for " "His " "grace " "and " fa "vour "
  "\nTo " "our " fa "thers " "in " dis "tress; "
  "\nPraise " "Him, " "still " "the " "same " "as " ev "er, "
  "\nSlow " "to " "chide, " "and " "swift " "to " "bless: "
  "\nPraise " "Him! " "praise " "Him! " "Praise " "Him! " "praise " "Him! "
  "\nGlo" "rious " "in " "His " faith ful "ness!\n"

  "\nFath" "er " "like " "He " "tends " "and " "spares " "us, "
  "\nWell " "our " fee "ble " "frame " "He " "knows; "
  "\nIn " "His " "hands " "he " gent "ly " "bears " "us, "
  "\nRes" "cues " "us " "from " "all " "our " "foes: "
  "\nPraise " "Him! " "praise " "Him! " "Praise " "Him! " "praise " "Him! "
  "\nWide" "ly " "as " "His " merc "y " "flows,\n"

  "\nAn" "gels " "help " "us " "to " a "dore " "Him, "
  "\nYe " be "hold " "Him " "face " "to " "face! "
  "\nSun " "and " "moon, " "bow " "down " be "fore " "Him! "
  "\nDwel" "lers " "all " "in " "time " "and " "space, "
  "\nPraise " "Him! " "praise " "Him! " "Praise " "Him! " "praise " "Him! "
  "\nPraise " "with " "us " "the " "God " "of " "grace! "
}

pianoRH = \relative c' {
  \global
  c4
}

pianoRHone = \relative c' {
  \global
  \voiceOne
  c4
}

pianoRHtwo = \relative c' {
  \global
  \voiceTwo
  c4
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
}

pianoLH = \relative c' {
  \global
  \oneVoice
  c4
}

pianoLHone = \relative c' {
  \global
  \voiceOne
  c4
}

pianoLHtwo = \relative c' {
  \global
  \voiceTwo
  c4
}

\book {
  \bookOutputSuffix "repeat"
  \score {
    \context GrandStaff <<
      <<
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Dynamics \dynamicsWomen
          \new Staff <<
            \new Voice = "soprano" { \voiceOne \soprano }
            \new Voice = "alto"    { \voiceTwo \alto    }
            \new Lyrics \lyricsto "soprano" \wordsOne
            \new Lyrics \lyricsto "soprano" \wordsTwo
            \new Lyrics \lyricsto "soprano" \wordsThree
            \new Lyrics \lyricsto "soprano" \wordsFour
          >>
                                  % Joint tenor/bass staff
          \new Dynamics \dynamicsMen
          \new Staff <<
            \clef "bass"
            \new Voice = "tenor" { \voiceOne \tenor }
            \new Voice = "bass"  { \voiceTwo \bass }
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}

\book {
  \bookOutputSuffix "single"
  \score {
    \unfoldRepeats
%    \articulate
    <<
    \context GrandStaff <<
      <<
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Dynamics \dynamicsWomen
          \new Staff <<
            \new Voice = "soprano" { \voiceOne \soprano }
            \new Voice = "alto"    { \voiceTwo \alto    }
            \new Lyrics \lyricsto "soprano" \wordsMidi
          >>
                                  % Joint tenor/bass staff
          \new Dynamics \dynamicsMen
          \new Staff <<
            \clef "bass"
            \new Voice = "tenor" { \voiceOne \tenor }
            \new Voice = "bass"  { \voiceTwo \bass }
          >>
        >>
      >>
    >>
  >>
    \layout {
      indent = 1.5\cm
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}

\book {
  \bookOutputSuffix "midi"
  \score {
    \unfoldRepeats
    \articulate
    <<
    \context GrandStaff <<
      <<
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Dynamics \dynamicsWomen
          \new Staff <<
            \new Voice = "soprano" { \voiceOne \soprano }
            \new Voice = "alto"    { \voiceTwo \alto    }
            \new Lyrics \lyricsto "soprano" \wordsMidi
          >>
                                  % Joint tenor/bass staff
          \new Dynamics \dynamicsMen
          \new Staff <<
            \clef "bass"
            \new Voice = "tenor" { \voiceOne \tenor }
            \new Voice = "bass"  { \voiceTwo \bass }
          >>
        >>
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
}
