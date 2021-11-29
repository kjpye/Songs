\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "O Thou that hearest Prayer!"
  subtitle    = "Sankey No. 313"
  subsubtitle = "Sankey 880 No. 717"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Canon havergal."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "J. Burton."
  meter       = \markup\smallCaps "6.6.6.6.8.8."
  piece       = \markup\smallCaps "St. John."

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key d \major
  \time 4/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s4 s1*3 s2.
  \mark \markup { \box "B" } s4 s1*4
  \mark \markup { \box "C" }    s1*4 s2.
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  d'4
  fis4 4 a a
  d2. 4
  cis4 b a gis
  a2. \bar "|" \break 4
  b4 cis d b % B
  a2. 4
  g4 fis e e
  d2. 4
  d4 e fis d
  fis4 g a a
  b4 cis d d
  e2 cis
  d2.
}

alto = \relative {
  \autoBeamOff
  \once\partCombineApart d'4
  d4 4 e e
  fis2. 4
  e4 fis e e
  e2. fis4
  g4 4 a g % B
  fis2. d4
  d4 4 4 cis
  \once\partCombineApart d2. \once\partCombineApart 4
  \once\partCombineApart d4 cis d \once\partCombineApart d % C 
  d4 4 e fis
  g4 4 a fis
  g2 e
  fis2.
}

tenor = \relative {
  \autoBeamOff
  fis4
  a4 4 4 e'
  d2. 4
  e4 d cis b
  cis2. d4
  d4 e d d % B
  d2. a4
  b4 a a g
  fis2. 4
  fis4 a a a % C
  a4 b cis d
  d4 e d d
  b2 a
  a2.
}

bass = \relative {
  \autoBeamOff
  d4
  d4 4 cis cis
  b2. 4 cis4 d e e
  a,2. d4
  g4 e dis g % B
  d2. fis4
  b,4 d a a
  d2. 4
  b4 a d fis % C
  d4 b a d
  g4 e fis b
  g2 \once\partCombineApart a
  d,2.
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
}

verses = 3

wordsOne = \lyricmode {
  \set stanza = "1."
  O Thou that hear -- est prayer!
  At -- tend our hum -- ble cry;
  And let Thy ser -- vants share
  Thy bless -- ing from on high;
  We plead the prom -- ise of Thy Word;
  Grant us, Thy Ho -- ly Spi -- rit, Lord!
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  If earth -- ly pa -- rents hear
  Their child -- ren when they cry;
  If they, with love sin -- cere,
  Their chil -- fren's wants sup -- ply:
  Much more wilt Thou Thy love dis -- play,
  And an -- swer when Thy chil -- dren pray.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Our heaven -- ly Fa -- ther Thou;
  We— chil -- dren of Thy grace;
  Oh, let Thy Spi -- rit now
  De -- scend and fill the place;
  That all may feel the heaven -- ly flame,
  And all u -- nite to praise Thy name.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "O " "Thou " "that " hear "est " "prayer! "
  "\nAt" "tend " "our " hum "ble " "cry; "
  "\nAnd " "let " "Thy " ser "vants " "share "
  "\nThy " bless "ing " "from " "on " "high; "
  "\nWe " "plead " "the " prom "ise " "of " "Thy " "Word; "
  "\nGrant " "us, " "Thy " Ho "ly " Spi "rit, " "Lord! "

  \set stanza = "2."
  "\nIf " earth "ly " pa "rents " "hear "
  "\nTheir " child "ren " "when " "they " "cry; "
  "\nIf " "they, " "with " "love " sin "cere, "
  "\nTheir " chil "fren's " "wants " sup "ply: "
  "\nMuch " "more " "wilt " "Thou " "Thy " "love " dis "play, "
  "\nAnd " an "swer " "when " "Thy " chil "dren " "pray. "

  \set stanza = "3."
  "\nOur " heaven "ly " Fa "ther " "Thou; "
  "\nWe— " chil "dren " "of " "Thy " "grace; "
  "\nOh, " "let " "Thy " Spi "rit " "now "
  "\nDe" "scend " "and " "fill " "the " "place; "
  "\nThat " "all " "may " "feel " "the " heaven "ly " "flame, "
  "\nAnd " "all " u "nite " "to " "praise " "Thy " "name. "
}

\book {
  \bookOutputSuffix "midi"
  \score {
%    \articulate
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano
          <<
            \new Voice { \repeat unfold \verses \TempoTrack     }
            \new Voice { \global \repeat unfold \verses \soprano \bar "|." }
            \addlyrics \wordsMidi
          >>
                                % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global \repeat unfold \verses { \alto \nl } \bar "|." }
          >>
                                % Tenor staff
          \new Staff = tenor
          <<
            \clef "treble_8"
            \new Voice { \global \repeat unfold \verses \tenor }
          >>
                                % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Voice { \global \repeat unfold \verses \bass }
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
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \new Voice \RehearsalTrack
            \new Voice \TempoTrack
            \new NullVoice = "aligner" \soprano
            \new Voice = "women" \partCombine { \global \soprano \bar "|." } { \global \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne \chorus }
            \new Lyrics \lyricsto "aligner"   \wordsTwo
            \new Lyrics \lyricsto "aligner"   \wordsThree
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \tenor } { \global \bass }
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
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \new Voice { \repeat unfold \verses \RehearsalTrack }
            \new Voice { \repeat unfold \verses \TempoTrack }
            \new NullVoice = "aligner" { \repeat unfold \verses \soprano }
            \new Voice = "women" \partCombine { \global \repeat unfold \verses \soprano \bar "|." }
                                               { \global \repeat unfold \verses { \alto \nl } \bar "|." }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \repeat unfold \verses \tenor }
                                            { \global \repeat unfold \verses \bass }
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
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \new Voice { \repeat unfold \verses \RehearsalTrack }
            \new Voice { \repeat unfold \verses \TempoTrack }
            \new NullVoice = "aligner" { \repeat unfold \verses \soprano }
            \new Voice = "women" \partCombine { \global \repeat unfold \verses \soprano \bar "|." }
                                               { \global \repeat unfold \verses { \alto \nl } \bar "|." }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \repeat unfold \verses \tenor }
                                            { \global \repeat unfold \verses \bass }
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
