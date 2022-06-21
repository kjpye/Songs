\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Look and Live"
  subtitle    = "Sankey No. 411"
  subsubtitle = "Sankey 880 No. 589"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "W. A. Ogden."
%  arranger    = "arranger"
%  opus        = "opus"

%  poet        = \markup\smallCaps ""
%  meter       = \markup\smallCaps "meter"
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 18)

global = {
  \key g \major
  \time 4/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s4 s1*2
  \mark \markup { \box "B" }    s1*2 s2.
  \mark \markup { \box "C" } s4 s1*2 s2.
  \mark \markup { \box "D" } s4 s1   s2.
  \mark \markup { \box "E" } s4 s1*2 s2.
  \mark \markup { \box "F" } s4 s1*2 s2.
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  d'8 8
  g8 8 8. 16 fis4 e8. d16
  d'2 c4 a
  g8 8 8 8 fis4 a % B
  g2. d8 8
  g8 8 8 8 fis4 \bar "|" \break e8. d16
  d'2 c4 a8 8 % C
  g8 8 8 8 fis4 a
  g2. \bar "|" \break d'8.^\markup\smallCaps Chorus. 16
  d2~8 b8 a g % D
  d'2. \bar "|" \break 8. 16
  d4 b a cis % E
  d2. d,8 8
  g8 8 8 8 fis4 \bar "|" \break e8. d16
  d'2 c4 a8 8 % F
  g8 8 8 8 fis4 a
  g2.
}

alto = \relative {
  \autoBeamOff
  d'8 8
  d8 8 8. 16 c4 8. 16
  d2 e4 4
  d8 8 8 8 4 4 % B
  d2. 8 8
  d8 8 8 8 c4 8. 16
  d2 e4 8 8 % C
  d8 8 8 8 4 4
  d2. r4
  r4 g8. 16 8 8 fis g % D
  fis4 8. 16 4 8. 16
  g4 4 a g % E
  fis2. d8 8
  d8 8 8 8 c4 8. 16
  d2 e4 8 8 % F
  d8 8 8 8 4 4
  d2.
}

tenor = \relative {
  \autoBeamOff
  d8 8
  b'8 8 8. 16 a4 8. 16
  g2 4 c
  b8 8 8 8 a4 c % B
  b2. d,8 8
  b'8 8 8 8 a4 8. 16
  g2 4 c8 8 % C
  b8 8 8 8 a4 c
  b2. r4
  r4 b8. 16 8 d c b % D
  a4 8. 16 4 8. 16
  b4 d d a % E
  a2. d,8 8
  d'8 8 8 8 a4 8. 16
  g2 4 c8 8
  b8 8 8 8 a4 c
  b2.
}

bass = \relative {
  \autoBeamOff
  d8 8
  g,8 8 8. 16 a4 8. 16
  b2 c4 4
  d8 8 8 8 4 4 % B
  g,2. d'8 8
  g,8 8 8 8 a4 8. 16
  b2 c4 8 8 % C
  d8 8 8 8 4 4
  g,2. r4
  r4 g'8. 16 8 8 8 8 % D
  d4 8. 16 4 8. 16
  g4 4 fis e % E
  d2. 8 8
  g,8 8 8 8 a4 8. 16
  b2 c4 8 8 % F
  d8 8 8 8 4 4
  g,2.
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  "\"Look" and "live!\"" __ my broth -- er, live! __
  Look to Je -- sus now and live:
  'Tis re -- cord -- ed in His Word,
  Hal -- le -- lu -- jah!
  It is on -- ly that you "\"look" and "live!\""
}

chorusMen = \lyricmode {
  _ _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _ _ _ _
  "\"Look" and "live!\"" __ my broth -- er, live! __
  "\"Look" and "live!\""
  _ _ _ _ _ _ _
  _ _ _ _ _ _ _
  _ _ _ _
  _ _ _ _ _ _ _ _ _
}

verses = 3

wordsOne = \lyricmode {
  \set stanza = "1."
  I've a mes -- sage from the Lord,
  Hal -- le -- lu -- jah!
  The mes -- sage un -- to you I'll give;
  'Tis re -- cord -- ed in His Word,
  Hal -- le -- lu -- jah!
  It is on -- ly that you "\"look" and "live.\""
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  I've a mes -- sage full of love,
  Hal -- le -- lu -- jah!
  A mes -- sage, O my friend, for you;
  'Tis a mes -- sage from a -- bove,
  Hal -- le -- lu -- jah!
  Je -- sus said it— and I know 'tis true!
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Life is of -- fered un -- to thee,
  Hal -- le -- lu -- jah!
  E -- ter -- nal life thy soul shall have,
  If you'll on -- ly look to Him,
  Hal -- le -- lu -- jah!
  Look to Je -- sus, who a -- lone can save.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "I've " "a " mes "sage " "from " "the " "Lord, "
  "\nHal" le lu "jah! "
  "\nThe " mes "sage " un "to " "you " "I'll " "give; "
  "\n'Tis " re cord "ed " "in " "His " "Word, "
  "\nHal" le lu "jah! "
  "\nIt " "is " on "ly " "that " "you " "\"look " "and " "live.\" "
  "\n\"Look " "and " "live!\" "  "my " broth "er, " "live! " 
  "\nLook " "to " Je "sus " "now " "and " "live: "
  "\n'Tis " re cord "ed " "in " "His " "Word, "
  "\nHal" le lu "jah! "
  "\nIt " "is " on "ly " "that " "you " "\"look " "and " "live!\" "

  \set stanza = "2."
  "\nI've " "a " mes "sage " "full " "of " "love, "
  "\nHal" le lu "jah! "
  "\nA " mes "sage, " "O " "my " "friend, " "for " "you; "
  "\n'Tis " "a " mes "sage " "from " a "bove, "
  "\nHal" le lu "jah! "
  "\nJe" "sus " "said " "it— " "and " "I " "know " "'tis " "true! "
  "\n\"Look " "and " "live!\" "  "my " broth "er, " "live! " 
  "\nLook " "to " Je "sus " "now " "and " "live: "
  "\n'Tis " re cord "ed " "in " "His " "Word, "
  "\nHal" le lu "jah! "
  "\nIt " "is " on "ly " "that " "you " "\"look " "and " "live!\" "

  \set stanza = "3."
  "\nLife " "is " of "fered " un "to " "thee, "
  "\nHal" le lu "jah! "
  "\nE" ter "nal " "life " "thy " "soul " "shall " "have, "
  "\nIf " "you'll " on "ly " "look " "to " "Him, "
  "\nHal" le lu "jah! "
  "\nLook " "to " Je "sus, " "who " a "lone " "can " "save. "
  "\n\"Look " "and " "live!\" "  "my " broth "er, " "live! " 
  "\nLook " "to " Je "sus " "now " "and " "live: "
  "\n'Tis " re cord "ed " "in " "His " "Word, "
  "\nHal" le lu "jah! "
  "\nIt " "is " on "ly " "that " "you " "\"look " "and " "live!\" "
}

wordsMidiMen = \lyricmode {
  \set stanza = "1."
  "I've " "a " mes "sage " "from " "the " "Lord, "
  "\nHal" le lu "jah! "
  "\nThe " mes "sage " un "to " "you " "I'll " "give; "
  "\n'Tis " re cord "ed " "in " "His " "Word, "
  "\nHal" le lu "jah! "
  "\nIt " "is " on "ly " "that " "you " "\"look " "and " "live.\" "
  "\n\"Look " "and " "live!\" " "my " broth "er, " "live! "
  "\n\"Look " "and " "live!\" "
  "\nLook " "to " Je "sus " "now " "and " "live: "
  "\n'Tis " re cord "ed " "in " "His " "Word, "
  "\nHal" le lu "jah! "
  "\nIt " "is " on "ly " "that " "you " "\"look " "and " "live!\" "

  \set stanza = "2."
  "\nI've " "a " mes "sage " "full " "of " "love, "
  "\nHal" le lu "jah! "
  "\nA " mes "sage, " "O " "my " "friend, " "for " "you; "
  "\n'Tis " "a " mes "sage " "from " a "bove, "
  "\nHal" le lu "jah! "
  "\nJe" "sus " "said " "it— " "and " "I " "know " "'tis " "true! "
  "\n\"Look " "and " "live!\" " "my " broth "er, " "live! "
  "\n\"Look " "and " "live!\" "
  "\nLook " "to " Je "sus " "now " "and " "live: "
  "\n'Tis " re cord "ed " "in " "His " "Word, "
  "\nHal" le lu "jah! "
  "\nIt " "is " on "ly " "that " "you " "\"look " "and " "live!\" "

  \set stanza = "3."
  "\nLife " "is " of "fered " un "to " "thee, "
  "\nHal" le lu "jah! "
  "\nE" ter "nal " "life " "thy " "soul " "shall " "have, "
  "\nIf " "you'll " on "ly " "look " "to " "Him, "
  "\nHal" le lu "jah! "
  "\nLook " "to " Je "sus, " "who " a "lone " "can " "save. "
  "\n\"Look " "and " "live!\" " "my " broth "er, " "live! "
  "\n\"Look " "and " "live!\" "
  "\nLook " "to " Je "sus " "now " "and " "live: "
  "\n'Tis " re cord "ed " "in " "His " "Word, "
  "\nHal" le lu "jah! "
  "\nIt " "is " on "ly " "that " "you " "\"look " "and " "live!\" "
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
  \bookOutputSuffix "midi-sop"
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
          \new Staff = women \with { printPartCombineTexts = ##f }
          <<
            \new Voice \RehearsalTrack
            \new Voice \TempoTrack
            \new NullVoice = "aligner" \soprano
            \new Voice \partCombine { \global \soprano \bar "|." } { \global \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne \chorus }
            \new Lyrics \lyricsto "aligner"   \wordsTwo
            \new Lyrics \lyricsto "aligner"   \wordsThree
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

\book {
  \bookOutputSuffix "single"
  \score {
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
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}
