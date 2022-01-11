\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Why Not Now?"
  subtitle    = "Sankey No. 341"
  subsubtitle = "N. H. No. 8"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "C. C. Case."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "El Nathan."
  meter       = \markup\smallCaps "7s."
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key d \major
  \time 9/8
  \partial 4.
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s4.*12
  \mark \markup { \box "B" } s4.*12
  \mark \markup { \box "C" } s4.*12
  \mark \markup { \box "D" } s4.*12
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  a'4 d8
  cis4. e, cis'4 b8
  a4.(fis) b4 a8
  g4. e a4 g8
  fis4.~4. \bar "|" \break a4 d8
  cis4. e, cis'4 b8 % B
  a4.(fis) b4 a8
  g4 fis8 g4. e
  d4.~4. \bar "|" \break d'4^\markup\smallCaps Chorus. cis8
  b4.~4. cis4 b8 % C
  a4.~4. b4 a8
  g4 fis8 g4. a
  fis4.~4. \bar "|" \break d'4 cis8
  b4.~4. cis4 b8 % D
  a4.~4. b4 a8
  g4 fis8 g4. e
  d4.~4.
}

alto = \relative {
  \autoBeamOff
  fis'4 8
  g4. cis, e4 g8
  fis4.(d) 4 8
  cis4. cis fis4 e8
  d4.~4. fis4 8
  g4. cis, e4 g8 % B
  fis4.(d) g4 fis8
  e4 d8 e4. cis
  d4.~4. fis4 a8
  g4.~4. a4 g8 % C
  fis4.~4. g4 fis8
  e4 d8 e4. fis
  d4.~4. fis4 a8
  g4.~4. a4 g8 % D
  fis4.~4. g4 fis8
  e4 d8 e4. cis
  d4.~4.
}

tenor = \relative {
  \autoBeamOff
  a4 8
  a4. 4. 4 8
  a4.(d) 4 8
  a4. 4. 4 8
  a4.~4. 4 8
  a4. 4. 4 8 % B
  a4.~4. 4 8
  a4 8 4. g
  fis4.~4. r4 r8
  d'4 8 4. r4 r8 % C
  d4 8 4. 4 a8
  a4 8 4. 4.
  a4.~4. r4 r8
  d4 8 4. r4 r8 % D
  d4 8 4. 4 a8
  a4 8 4. g
  fis4.~4.
}

bass = \relative {
  \autoBeamOff
  d4 8
  a4. 4. 4 8
  d4.~4. g4 fis8
  e4. a,4. 4 8
  d4.~4. 4 8
  a4. 4. 4 8 % B
  d4.~4. 4 8
  a4 8 4. 4.
  d4.~4. r4 r8
  g4 8 4. r4 r8 % C
  d4 8 4. 4 8
  a4 8 4. 4.
  d4.~4. e4 e8
  g4 8 4. r4 r8 % D
  d4 8 4. 4 8
  a4 8 4. 4.
  d4.~4.
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  Why not now? __ why not now? __
  Why not come to Je -- sus now?
  Why not now? __ why not now? __
  Why not come to Je -- sus now?
}

chorusMen = \lyricmode {
  _ _ _ _ _ _ _
  _ _ _ _ _ _ _
  _ _ _ _ _ _ _
  _ _ _ _ _ _ _
  Why not now? why not now?
  _ _ _ _ _ _ _
  Why not now? why not now?
  _ _ _ _ _ _ _
}

verses = 4

wordsOne = \lyricmode {
  \set stanza = "1."
  While we pray, and while we plead,
  While you see your soul's deep need,
  While you Fa -- ther calls you home,
  Will you not, my bro -- ther come?
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  You have wan -- dered far a -- way,
  Do not risk an -- o -- ther day;
  Do not turn from God your face,
  But to -- day ac -- cept His grace.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  In the world you've fail'd to find
  Aught of peace for trou -- bled mind,
  Come to Christ, on Him be -- lieve,
  Peace and joy you shall re -- ceive.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Come to Christ, con -- fes -- sion make;
  Come to Christ and par -- don take;
  Trust in Him from day to day,
  He will keep you all the way.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "While " "we " "pray, " "and " "while " "we " "plead, "
  "\nWhile " "you " "see " "your " "soul's " "deep " "need, "
  "\nWhile " "you " Fa "ther " "calls " "you " "home, "
  "\nWill " "you " "not, " "my " bro "ther " "come? "
  "\nWhy " "not " "now? "  "why " "not " "now? " 
  "\nWhy " "not " "come " "to " Je "sus " "now? "
  "\nWhy " "not " "now? "  "why " "not " "now? " 
  "\nWhy " "not " "come " "to " Je "sus " "now? "

  \set stanza = "2."
  "\nYou " "have " wan "dered " "far " a "way, "
  "\nDo " "not " "risk " an o "ther " "day; "
  "\nDo " "not " "turn " "from " "God " "your " "face, "
  "\nBut " to "day " ac "cept " "His " "grace. "
  "\nWhy " "not " "now? "  "why " "not " "now? " 
  "\nWhy " "not " "come " "to " Je "sus " "now? "
  "\nWhy " "not " "now? "  "why " "not " "now? " 
  "\nWhy " "not " "come " "to " Je "sus " "now? "

  \set stanza = "3."
  "\nIn " "the " "world " "you've " "fail'd " "to " "find "
  "\nAught " "of " "peace " "for " trou "bled " "mind, "
  "\nCome " "to " "Christ, " "on " "Him " be "lieve, "
  "\nPeace " "and " "joy " "you " "shall " re "ceive. "
  "\nWhy " "not " "now? "  "why " "not " "now? " 
  "\nWhy " "not " "come " "to " Je "sus " "now? "
  "\nWhy " "not " "now? "  "why " "not " "now? " 
  "\nWhy " "not " "come " "to " Je "sus " "now? "

  \set stanza = "4."
  "\nCome " "to " "Christ, " con fes "sion " "make; "
  "\nCome " "to " "Christ " "and " par "don " "take; "
  "\nTrust " "in " "Him " "from " "day " "to " "day, "
  "\nHe " "will " "keep " "you " "all " "the " "way. "
  "\nWhy " "not " "now? "  "why " "not " "now? " 
  "\nWhy " "not " "come " "to " Je "sus " "now? "
  "\nWhy " "not " "now? "  "why " "not " "now? " 
  "\nWhy " "not " "come " "to " Je "sus " "now? "
}

\book {
  \bookOutputSuffix "midi-women"
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
  \bookOutputSuffix "midi-men"
  \score {
%    \articulate
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano
          <<
            \new Voice { \repeat unfold \verses \TempoTrack     }
            \new Voice { \global \repeat unfold \verses \soprano \bar "|." }
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
            \addlyrics \wordsMidi
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
            \new Lyrics \lyricsto "aligner"   \wordsFour
          >>
                                  % Joint tenor/bass staff
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \tenor } { \global \bass }
            \new NullVoice = alignerT \tenor
            \new Lyrics \with {alignAboveContext = men} \lyricsto alignerT \chorusMen
          >>
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
                                              \wordsFour  \chorus
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice \partCombine { \global \repeat unfold \verses \tenor }
                                            { \global \repeat unfold \verses \bass }
            \new NullVoice = alignerT {\repeat unfold \verses \tenor}
            \new Lyrics \with {alignAboveContext = men} \lyricsto alignerT {\repeat unfold \verses \chorusMen}
          >>
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
                                              \wordsFour  \chorus
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice \partCombine { \global \repeat unfold \verses \tenor }
                                            { \global \repeat unfold \verses \bass }
            \new NullVoice = alignerT {\repeat unfold \verses \tenor}
            \new Lyrics \with {alignAboveContext = men} \lyricsto alignerT {\repeat unfold \verses \chorusMen}
          >>
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
