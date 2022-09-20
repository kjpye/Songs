\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Hasten!"
  subtitle    = "Sankey No. 457"
  subsubtitle = "Sankey 880 No. 232"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "J. Pleyel."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "T. Scott."
  meter       = \markup\smallCaps "7s."
  piece       = \markup\smallCaps "Pleyel."

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key g \major
  \time 4/4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s1*4
  \mark \markup { \box "B" } s1*4
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  b'4 d a4. b8 | c4 a b2 | 4 d a4. b8 | c4 a g2 |
  a4 b g4. a8 | fis4 e d2 | b'4 d a4. b8 | c4 a g2 |
}

alto = \relative {
  \autoBeamOff
  g'4 4 fis4. g8 | a4 fis g2 | 4 4 fis4. g8 | a4 fis g2 |
  fis4 4 g4. e8 | d4 cis d2 | 4 4 fis4. g8 | a4 fis g2 |
}

tenor = \relative {
  \autoBeamOff
  d'4 4 4. 8 | e4 d4 2 | d4 4 4. 8 | e4 d b2 |
  d4 dis e4. a,8 | a4 8[g] fis2 | d'4 4 4. 8 | e4 d8[c] b2 |
}

bass = \relative {
  \autoBeamOff
  g,4 b d4. b8 | a4 d g,2 | g4 b d4. b8 | a4 d g,2 |
  d'4 b e4. cis8 | d4 a d2 | g,4 b d4. b8 | a4 d g,2 |
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
}

chorusMen = \lyricmode {
}

verses = 4

wordsOne = \lyricmode {
  \set stanza = "1."
  Hast -- en, sin -- ner, to be wise!
  Stay not for the mor -- row's sun;
  Wis -- dom, if you still de -- spise,
  Hard -- er is it to be won.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Hast -- en, mer -- cy to im -- plore!
  Stay not for the mor -- row's sun;
  Lest thy sea -- son should be o'er,
  Ere this ev -- 'ning's stage be run.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Hast -- en, sin -- ner, to re -- turn!
  Stay not for the mor -- row's sun,
  Lest thy lamp should fail to burn
  Ere sal -- va -- tion's work is done.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Hast -- en, sin -- ner, to be blest!
  Stay not gor the mor -- row's sun,
  lest per -- di -- tion thee ar -- rest,
  Ere the mor -- row is be -- gun.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Hast" "en, " sin "ner, " "to " "be " "wise! "
  "\nStay " "not " "for " "the " mor "row's " "sun; "
  "\nWis" "dom, " "if " "you " "still " de "spise, "
  "\nHard" "er " "is " "it " "to " "be " "won.\n"

  \set stanza = "2."
  "\nHast" "en, " mer "cy " "to " im "plore! "
  "\nStay " "not " "for " "the " mor "row's " "sun; "
  "\nLest " "thy " sea "son " "should " "be " "o'er, "
  "\nEre " "this " ev "'ning's " "stage " "be " "run.\n"

  \set stanza = "3."
  "\nHast" "en, " sin "ner, " "to " re "turn! "
  "\nStay " "not " "for " "the " mor "row's " "sun, "
  "\nLest " "thy " "lamp " "should " "fail " "to " "burn "
  "\nEre " sal va "tion's " "work " "is " "done.\n"

  \set stanza = "4."
  "\nHast" "en, " sin "ner, " "to " "be " "blest! "
  "\nStay " "not " "gor " "the " mor "row's " "sun, "
  "\nlest " per di "tion " "thee " ar "rest, "
  "\nEre " "the " mor "row " "is " be "gun. "
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
            \new Voice \partCombine { \global \soprano \bar "|." } { \global \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne \chorus }
            \new Lyrics \lyricsto "aligner"   \wordsTwo
            \new Lyrics \lyricsto "aligner"   \wordsThree
            \new Lyrics \lyricsto "aligner"   \wordsFour
          >>
                                  % Joint tenor/bass staff
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice \partCombine { \global \tenor } { \global \bass }
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
            \new Voice \partCombine { \global \repeat unfold \verses \soprano \bar "|." }
                                    { \global \repeat unfold \verses { \alto \nl } \bar "|." }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                              \wordsFour  \chorus
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice \partCombine { \global \repeat unfold \verses \tenor }
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
