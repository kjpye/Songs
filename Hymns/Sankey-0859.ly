\version "2.25.16"

\include "../kjp.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Nearer the Cross!"
  subtitle    = "Sankey No. 859"
  subsubtitle = "Sankey 880 No. 309"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Mrs. J. F. Knapp."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Fanny J. Crosby."
%  meter       = \markup\smallCaps "meter"
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key d \major
  \time 6/8
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" }     s2.*4 s4.
  \textMark \markup { \box \bold "B" } s4. s2.*4
  \textMark \markup { \box \bold "C" }     s2.*4
  \textMark \markup { \box \bold "D" }     s2.*5
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

soprano = \relative {
  fis'8. e16 d8 e4 fis8 | a4 8 4. | d4 a8 4 fis8 | 4. e | fis8. e16 d8 \bar "|" \break
  e4 fis8 | a4 8 4. | d4 a8 4 fis8 | e4. d | a'8. 16 b8 cis4 b8 |
  a4 d8 4. | a8. 16 b8 cis4 b8 | a4 d8 4. | 8. cis16 b8 d4 b8 |
  a4 fis8 d4. | b'4 a8 4 g8 | 4. fis | d'4 a8 4 fis8 | e4. d |
}

alto = \relative {
  d'8. cis16 d8 cis4 d8 | fis4 8 4. | 4 8 4 d8 | 4. cis | d8. cis16 d8
  cis4 d8 | fis4 8 4. | 4 8 4 d8 | cis4. d | g8. 16 8 4 8 |
  g4 fis8 4. | g8. 16 8 4 8 | 4 fis8 4. | 8. a16 g8 4 8 |
  fis4 d8 4. | 4 8 4 cis8 | 4. d | fis4 d8 4 8 | cis4. d |
}

tenor = \relative {
  a8. g16 fis8 a4 8 | 4 d8 4. | a4 8 d4 a8 | 4. 4. | a8. g16 fis8
  a4 8 | 4 d8 4. | a4 8 d4 a8 | g4. fis | cis'8. 16 d8 e4 d8 |
  cis4 a8 4. | cis8. 16 d8 e4 d8 | cis4 a8 4. | d8. 16 8 b4 d8 |
  d4 a8 fis4. | g4 a8 4 8 | 4. 4. | 4 d8 4 a8 | g4. fis |
}

bass = \relative {
  d8. 16 8 a4 d8 | 4 8 4. | 4 8 4 8 | a'4. a, | d8. 16 8
  a4 d8 | 4 8 4. | 4 8 4 8 | a4. d | a8. 16 8 a'4 8 |
  a4 d, 8 4. | a'8. 16 8 4 8 | 4 d,8 4. | 8. 16 8 4 8 |
  d4 8 4. | g4 fis8 4 e8 | a,4. d | 4 fis8 4 d8 | a4. d |
}

chorus = \lyricmode {
}

chorusMen = \lyricmode {
}

verses = 3

wordsOne = \lyricmode {
  \set stanza = "1."
  “Near -- er the cross!” my heart can say,
  I am com -- ing near -- er,
  near -- er the cross from day to day,
  I am com -- ing near -- er;
  Near -- er the cross where Je -- sus died,
  Near -- er the foun -- tain’s crim -- son tide,
  Near -- er my Sa -- viour’s wound -- ed side,
  I am com -- ing near -- er,
  I am com -- ing near -- er.

}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Near -- er the Chris -- tian’s mer -- cy seat,
  I am com -- ing near -- er,
  Feast -- ing my soul on man -- na sweet,
  I am com -- ing near -- er;
  Strong -- er in faith, more clear I see
  Je -- sus who gave Him -- self for me;
  Near -- er to Him I still would be:
  Still I’m com -- ing near -- er,
  Still I’m com -- ing near -- er.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Near -- er in prayer my hope as -- pires,
  I am com -- ing near -- er,
  Deep -- er the love my soul de -- sires,
  I am com -- ing near -- er;
  Near -- er the end of toil and care,
  Near -- er the joy I long to share,
  near -- er the crown I soon shall wear:
  I am com -- ing near -- er,
  I am com -- ing near -- er.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "“Near" "er " "the " "cross!” " "my " "heart " "can " "say, "
  "\nI " "am " com "ing " near "er, "
  "\nnear" "er " "the " "cross " "from " "day " "to " "day, "
  "\nI " "am " com "ing " near "er; "
  "\nNear" "er " "the " "cross " "where " Je "sus " "died, "
  "\nNear" "er " "the " foun "tain’s " crim "son " "tide, "
  "\nNear" "er " "my " Sa "viour’s " wound "ed " "side, "
  "\nI " "am " com "ing " near "er, "
  "\nI " "am " com "ing " near "er.\n"

  \set stanza = "2."
  "\nNear" "er " "the " Chris "tian’s " mer "cy " "seat, "
  "\nI " "am " com "ing " near "er, "
  "\nFeast" "ing " "my " "soul " "on " man "na " "sweet, "
  "\nI " "am " com "ing " near "er; "
  "\nStrong" "er " "in " "faith, " "more " "clear " "I " "see "
  "\nJe" "sus " "who " "gave " Him "self " "for " "me; "
  "\nNear" "er " "to " "Him " "I " "still " "would " "be: "
  "\nStill " "I’m " com "ing " near "er, "
  "\nStill " "I’m " com "ing " near "er.\n"

  \set stanza = "3."
  "\nNear" "er " "in " "prayer " "my " "hope " as "pires, "
  "\nI " "am " com "ing " near "er, "
  "\nDeep" "er " "the " "love " "my " "soul " de "sires, "
  "\nI " "am " com "ing " near "er; "
  "\nNear" "er " "the " "end " "of " "toil " "and " "care, "
  "\nNear" "er " "the " "joy " "I " "long " "to " "share, "
  "\nnear" "er " "the " "crown " "I " "soon " "shall " "wear: "
  "\nI " "am " com "ing " near "er, "
  "\nI " "am " com "ing " near "er. "
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
            \new Voice { \repeat-verses \verses \RehearsalTrack }
            \new Voice { \repeat-verses \verses \TempoTrack     }
            \new Voice { \global \repeat-verses \verses \soprano \bar "|." }
            \addlyrics \wordsMidi
          >>
                                % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global \repeat-verses \verses \alto \bar "|." }
          >>
                                % Tenor staff
          \new Staff = tenor
          <<
            \clef "treble_8"
            \new Voice { \global \repeat-verses \verses \tenor }
            \addlyrics \wordsMidiMen
          >>
                                % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Voice { \global \repeat-verses \verses \bass }
          >>
        >>
    \midi { \context { \Staff autoBeaming = ##f } }
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
            \new NullVoice = "aligner" \keepWithTag #'dash \soprano
            \new Voice \partCombine #'(2 . 88) { \global \keepWithTag #'dash \soprano \bar "|." } { \global \keepWithTag #'dash \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne \chorus }
            \new Lyrics \lyricsto "aligner"   \wordsTwo
            \new Lyrics \lyricsto "aligner"   \wordsThree
          >>
                                  % Joint tenor/bass staff
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice \partCombine #'(2 . 88) { \global \keepWithTag #'dash \tenor } { \global \keepWithTag #'dash \bass }
            \new NullVoice = alignerT { \keepWithTag #'dash \tenor }
          >>
          \new Lyrics \with {alignAboveContext = men} \lyricsto alignerT \chorusMen
        >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context { \Staff
                 \RemoveAllEmptyStaves
                 autoBeaming = ##f
      }
    }
  }
}

singlescore = {
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff = women \with { printPartCombineTexts = ##f }
          <<
            \new Voice { \repeat-verses \verses \RehearsalTrack }
            \new Voice { \repeat-verses \verses \TempoTrack }
            \new NullVoice = "aligner" { \repeat-verses \verses \soprano }
            \new Voice \partCombine #'(2 . 88) { \global \repeat-verses \verses \soprano \bar "|." }
                                    { \global \repeat-verses \verses { \alto \nl } \bar "|." }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice \partCombine #'(2 . 88) { \global \repeat-verses \verses { \tenor \nl } }
                                    { \global \repeat-verses \verses \bass }
            \new NullVoice = alignerT { \repeat-verses \verses \tenor }
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
      \context { \Staff
                 \RemoveAllEmptyStaves
                 autoBeaming = ##f
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
      \context { \Staff
                 \RemoveAllEmptyStaves
                 autoBeaming = ##f
      }
    }
  }
}
