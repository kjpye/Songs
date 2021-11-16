\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Glory to Thee, my God!"
  subtitle    = "Sankey No. 301"
  subsubtitle = "Sankey 880 No. 628"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "T. Tallis."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Bishop Ken."
  meter       = \markup\smallCaps "L.M."
  piece       = \markup\smallCaps "Evening Hymn."

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key g \major
  \time 2/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s4 s2*7 s4
  \mark \markup { \box "B" } s4 s2*7 s4
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
  s4
  s2*15
  \tempo 4=40 s4
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  g'4
  g4 fis
  g4 4
  a4 4
  b4 g
  c4 4
  b4 4
  a4 4
  g4 \bar "|" \break d'
  c4 a % B
  b4 4
  a4 4
  g4 d
  e4 fis
  g4 b
  a4 4
  g4\fermata
}

alto = \relative {
  \autoBeamOff
  d'4
  d4 d
  b4 d
  e4 d
  d4 g
  g4 fis
  g4 d
  e4 d
  d4 g
  e4 fis % B
  g4 4
  e4 d
  d4 4
  c4 4
  b4 d
  c4 a
  b4\fermata
}

tenor = \relative {
  \autoBeamOff
  b4
  a4 4
  g4 4
  g4 fis
  g4 4
  a4 4
  b4 g
  c4 4
  b4 4
  a4 4 % B
  g4 d'
  c4 a
  b4 4
  a4 4
  g4 d
  e4 fis
  g4\fermata
}

bass = \relative {
  \autoBeamOff
  g4
  d4 4
  e4 b
  c4 d
  g,4 b
  a4 4
  g4 g'
  g4 fis
  g4 b,
  c4 d % B
  g,4 g'
  a4 fis
  g4 g,
  c4 a
  e'4 b
  c4 d
  g,4\fermata
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
}

verses = 4

wordsOne = \lyricmode {
  \set stanza = "1."
  Glo -- ry to Thee, my God this night,
  For all the bles -- sings of the light;
  Keep me, oh, keep me, King of kings,
  Be -- neath Thine own al -- migh -- ty wings.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  For -- give me, Lord, for Thy dear Son,
  The ill that I this day have done;
  That with the world, my -- self, and Thee,
  I, ere I sleep, at peace may be.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Teach me to live, that I may dread
  The grave as lit -- tle as my ned;
  Teach me to die, that so I may
  Rise glo -- rious at the Judg -- ment Day.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Oh, let my soul on Thee re -- pose,
  And may sweet sleep mine eye -- lids close;
  Sleep, that shall me more vig -- orous make
  To serve my God when I a -- wake.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Glo" "ry " "to " "Thee, " "my " "God " "this " "night, "
  "\nFor " "all " "the " bles "sings " "of " "the " "light; "
  "\nKeep " "me, " "oh, " "keep " "me, " "King " "of " "kings, "
  "\nBe" "neath " "Thine " "own " al migh "ty " "wings. "

  \set stanza = "2."
  "\nFor" "give " "me, " "Lord, " "for " "Thy " "dear " "Son, "
  "\nThe " "ill " "that " "I " "this " "day " "have " "done; "
  "\nThat " "with " "the " "world, " my "self, " "and " "Thee, "
  "\nI, " "ere " "I " "sleep, " "at " "peace " "may " "be. "

  \set stanza = "3."
  "\nTeach " "me " "to " "live, " "that " "I " "may " "dread "
  "\nThe " "grave " "as " lit "tle " "as " "my " "ned; "
  "\nTeach " "me " "to " "die, " "that " "so " "I " "may "
  "\nRise " glo "rious " "at " "the " Judg "ment " "Day. "

  \set stanza = "4."
  "\nOh, " "let " "my " "soul " "on " "Thee " re "pose, "
  "\nAnd " "may " "sweet " "sleep " "mine " eye "lids " "close; "
  "\nSleep, " "that " "shall " "me " "more " vig "orous " "make "
  "\nTo " "serve " "my " "God " "when " "I " a "wake. "
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
            \new Lyrics \lyricsto "aligner"   \wordsFour
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
                                              \wordsFour  \chorus
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
                                              \wordsFour  \chorus
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
