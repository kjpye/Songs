\version "2.25.0"

\include "predefined-guitar-fretboards.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Daniel's Band"
  subtitle    = "Sankey No. 707"
  subsubtitle = "Sankey 880 No. 7"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "P. P. Bliss."
%  arranger    = "arranger"
%  opus        = "opus"

%  poet        = "poet"
%  meter       = "meter"
%  piece       = "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key bes \major
  \time 2/4
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
  \textMark \markup { \box "A" } s2*4
  \textMark \markup { \box "B" } s2*4
  \textMark \markup { \box "C" } s2*8
}

melody = \relative {
  d''8 8 c bes | f bes bes4 | c8. d16 c8 f, | d'4. r8 |
  ees8 8 8 8 | 8 d d d |c g c d | c4. r8 \section | \break
  R2*8 |
}

soprano = \relative {
  \autoBeamOff
  R2*8 \section |
  d''8. 16 c8 bes | f4 bes | c8. d16  c8 f, | d'4. r8 |
  ees8. d16 c8 bes | a8 g c[ees] | d8. ees16 d8 c | bes4. r8 |
}

alto = \relative {
  \autoBeamOff
  R2*8 \section |
  f'8. 16 ees8 d | 4 4 | f8. 16 8 8 | 4. r8 |
  g8. 16 8 8 | f ees8 8[g] | f8. 16 8 ees | d4. r8 |
}

tenor = \relative {
  \autoBeamOff
  R2*8 \section |
  bes8. 16 8 8 | 4 4 | a8. bes16 a8 8 | bes4. r8 |
  8. 16 8 8 | 8 8 4 | 8. c16 bes8 a | bes4. r8 |
}

bass = \relative {
  \autoBeamOff
  R2*8 \section |
  bes,8. 16 8 8 | 4 4 | f'8. 16 8 8 | bes,4. r8 |
  ees8. 16 8 8 | 8 8 4 | g8. 16 8 8 | bes,4. r8 |
}

chorus = \lyricmode {
  Dare to be a Dan -- iel!
  Dare to stand a -- lone!
  Dare to have a pur -- pose firm!
  Dare to make it known!
}

wordsOne = \lyricmode {
  \set stanza = "1."
  Stand -- ing by a pur -- pose true,
  heed -- ing God's com -- mand,
  Hon -- our them, the faith -- ful few!
  All hail, to Dan -- iel's Band!
}

wordsTwo = \lyricmode {
  \set stanza = "2."
  Ma -- ny migh -- ty men are lost,
  Dar -- ing not to stand,
  Who for God had been a host,
  Ny join -- ing Dan -- iel's Band!
}

wordsThree = \lyricmode {
  \set stanza = "3."
  Ma -- ny gi -- ants, great and tall,
  Stalk -- ing thro' the land,
  Head -- long to the earth would fail,
  If met by Dan -- iel's Band!
}

wordsFour = \lyricmode {
  \set stanza = "4."
  Hold the gos -- pel ban -- ner high!
  On to vic -- t'ry grand!
  Sa -- tan and his host de -- fy,
  And shout for Dan -- iel's Band!
}

midiWords = \lyricmode {
  \set stanza = "1."
  "Stand" "ing " "by " "a " pur "pose " "true, "
  "\nheed" "ing " "God's " com "mand, "
  "\nHon" "our " "them, " "the " faith "ful " "few! "
  "\nAll " "hail, " "to " Dan "iel's " "Band! "

  \set stanza = "2."
  "\nMa" "ny " migh "ty " "men " "are " "lost, "
  "\nDar" "ing " "not " "to " "stand, "
  "\nWho " "for " "God " "had " "been " "a " "host, "
  "\nNy " join "ing " Dan "iel's " "Band! "

  \set stanza = "3."
  "\nMa" "ny " gi "ants, " "great " "and " "tall, "
  "\nStalk" "ing " "thro' " "the " "land, "
  "\nHead" "long " "to " "the " "earth " "would " "fail, "
  "\nIf " "met " "by " Dan "iel's " "Band! "

  \set stanza = "4."
  "\nHold " "the " gos "pel " ban "ner " "high! "
  "\nOn " "to " vic "t'ry " "grand! "
  "\nSa" "tan " "and " "his " "host " de "fy, "
  "\nAnd " "shout " "for " Dan "iel's " "Band! "
}

midiChorus = \lyricmode {
  "\nDare " "to " "be " "a " Dan "iel! "
  "\nDare " "to " "stand " a "lone! "
  "\nDare " "to " "have " "a " pur "pose " "firm! "
  "\nDare " "to " "make " "it " "known!\n"

  "\nDare " "to " "be " "a " Dan "iel! "
  "\nDare " "to " "stand " a "lone! "
  "\nDare " "to " "have " "a " pur "pose " "firm! "
  "\nDare " "to " "make " "it " "known!\n"

  "\nDare " "to " "be " "a " Dan "iel! "
  "\nDare " "to " "stand " a "lone! "
  "\nDare " "to " "have " "a " pur "pose " "firm! "
  "\nDare " "to " "make " "it " "known!\n"

  "\nDare " "to " "be " "a " Dan "iel! "
  "\nDare " "to " "stand " a "lone! "
  "\nDare " "to " "have " "a " pur "pose " "firm! "
  "\nDare " "to " "make " "it " "known! "
}

pianoRH = \relative {
  r8 <d' f>  <bes d f> q | r q q q | r <a c ees f> q q | r <bes d f> q q |
  r8 <c ees g> q q | r <bes d f> q q | r <g c e> r <b c e> | r <c ees f> q q \section |
  R2*8 |
}

pianoLH = \relative {
  bes,4 r | bes r | f' r | bes, r |
  ees4 r | bes r | c8 r c r | f4 r \section |
  R2*8 |
}

#(set-global-staff-size 20)

\book {
  #(define output-suffix "repeat")
  \score {
    <<
      <<
        \new ChoirStaff
        <<
          \new Staff \with {
            \consists "Volta_engraver"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \RehearsalTrack
            \new Voice {\global \melody}
            \addlyrics \wordsOne
            \addlyrics \wordsTwo
            \addlyrics \wordsThree
            \addlyrics \wordsFour
          >>
          \new Staff \with {
            \consists "Volta_engraver"
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern
          }
          <<
            \partCombine #'(2 . 88) {\global \soprano \bar "|."} {\global \alto}
            \new NullVoice \soprano
            \addlyrics \chorus
          >>
          \new Staff \with {
            \consists "Volta_engraver"
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern
          }
          <<
            \clef bass
            \partCombine #'(2 . 88) {\global \tenor} {\global \bass}
          >>
        >>
        \new PianoStaff
        <<
          \new Staff \with {
            \accidentalStyle Score.modern
          }
          <<
            \new Voice {\global \pianoRH}
          >>
          \new Staff \with {
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Voice {\global \pianoLH}
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \context {
        \Score
        \remove "Volta_engraver"
        }
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}

#(set-global-staff-size 20)

\book {
  #(define output-suffix "single")
  \score {
    <<
      <<
        \new ChoirStaff
        <<
          \new Staff = melody \with {
            \accidentalStyle Score.modern
          }
          <<
            \new Voice {\repeat unfold 4 \RehearsalTrack}
            \new Voice {\global \repeat unfold 4 \melody}
            \addlyrics \with {alignBelowContext = melody} {
              \wordsOne
              \wordsTwo
              \wordsThree
              \wordsFour
            }
          >>
          \new Staff \with {
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \partCombine {\global \repeat unfold 4 \soprano}
                                    {\global \repeat unfold 3 {\alto \section \break} \alto \bar "|."}
            \new NullVoice = aligner {\hide NoteHead \repeat unfold 4 \soprano}
            \addlyrics { \repeat unfold 4 \chorus }
          >>
          \new Staff \with {
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern
          }
          <<
            \clef bass
            \new Voice \partCombine {\repeat unfold 3 {\tenor \section} \tenor}
                                    {\repeat unfold 4 \bass}
          >>
        >>
        \new PianoStaff
        <<
          \new Staff \with {
            \accidentalStyle Score.modern
          }
          <<
            \new Voice {\global \repeat unfold 4 \pianoRH}
          >>
          \new Staff \with {
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Voice {\global \repeat unfold 4 \pianoLH}
          >>
        >>
      >>
    >>
    \layout {
      #(layout-set-staff-size 20)
      indent = 1.5\cm
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}

#(set-global-staff-size 20)

\book {
  #(define output-suffix "singlepage")
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
    <<
      <<
        \new ChoirStaff
        <<
          \new Staff = melody \with {
            \accidentalStyle Score.modern
          }
          <<
            \new Voice {\repeat unfold 4 \RehearsalTrack}
            \new Voice {\global \repeat unfold 4 \melody}
            \addlyrics \with {alignBelowContext = melody} {
              \wordsOne
              \wordsTwo
              \wordsThree
              \wordsFour
            }
          >>
          \new Staff \with {
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \partCombine {\global \repeat unfold 4 \soprano}
                                    {\global \repeat unfold 3 {\alto \section \break} \alto \bar "|."}
            \new NullVoice = aligner {\hide NoteHead \repeat unfold 4 \soprano}
            \addlyrics { \repeat unfold 4 \chorus }
          >>
          \new Staff \with {
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern
          }
          <<
            \clef bass
            \new Voice \partCombine {\repeat unfold 3 {\tenor \section} \tenor}
                                    {\repeat unfold 4 \bass}
          >>
        >>
        \new PianoStaff
        <<
          \new Staff \with {
            \accidentalStyle Score.modern
          }
          <<
            \new Voice {\global \repeat unfold 4 \pianoRH}
          >>
          \new Staff \with {
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Voice {\global \repeat unfold 4 \pianoLH}
          >>
        >>
      >>
    >>
    \layout {
      #(layout-set-staff-size 20)
      indent = 1.5\cm
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}

\book {
  #(define output-suffix "midi")
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff
        <<
          \new Dynamics \TempoTrack
          \new Staff = soprano \with {
            \accidentalStyle Score.modern
          }
          <<
            \new Voice {\global \repeat unfold 4 \melody}
            \addlyrics { \midiWords }
            \new Voice {\global \repeat unfold 4 \soprano}
            \addlyrics { \midiChorus }
          >>
          \new Staff = alto \with {
            \accidentalStyle Score.modern
          }
          <<
            \new Voice {\global \repeat unfold 4 \melody}
            \new Voice {\global \repeat unfold 4 \alto}
          >>
          \new Staff = tenor \with {
            \accidentalStyle Score.modern
          }
          <<
            \new Voice {\global \repeat unfold 4 \melody}
            \new Voice {\global \repeat unfold 4 \tenor}
          >>
          \new Staff = bass \with {
            \accidentalStyle Score.modern
          }
          <<
            \new Voice {\global \repeat unfold 4 \melody}
            \new Voice {\global \repeat unfold 4 \bass}
          >>
        >>
        \new PianoStaff
        <<
          \new Staff \with {
            \accidentalStyle Score.modern
          }
          <<
            \new Voice {\global \repeat unfold 4 \pianoRH}
            \new Voice {\global \repeat unfold 4 \pianoLH}
          >>
        >>
      >>
    >>
    \midi {}
  }
}
