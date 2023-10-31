\version "2.25.0"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Peace! Perfect Peace!"
  subtitle    = "Sankey No. 726"
  subsubtitle = "Sankey 880 No. 730"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "G. T. Caldbeck."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Rt. Rev. E. H. Bickersteth, D.D."
  meter       = \markup\smallCaps "10.10."
  piece       = \markup\smallCaps "Pax Tecum."

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key c \major
  \time 4/2
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s1*7 s2
  \textMark \markup { \box \bold "B" } s2 s1*8
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 2=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  g'1 2 2 | 1. 2 | a2 2 2 g | 1. \bar "|" \break
  g2 | c1 d | e2 d c a | g1 2(f) | e\breve
}

alto = \relative {
  \autoBeamOff
  e'1 f2 2 | e1. 2 | f f f f | e1.
  e2 | f1 fis | g2 2 2 f | e1 d | c\breve
}

tenor = \relative {
  \autoBeamOff
  c'1 b4(c) d2 | c1. 2 | 2 d d d | c1.
  c2 | 1 1 | 2 b c c | 1 b | g\breve
}

bass = \relative {
  \autoBeamOff
  c1 g'2 2 | c,1. 2 | f d4(c) b2 2 | c1.
  bes'2 | a1 aes | g2 f e f | g1 g, | c\breve
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
}

chorusMen = \lyricmode {
}

verses = 7

wordsOne = \lyricmode {
  \set stanza = "1."
  Peace! per -- fect peace! In this dark world of sin?
  The blood of Je -- sus whis -- pers peace with -- in.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Peace! per -- fect peace! by throng -- ing du -- ties press'd?
  To do the will of Je -- sus, this is rest.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Peace! per -- fect peace! with sor -- rows sur -- ging round?
  On Je -- sus' bo -- som naught but calm is found.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Peace! per -- fect peace! with loved ones far a -- way?
  In Je -- sus' keep -- ing we are safe, and they.
}
  
wordsFive = \lyricmode {
  \set stanza = "5."
  Peace! per -- fect peace! our fu -- ture all un -- known?
  Je -- sus we know, and He is on the throne.
}
  
wordsSix = \lyricmode {
  \set stanza = "6."
  Peace! per -- fect peace! death sha -- dowing us and ours?
  Je -- sus has van -- quished death and all its powers.
}
  
wordsSeven = \lyricmode {
  \set stanza = "7."
  It is e -- nough: earth's strug -- gles sppn shall cease,
  And Je -- sus call to heav -- en's per -- fect peace.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Peace! " per "fect " "peace! " "In " "this " "dark " "world " "of " "sin? "
  "\nThe " "blood " "of " Je "sus " whis "pers " "peace " with "in.\n"

  \set stanza = "2."
  "\nPeace! " per "fect " "peace! " "by " throng "ing " du "ties " "press'd? "
  "\nTo " "do " "the " "will " "of " Je "sus, " "this " "is " "rest.\n"

  \set stanza = "3."
  "\nPeace! " per "fect " "peace! " "with " sor "rows " sur "ging " "round? "
  "\nOn " Je "sus' " bo "som " "naught " "but " "calm " "is " "found.\n"

  \set stanza = "4."
  "\nPeace! " per "fect " "peace! " "with " "loved " "ones " "far " a "way? "
  "\nIn " Je "sus' " keep "ing " "we " "are " "safe, " "and " "they.\n"

  \set stanza = "5."
  "\nPeace! " per "fect " "peace! " "our " fu "ture " "all " un "known? "
  "\nJe" "sus " "we " "know, " "and " "He " "is " "on " "the " "throne.\n"

  \set stanza = "6."
  "\nPeace! " per "fect " "peace! " "death " sha "dowing " "us " "and " "ours? "
  "\nJe" "sus " "has " van "quished " "death " "and " "all " "its " "powers.\n"

  \set stanza = "7."
  "\nIt " "is " e "nough: " "earth's " strug "gles " "sppn " "shall " "cease, "
  "\nAnd " Je "sus " "call " "to " heav "en's " per "fect " "peace. "
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
            \new Lyrics \lyricsto "aligner"   \wordsFour
            \new Lyrics \lyricsto "aligner"   \wordsFive
            \new Lyrics \lyricsto "aligner"   \wordsSix
            \new Lyrics \lyricsto "aligner"   \wordsSeven
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
                                              \wordsSeven \chorus
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
