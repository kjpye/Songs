\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Have You any Room for Jesus?"
  subtitle    = "Sankey No. 443"
  subsubtitle = "Sankey 880 No. 386"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "C. C. Williams."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup{\smallCaps "El Nathan," arr.}
%  meter       = \markup\smallCaps "meter"
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key c \major
  \time 4/4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" }    s1*3
  \mark \markup { \box "B" }    s1*3
  \mark \markup { \box "C" }    s1*3
  \mark \markup { \box "D" }    s1*3 s2
  \mark \markup { \box "E" } s2 s1*3
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  g'4. a8 g c b8. a16
  a4 2 r4
  f4. e8 f g a8. g16
  g2(e4) r % B
  g4. a8 g c b8. a16
  a4 g2 \once\tiny g4
  f4. e8 f g a8. b16 % C
  c2. r4 \bar "||"
  d4.^\markup\smallCaps Chorus. 8 8 8 e8. d16
  c2 g4 r% D
  a4. 8 8 8 b c
  d2. \once\partCombineApart r4
  e4. 8 \bar "|" \break f8 e c8. a16
  g2 e4 r % E
  f4. a8 g c b8. 16
  c2. r4
}

alto = \relative {
  \autoBeamOff
  e'4. f8 e e g8. f16
  f4 e2 r4
  d4. cis8 d e f8. e16
  e2(c4) r % B
  e4. f8 e e g8. f16
  f4 e2 \once\tiny <d g>4
  d4. cis8 d e f8. 16 % C
  e2. r4
  f4. 8 8 8 g8. f16
  e2 4 r % D
  e4. 8 8 8 8 8
  f2. \once\tiny <fis dis'>4
  g4. 8 a g e8. f16
  e2 c4 r % E
  c4. f8 e e d8. f16
  e2. r4
}

tenor = \relative {
  \autoBeamOff
  c'2. r4
  c2. r4
  g2. r4
  c2. r4 % B
  c2. r4
  c2. r4
  g2. r4 % C
  g2. r4
  b4. 8 8 8 c8. g16
  g2 c4 r % D
  c4. 8 8 8 e c
  b2. r4
  c4. 8 8 8 g8. c16
  c2 g4 r % E
  a4. c8 8 g8 8. 16
  g2. r4
}

bass = \relative {
  \autoBeamOff
  c2. r4
  c2. r4
  g2. r4
  c2. r4 % B
  c2. r4
  c2. r4
  g2. r4 % C
  c2. r4
  g'4. 8 8 8 8. 16
  c,2 4 r % D
  a'4. 8 8 8 gis a
  g2. r4
  c,4. 8 8 8 8. 16
  c2 4 r % E
  f4. 8 g8 8 8. 16
  c,2. r4
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  Room for Je -- sus, King of Glo -- ry!
  Has -- ten now, His word o -- bey!
  Swing the heart's door wide -- ly o -- pen!
  Bid Him en -- ter while you may.
}

chorusMen = \lyricmode {
}

verses = 4

wordsOne = \lyricmode {
  \set stanza = "1."
  Have you a -- ny room for Je -- sus—
  He who bore your load of sin? __
  As He knocks and asks ad -- mis -- sion, _
  Sin -- ner, will you let Him in?
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Room for plea -- sure, room for bus -- 'ness,
  But for Christ the cru -- ci -- fied— __
  Not a place that He can en -- ter _
  In the heart for which He died!
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Have you an -- y time for Je -- sus,
  As in grace He calls a -- gain?
  Oh, \markup\smallCaps "\"to" -- \markup\smallCaps "day\"" is "\"time" -- ac -- cept -- "ed.\""
  To -- mor -- row you may call in vain.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Room and time now give to Je -- sus;
  Soon will pass God's day of grace;
  Soon thy heart be cold and si -- lent, _
  And thy Sa -- viour's plead -- ings cease.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Have " "you " a "ny " "room " "for " Je "sus— "
  "\nHe " "who " "bore " "your " "load " "of " "sin? " 
  "\nAs " "He " "knocks " "and " "asks " ad mis "sion, " ""
  "\nSin" "ner, " "will " "you " "let " "Him " "in? "
  "\nRoom " "for " Je "sus, " "King " "of " Glo "ry! "
  "\nHas" "ten " "now, " "His " "word " o "bey! "
  "\nSwing " "the " "heart's " "door " wide "ly " o "pen! "
  "\nBid " "Him " en "ter " "while " "you " "may.\n"

  \set stanza = "2."
  "\nRoom " "for " plea "sure, " "room " "for " bus "'ness, "
  "\nBut " "for " "Christ " "the " cru ci "fied— " 
  "\nNot " "a " "place " "that " "He " "can " en "ter " ""
  "\nIn " "the " "heart " "for " "which " "He " "died! "
  "\nRoom " "for " Je "sus, " "King " "of " Glo "ry! "
  "\nHas" "ten " "now, " "His " "word " o "bey! "
  "\nSwing " "the " "heart's " "door " wide "ly " o "pen! "
  "\nBid " "Him " en "ter " "while " "you " "may.\n"

  \set stanza = "3."
  "\nHave " "you " an "y " "time " "for " Je "sus, "
  "\nAs " "in " "grace " "He " "calls " a "gain? "
  "\nOh, " "\"to" "day\" " "is " "\"time" ac cept "ed.\" "
  "\nTo" mor "row " "you " "may " "call " "in " "vain. "
  "\nRoom " "for " Je "sus, " "King " "of " Glo "ry! "
  "\nHas" "ten " "now, " "His " "word " o "bey! "
  "\nSwing " "the " "heart's " "door " wide "ly " o "pen! "
  "\nBid " "Him " en "ter " "while " "you " "may.\n"

  \set stanza = "4."
  "\nRoom " "and " "time " "now " "give " "to " Je "sus; "
  "\nSoon " "will " "pass " "God's " "day " "of " "grace; "
  "\nSoon " "thy " "heart " "be " "cold " "and " si "lent, " ""
  "\nAnd " "thy " Sa "viour's " plead "ings " "cease. "
  "\nRoom " "for " Je "sus, " "King " "of " Glo "ry! "
  "\nHas" "ten " "now, " "His " "word " o "bey! "
  "\nSwing " "the " "heart's " "door " wide "ly " o "pen! "
  "\nBid " "Him " en "ter " "while " "you " "may. "
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
