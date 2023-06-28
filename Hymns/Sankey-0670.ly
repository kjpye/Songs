\version "2.25.0"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Onward, Soldiers!"
  subtitle    = "Sankey No. 670"
  subsubtitle = "C. C. No. 27"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Ira D. Sankey."
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
  \key g \major
  \time 4/4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s1*3
  \textMark \markup { \box \bold "B" } s1*3
  \textMark \markup { \box \bold "C" } s1*3
  \textMark \markup { \box \bold "D" } s1*3
  \textMark \markup { \box \bold "E" } s1*4
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  b'4 4 4 4 | 4 c8. b16 a2 | 4 4 4 4 |
  a4 b8. a16 g2 | e4 e g g | d g8. b16 d2 |
  d4 d fis, fis | g2. r4 |
  \section \sectionLabel \markup\smallCaps Chorus.
  d'4 b d b |
  e4 8. d16 c2 | 4 a c a | d4 8. c16 b2 |
  d,4 g b d | 4 c8. a16 e2 | fis4 4 g a | g2. r4 |
}

alto = \relative {
  \autoBeamOff
  d'4 4 4 4 | 4 8. 16 2 | c4 4 4 4 |
  c4 d8. c16 b2 | c4 4 e c | b d8. 16 g2 |
  fis4 4 d d | 2. r4 \section | g4 d g g |
  e4 gis8. e16 2 | d4 4 4 4 | 4 fis8. d16 2 |
  b4 d d f | e4 8. 16 c2 | 4 4 4 4 | b2. r4 |
}

tenor = \relative {
  \autoBeamOff
  g4 4 4 4 | 4 a8. g16 fis2 | 4 4 4 4 |
  fis4 8. 16 g2 | 4 4 4 4 | 4 b8. g16 b2 |
  a4 4 4 c | b2. r4 \section | 4 g b d |
  c4 b8. 16 a2 | 4 fis a fis | g4 a8. 16 g2 |
  g4 b g g | g4 8. a16 c2 | a4 4 e fis | g2. r4 |
}

bass = \relative {
  \autoBeamOff
  g4 4 4 4 | 4 fis8. g16 d2 | 4 4 4 4 |
  d4 8. 16 g,2 | c4 4 4 e | g4 8. 16 2 |
  d4 4 4 4 | g,2. r4 \section | g'4 4 4 4 |
  c,4 e8. gis16 a2 | d,4 4 4 4 | b d8. fis16 g2 |
  g4 4 4 b, | c4 8. 16 2 | d4 4 4 4 | g,2. r4 |
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  "\"For" -- ward, for -- "ward!\"" thus saith the Lord;
  Fear not, faint not, trust in His word.
  He will guard us, He will de -- fend,
  Till the strife shall end.
}

chorusMen = \lyricmode {
}

verses = 3

wordsOne = \lyricmode {
  \set stanza = "1."
  On -- ward, sol -- diers! on -- ward to -- day;
  Christ our Lead -- er calls us a -- way;
  Quick -- ly hast -- en forth to the field,
  March with sword and shield.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  On -- ward, sol -- diers! make no de -- lay;
  Hear the or -- ders, hear and o -- bey;
  On to vic -- t'ry, on let us go,
  Bra -- ving ev -- 'ry foe.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  On -- ward, sol -- diers! on for the right,
  Let our ban -- ners wave in the light;
  Soon the vic -- tor's song we will sing,
  "\"Praise" to God our "King.\""
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "On" "ward, " sol "diers! " on "ward " to "day; "
  "\nChrist " "our " Lead "er " "calls " "us " a "way; "
  "\nQuick" "ly " hast "en " "forth " "to " "the " "field, "
  "\nMarch " "with " "sword " "and " "shield. "
  "\n\"For" "ward, " for "ward!\" " "thus " "saith " "the " "Lord; "
  "\nFear " "not, " "faint " "not, " "trust " "in " "His " "word. "
  "\nHe " "will " "guard " "us, " "He " "will " de "fend, "
  "\nTill " "the " "strife " "shall " "end.\n"

  \set stanza = "2."
  "\nOn" "ward, " sol "diers! " "make " "no " de "lay; "
  "\nHear " "the " or "ders, " "hear " "and " o "bey; "
  "\nOn " "to " vic "t'ry, " "on " "let " "us " "go, "
  "\nBra" "ving " ev "'ry " "foe. "
  "\n\"For" "ward, " for "ward!\" " "thus " "saith " "the " "Lord; "
  "\nFear " "not, " "faint " "not, " "trust " "in " "His " "word. "
  "\nHe " "will " "guard " "us, " "He " "will " de "fend, "
  "\nTill " "the " "strife " "shall " "end.\n"

  \set stanza = "3."
  "\nOn" "ward, " sol "diers! " "on " "for " "the " "right, "
  "\nLet " "our " ban "ners " "wave " "in " "the " "light; "
  "\nSoon " "the " vic "tor's " "song " "we " "will " "sing, "
  "\n\"Praise " "to " "God " "our " "King.\" "
  "\n\"For" "ward, " for "ward!\" " "thus " "saith " "the " "Lord; "
  "\nFear " "not, " "faint " "not, " "trust " "in " "His " "word. "
  "\nHe " "will " "guard " "us, " "He " "will " de "fend, "
  "\nTill " "the " "strife " "shall " "end. "
}

wordsMidiMen = \lyricmode {
}

\book {
  \bookOutputSuffix "midi"
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
            \new Lyrics \lyricsto "aligner"   \wordsThree
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
  \bookOutputSuffix "single"
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
      #(layout-set-staff-size 20)
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}
