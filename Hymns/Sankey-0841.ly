\version "2.25.16"

\include "../kjp.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Hallelujah! ’tis Done."
  subtitle    = "Sankey No. 841"
  subsubtitle = "Sankey 880 No. 92"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "P. P. Bliss."
%  arranger    = "arranger"
%  opus        = "opus"

%  poet        = \markup\smallCaps "poet"
%  meter       = \markup\smallCaps "meter"
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key g \major
  \time 3/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s4 s2.*4
  \textMark \markup { \box \bold "B" } s2.*5
  \textMark \markup { \box \bold "C" } s2.*5
  \textMark \markup { \box \bold "D" } s2.*4
  \textMark \markup { \box \bold "E" } s2.*5 s2
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

soprano = \relative {
  \autoBeamOff
  d'8. 16 | g4 4 4 | 4 a b | b a g | a2 d,8. 16 |
  a'4 4 4 | a b c | c b a | b2
  \section \sectionLabel \markup\smallCaps Chorus.
  d8. 16 | 4 4 4 |
  e4(d) b8. 16 | 4 4 4 | c(b) a8. 16 | g4 4 4 | a g e |
  d4 g a | b2 d8. 16 | 4 4 4 | e(d) b8. 16 |
  b4 4 4 | c(b) a8. 16 | g4 4 4 | a g e | d g a | g2
}

alto = \relative {
  \autoBeamOff
  d'8. 16 | 4 4 4 | g g g | g g g | fis2 d8. 16 |
  d4 4 4 | 4 4 4 | 4 4 4 | 2 \section g8. 16 | 4 4 4 |
  g2 8. 16 | 4 4 4 | 2 dis8. 16 | g4 4 4 | e e c |
  b d fis | g2 8. 16 | 4 4 4 | 2 8. 16 |
  g4 4 4 | 2 fis8. 16 | g4 4 4 | e e c | b d d | 2
}

tenor = \relative {
  \autoBeamOff
  b8. 16 | 4 4 4 | b c d | d c b | d2 fis,8. 16 |
  fis4 4 4 | 4 g a | a g fis | g2 \section b8. 16 | 4 4 4 |
  c4(b) d8. 16 | 4 4 4 | e(d) c8. 16 | b4 4 4 | c g g |
  g4 b d | 2 b8. 16 | 4 4 4 | c(b) d8. 16 |
  d4 4 4 | e(d) c8. 16 | b4 4 4 | c g g | g b c | b2
}

bass = \relative {
  \autoBeamOff
  g8. 16 | 4 4 4 | 4 4 4 | 4 4 4 | d2 8. 16 |
  d4 4 4 | 4 4 4 | 4 4 4 | g2 \section 8. 16 | 4 4 4 |
  g2 8. 16 | 4 4 4 | 2 d8. 16 | e4 4 4 | c c c |
  d4 4 4 | g2 8. 16 | 4 4 4 | 2 8. 16 |
  g4 4 4 | 2 d8. 16 | e4 4 4 | c c c | d d d | g2
}

chorus = \lyricmode {
  Hal -- le -- lu -- jah! ’tis done—
  I be -- lieve on the Son;
  I am saved by the blood of the Cru -- ci -- fied One!
  Hal -- le -- lu -- jah! ’tis done—
  I be -- lieve on the Son;
  I am saved by the blood of the Cru -- ci -- fied One!
}

chorusMen = \lyricmode {
}

verses = 6

wordsOne = \lyricmode {
  \set stanza = "1."
  ’Tis the pro -- mise of God full sal -- va -- tion to give
  Un -- to him who on Je -- sus, His Son, will be -- lieve.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Though the path -- way be lone -- ly and dan -- ger -- ous too,
  Sure -- ly Je -- sus is a -- ble to car -- ry me through.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Ma -- ny loved ones have I in yon hea -- ven -- ly throng,
  They are safe now in glo -- ry, and this is their song.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Lit -- tle child -- ren I see stand -- ing close by their King,
  And He smiles, as their song of sal -- va -- tion they sing:
}
  
wordsFive = \lyricmode {
  \set stanza = "5."
  There are proph -- ets and kings in that throng I be -- hold,
  And they sing as they march through the streets of pure gold:
}
  
wordsSix = \lyricmode {
  \set stanza = "6."
  There’s a part in that chor -- us for you and for me,
  And the theme of our prai -- ses for ev -- er will be:
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "’Tis " "the " pro "mise " "of " "God " "full " sal va "tion " "to " "give "
  "\nUn" "to " "him " "who " "on " Je "sus, " "His " "Son, " "will " be "lieve. "
  "\nHal" le lu "jah! " "’tis " "done— "
  "\nI " be "lieve " "on " "the " "Son; "
  "\nI " "am " "saved " "by " "the " "blood " "of " "the " Cru ci "fied " "One! "
  "\nHal" le lu "jah! " "’tis " "done— "
  "\nI " be "lieve " "on " "the " "Son; "
  "\nI " "am " "saved " "by " "the " "blood " "of " "the " Cru ci "fied " "One!\n"

  \set stanza = "2."
  "\nThough " "the " path "way " "be " lone "ly " "and " dan ger "ous " "too, "
  "\nSure" "ly " Je "sus " "is " a "ble " "to " car "ry " "me " "through. "
  "\nHal" le lu "jah! " "’tis " "done— "
  "\nI " be "lieve " "on " "the " "Son; "
  "\nI " "am " "saved " "by " "the " "blood " "of " "the " Cru ci "fied " "One! "
  "\nHal" le lu "jah! " "’tis " "done— "
  "\nI " be "lieve " "on " "the " "Son; "
  "\nI " "am " "saved " "by " "the " "blood " "of " "the " Cru ci "fied " "One!\n"

  \set stanza = "3."
  "\nMa" "ny " "loved " "ones " "have " "I " "in " "yon " hea ven "ly " "throng, "
  "\nThey " "are " "safe " "now " "in " glo "ry, " "and " "this " "is " "their " "song. "
  "\nHal" le lu "jah! " "’tis " "done— "
  "\nI " be "lieve " "on " "the " "Son; "
  "\nI " "am " "saved " "by " "the " "blood " "of " "the " Cru ci "fied " "One! "
  "\nHal" le lu "jah! " "’tis " "done— "
  "\nI " be "lieve " "on " "the " "Son; "
  "\nI " "am " "saved " "by " "the " "blood " "of " "the " Cru ci "fied " "One!\n"

  \set stanza = "4."
  "\nLit" "tle " child "ren " "I " "see " stand "ing " "close " "by " "their " "King, "
  "\nAnd " "He " "smiles, " "as " "their " "song " "of " sal va "tion " "they " "sing: "
  "\nHal" le lu "jah! " "’tis " "done— "
  "\nI " be "lieve " "on " "the " "Son; "
  "\nI " "am " "saved " "by " "the " "blood " "of " "the " Cru ci "fied " "One! "
  "\nHal" le lu "jah! " "’tis " "done— "
  "\nI " be "lieve " "on " "the " "Son; "
  "\nI " "am " "saved " "by " "the " "blood " "of " "the " Cru ci "fied " "One!\n"

  \set stanza = "5."
  "\nThere " "are " proph "ets " "and " "kings " "in " "that " "throng " "I " be "hold, "
  "\nAnd " "they " "sing " "as " "they " "march " "through " "the " "streets " "of " "pure " "gold: "
  "\nHal" le lu "jah! " "’tis " "done— "
  "\nI " be "lieve " "on " "the " "Son; "
  "\nI " "am " "saved " "by " "the " "blood " "of " "the " Cru ci "fied " "One! "
  "\nHal" le lu "jah! " "’tis " "done— "
  "\nI " be "lieve " "on " "the " "Son; "
  "\nI " "am " "saved " "by " "the " "blood " "of " "the " Cru ci "fied " "One!\n"

  \set stanza = "6."
  "\nThere’s " "a " "part " "in " "that " chor "us " "for " "you " "and " "for " "me, "
  "\nAnd " "the " "theme " "of " "our " prai "ses " "for " ev "er " "will " "be: "
  "\nHal" le lu "jah! " "’tis " "done— "
  "\nI " be "lieve " "on " "the " "Son; "
  "\nI " "am " "saved " "by " "the " "blood " "of " "the " Cru ci "fied " "One! "
  "\nHal" le lu "jah! " "’tis " "done— "
  "\nI " be "lieve " "on " "the " "Son; "
  "\nI " "am " "saved " "by " "the " "blood " "of " "the " Cru ci "fied " "One! "
}

wordsMidiMen = \lyricmode {
}

\book {
  \paper {
    output-suffix = midi
  }
  \score {
%    \articulate
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano
          <<
            \new Voice { \repeat unfold \verses \RehearsalTrack }
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
            \addlyrics \wordsMidiMen
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

#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = repeat
  }
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
            \new Lyrics \lyricsto "aligner"   \wordsThree
            \new Lyrics \lyricsto "aligner"   \wordsFour
            \new Lyrics \lyricsto "aligner"   \wordsFive
            \new Lyrics \lyricsto "aligner"   \wordsSix
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
            \new Voice { \repeat unfold \verses \RehearsalTrack }
            \new Voice { \repeat unfold \verses \TempoTrack }
            \new NullVoice = "aligner" { \repeat unfold \verses \soprano }
            \new Voice \partCombine #'(2 . 88) { \global \repeat unfold \verses \soprano \bar "|." }
                                    { \global \repeat unfold \verses { \alto \nl } \bar "|." }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                              \wordsFour  \chorus
                                              \wordsFive  \chorus
                                              \wordsSix   \chorus
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice \partCombine #'(2 . 88) { \global \repeat unfold \verses \tenor }
                                    { \global \repeat unfold \verses \bass }
            \new NullVoice = alignerT { \repeat unfold \verses \tenor }
          >>
          \new Lyrics \with {alignAboveContext = men} \lyricsto alignerT { \repeat unfold \verses \chorusMen }
        >>
}

\book {
  \paper {
    output-suffix = single
  }
  \score {
    \singlescore
    \layout {
      #(layout-set-staff-size 20)
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}

\book {
  \paper {
    output-suffix = singlepage
  }
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
      #(layout-set-staff-size 20)
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}
