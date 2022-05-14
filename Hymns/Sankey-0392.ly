\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Only Trust Him."
  subtitle    = "Sankey No. 392"
  subsubtitle = "Sankey 880 No. 64"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "J. H. Stockton"
%  arranger    = "arranger"
%  opus        = "opus"

%  poet        = \markup\smallCaps ""
  meter       = \markup\smallCaps "C.M."
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key g \major
  \time 4/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s4 s1*3 s2.
  \mark \markup { \box "B" } s4 s1*4
  \mark \markup { \box "C" }    s1*4
  \mark \markup { \box "D" }    s1*3 s2.
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  d'4
  d4. e8 d4 g
  b4. 8 a4 g
  d'4 4 b g
  a2. \bar "|" \break b4
  d4. 8 b4 g % B
  g4. 8 e4 d
  d4. g8 b4 a
  g2. r4 \break
  d'4.^\markup\smallCaps Chorus. b8 b[a] g4 % C
  g4. e8 4 d
  d4 g b g
  a2. r4
  d4. b8 8[a] g4 % D
  g4. e8 4 d
  d4. g8 b4 a
  g2.
}

alto = \relative {
  \autoBeamOff
  b4
  b4. c8 b4 d
  g4. 8 d4 4
  g4 4 4 4
  fis2. g4
  g4. 8 4 d % B
  e4. 8 c4 b
  b4. d8 4 4
  d2. r4
  g4. 8 d4 4 % C
  e4. c8 4 b
  d4 4 g g
  fis2. r4
  g4. 8 d4 4 % D
  e4. c8 4 b
  b4. d8 4 4
  d2.
}

tenor = \relative {
  \autoBeamOff
  g4
  g4. 8 4 b
  d4. 8 c4 b
  b4 4 d d
  d2. g,4
  b4. 8 d4 4 % B
  c4. 8 g4 4
  g4. b8 d4 c
  b2. r4
  b4. 8 d[c] b4 % C
  g4. 8 4 4
  b4 4 d b
  d2. r4
  b4. d8 d[c] b4 % D
  g4. 8 4 4
  g4. b8 d4 c
  b2.
}

bass = \relative {
  \autoBeamOff
  g4
  g4. 8 4 4
  g4. 8 4 4
  g,4 4 4 b
  d2. g4
  g4. 8 4 b, % B
  c4. 8 4 g'
  d4. 8 4 4
  g2. r4
  g4. 8 4 4
  c,4. 8 4 g'
  g4 4 4 4
  d2. r4
  g4. 8 4 4 % D
  c,4. 8 4 g'
  d4. 8 4 4
  g2.
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  On -- ly trust Him!
  On -- ly trust Him!
  On -- ly trust Him now!
  He will save you!
  He will save you!
  He will save you now!
}

chorusMen = \lyricmode {
}

verses = 4

wordsOne = \lyricmode {
  \set stanza = "1."
  Come, ev -- 'ry soul by sin op -- press'd,
  There's mer -- cy with the Lord;
  And He will sure -- ly give you rest
  By trust -- ing in His word.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  For Je -- sus shed His pre -- cious blood
  Rich bless -- ings to be -- stow;
  Plunge now in -- to the crim -- son flood
  That wash -- es white as snow.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Yes, Je -- sus is the Truth, the Way
  That leads you in -- to rest;
  Be -- lieve in Him with -- out de -- lay,
  And you are ful -- ly blest.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Come then, and join this ho -- ly band,
  And on to glo -- ry go,
  To dwell in that ce -- les -- tial land
  Where joys im -- mor -- tal flow.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Come, " ev "'ry " "soul " "by " "sin " op "press'd, "
  "\nThere's " mer "cy " "with " "the " "Lord; "
  "\nAnd " "He " "will " sure "ly " "give " "you " "rest "
  "\nBy " trust "ing " "in " "His " "word. "
  "\nOn" "ly " "trust " "Him! "
  "\nOn" "ly " "trust " "Him! "
  "\nOn" "ly " "trust " "Him " "now! "
  "\nHe " "will " "save " "you! "
  "\nHe " "will " "save " "you! "
  "\nHe " "will " "save " "you " "now! "

  \set stanza = "2."
  "\nFor " Je "sus " "shed " "His " pre "cious " "blood "
  "\nRich " bless "ings " "to " be "stow; "
  "\nPlunge " "now " in "to " "the " crim "son " "flood "
  "\nThat " wash "es " "white " "as " "snow. "
  "\nOn" "ly " "trust " "Him! "
  "\nOn" "ly " "trust " "Him! "
  "\nOn" "ly " "trust " "Him " "now! "
  "\nHe " "will " "save " "you! "
  "\nHe " "will " "save " "you! "
  "\nHe " "will " "save " "you " "now! "

  \set stanza = "3."
  "\nYes, " Je "sus " "is " "the " "Truth, " "the " "Way "
  "\nThat " "leads " "you " in "to " "rest; "
  "\nBe" "lieve " "in " "Him " with "out " de "lay, "
  "\nAnd " "you " "are " ful "ly " "blest. "
  "\nOn" "ly " "trust " "Him! "
  "\nOn" "ly " "trust " "Him! "
  "\nOn" "ly " "trust " "Him " "now! "
  "\nHe " "will " "save " "you! "
  "\nHe " "will " "save " "you! "
  "\nHe " "will " "save " "you " "now! "

  \set stanza = "4."
  "\nCome " "then, " "and " "join " "this " ho "ly " "band, "
  "\nAnd " "on " "to " glo "ry " "go, "
  "\nTo " "dwell " "in " "that " ce les "tial " "land "
  "\nWhere " "joys " im mor "tal " "flow. "
  "\nOn" "ly " "trust " "Him! "
  "\nOn" "ly " "trust " "Him! "
  "\nOn" "ly " "trust " "Him " "now! "
  "\nHe " "will " "save " "you! "
  "\nHe " "will " "save " "you! "
  "\nHe " "will " "save " "you " "now! "
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
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}
