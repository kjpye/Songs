\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "The Prodigal Child."
  subtitle    = "Sankey No. 435"
  subsubtitle = "Sankey 880 No. 13"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "W. H. Doane."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Mrs. E. H. Gates."
%%  meter       = \markup\smallCaps "meter"
  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key ees \major
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
  bes'4
  bes2(g4) 4
  g2(ees4) bes'8 8
  c2 bes4 g
  f2. \bar "|" \break f8 8
  f2 g4 aes % B
  g2(bes4) g8 ees
  f2 g4 aes
  g2(bes4) r \break
  c2 ees4~ \tuplet 3/2 {ees8 d c} % C
  bes2. g4
  f2 bes4~ \tuplet 3/2 {bes8[aes] f}
  ees2. r4 \break
  aes1^\markup\smallCaps Refrain. % D
  g1
  bes2 aes4 f^\markup\italic rit.
  ees2.\fermata
}

alto = \relative {
  \autoBeamOff
  ees'4
  ees2~4 4
  ees2(bes4) ees8 8
  ees2 4 4
  d2. 8 8
  d2 ees4 f % B
  ees2. 8 8
  d2 ees4 f
  ees2. r4
  ees2 4~ \tuplet 3/2 {ees8 ees ees} % C
  ees2. 4
  d2 4~ \tuplet 3/2 {d4 8}
  ees2. r4
  ees1 % D
  ees1
  d2 4 4
  ees4 c\fermata bes\fermata
}

tenor = \relative {
  \autoBeamOff
  g4
  g2(bes4) 4
  bes2(g4) 8 8
  aes2 g4 bes
  bes2. 8 8
  bes2 4 4 % B
  bes2(g4) bes8 g
  bes2 4 4
  bes2(g4) r
  aes2 c4~ \tuplet 3/2 {c8 bes aes} % C
  g2. bes4
  bes2 f4~8 aes
  g2. r4
  c1 % D
  bes1
  f2 4 aes
  g4 aes\fermata g\fermata
}

bass = \relative {
  \autoBeamOff
  ees4
  ees2. 4
  ees2. 8 8
  ees2 4 4
  bes2. 8 8
  bes2 4 4 % B
  ees2. 8 8
  bes2 4 4
  ees2. r4
  aes,2 4~ \tuplet 3/2 {aes8 8 8} % C
  ees'2. 4
  bes2 4~8 8
  ees2. r4
  \once\partCombineApart r4 aes,4 2 % D
  \once\partCombineApart r4 ees'4 2
  bes2 4 4
  ees2.\fermata
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  Come home!
  Come, oh, come home! 
}

chorusMen = \lyricmode {
  _ _ _ _
  _ _ _ _ _ _
  _ _ _ _ _ _
  _ _ _ _ _ _
  _ _ _ _ _
  _ _ _ _ _
  _ _ _ _ _ _
  come home!
}

chorusBass = \lyricmode {
  _ _ _ _
  _ _ _ _ _ _
  _ _ _ _ _ _
  _ _ _ _ _ _
  _ _ _ _ _
  _ _ _ _ _
  Come home, come home! _ _ _ _
}

verses = 4

wordsOne = \lyricmode {
  \set stanza = "1."
  Come home, come home!
  You are wea -- ry at heart,
  For the way has been dark,
  And so lone -- ly and wild:
  O pro -- di -- gal child!
  Come home: oh __ come home!
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Come home, come home!
  For we watch, and we wait;
  And we stand at the gate,
  While the sha -- dows are piled:
  O pro -- di -- gal child!
  Come home: oh __ come home!
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Come home, come home!
  From the sor -- row and blame,
  From the sin and the shame,
  And the tem -- pter that smiled:
  O pro -- di -- gal child!
  Come home: oh __ come home!
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Come home, come home!
  There is bread and to spare,
  And a warm wel -- come there:
  Then, to friends re -- con -- ciled,
  O pro -- di -- gal child!
  Come home: oh __ come home!
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Come " "home, " "come " "home! "
  "\nYou " "are " wea "ry " "at " "heart, "
  "\nFor " "the " "way " "has " "been " "dark, "
  "\nAnd " "so " lone "ly " "and " "wild: "
  "\nO " pro di "gal " "child! "
  "\nCome " "home: " "oh "  "come " "home! "
  "\nCome " "home! "
  "\nCome, " "oh, " "come " "home, " "come " "home!\n"

  \set stanza = "2."
  "Come " "home, " "come " "home! "
  "\nFor " "we " "watch, " "and " "we " "wait; "
  "\nAnd " "we " "stand " "at " "the " "gate, "
  "\nWhile " "the " sha "dows " "are " "piled: "
  "\nO " pro di "gal " "child! "
  "\nCome " "home: " "oh "  "come " "home! "
  "\nCome " "home! "
  "\nCome, " "oh, " "come " "home, " "come " "home!\n"

  \set stanza = "3."
  "Come " "home, " "come " "home! "
  "\nFrom " "the " sor "row " "and " "blame, "
  "\nFrom " "the " "sin " "and " "the " "shame, "
  "\nAnd " "the " tem "pter " "that " "smiled: "
  "\nO " pro di "gal " "child! "
  "\nCome " "home: " "oh "  "come " "home! "
  "\nCome " "home! "
  "\nCome, " "oh, " "come " "home, " "come " "home!\n"

  \set stanza = "4."
  "\nCome " "home, " "come " "home! "
  "\nThere " "is " "bread " "and " "to " "spare, "
  "\nAnd " "a " "warm " wel "come " "there: "
  "\nThen, " "to " "friends " re con "ciled, "
  "\nO " pro di "gal " "child! "
  "\nCome " "home: " "oh "  "come " "home! "
  "\nCome " "home! "
  "\nCome, " "oh, " "come " "home, " "come " "home! "
}

wordsMidiSop = \lyricmode {
  \set stanza = "1."
  "Come " "home, " "come " "home! "
  "\nYou " "are " wea "ry " "at " "heart, "
  "\nFor " "the " "way " "has " "been " "dark, "
  "\nAnd " "so " lone "ly " "and " "wild: "
  "\nO " pro di "gal " "child! "
  "\nCome " "home: " "oh "  "come " "home! "
  "\nCome " "home! "
  "\nCome, " "oh, " "come " "home!\n" 

  \set stanza = "2."
  "\nCome " "home, " "come " "home! "
  "\nFor " "we " "watch, " "and " "we " "wait; "
  "\nAnd " "we " "stand " "at " "the " "gate, "
  "\nWhile " "the " sha "dows " "are " "piled: "
  "\nO " pro di "gal " "child! "
  "\nCome " "home: " "oh "  "come " "home! "
  "\nCome " "home! "
  "\nCome, " "oh, " "come " "home!\n" 

  \set stanza = "3."
  "\nCome " "home, " "come " "home! "
  "\nFrom " "the " sor "row " "and " "blame, "
  "\nFrom " "the " "sin " "and " "the " "shame, "
  "\nAnd " "the " tem "pter " "that " "smiled: "
  "\nO " pro di "gal " "child! "
  "\nCome " "home: " "oh "  "come " "home! "
  "\nCome " "home! "
  "\nCome, " "oh, " "come " "home!\n" 

  \set stanza = "4."
  "\nCome " "home, " "come " "home! "
  "\nThere " "is " "bread " "and " "to " "spare, "
  "\nAnd " "a " "warm " wel "come " "there: "
  "\nThen, " "to " "friends " re con "ciled, "
  "\nO " pro di "gal " "child! "
  "\nCome " "home: " "oh "  "come " "home! "
  "\nCome " "home! "
  "\nCome, " "oh, " "come " "home! " 
}

wordsMidiBass = \lyricmode {
  \set stanza = "1."
  "Come " "home, " "come " "home! "
  "\nYou " "are " wea "ry " "at " "heart, "
  "\nFor " "the " "way " "has " "been " "dark, "
  "\nAnd " "so " lone "ly " "and " "wild: "
  "\nO " pro di "gal " "child! "
  "\nCome " "home: " "oh "  "come " "home! "
  "\nCome " "home, " "come " "home! "
  "\nCome, " "oh, " "come " "home!\n" 

  \set stanza = "2."
  "\nCome " "home, " "come " "home! "
  "\nFor " "we " "watch, " "and " "we " "wait; "
  "\nAnd " "we " "stand " "at " "the " "gate, "
  "\nWhile " "the " sha "dows " "are " "piled: "
  "\nO " pro di "gal " "child! "
  "\nCome " "home: " "oh "  "come " "home! "
  "\nCome " "home, " "come " "home! "
  "\nCome, " "oh, " "come " "home!\n" 

  \set stanza = "3."
  "\nCome " "home, " "come " "home! "
  "\nFrom " "the " sor "row " "and " "blame, "
  "\nFrom " "the " "sin " "and " "the " "shame, "
  "\nAnd " "the " tem "pter " "that " "smiled: "
  "\nO " pro di "gal " "child! "
  "\nCome " "home: " "oh "  "come " "home! "
  "\nCome " "home, " "come " "home! "
  "\nCome, " "oh, " "come " "home!\n" 

  \set stanza = "4."
  "\nCome " "home, " "come " "home! "
  "\nThere " "is " "bread " "and " "to " "spare, "
  "\nAnd " "a " "warm " wel "come " "there: "
  "\nThen, " "to " "friends " re con "ciled, "
  "\nO " pro di "gal " "child! "
  "\nCome " "home: " "oh "  "come " "home! "
  "\nCome " "home, " "come " "home! "
  "\nCome, " "oh, " "come " "home! " 
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
            \addlyrics \wordsMidiSop
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
            \addlyrics \wordsMidi
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
  \bookOutputSuffix "midi-bass"
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
          >>
                                % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Voice { \global \repeat unfold \verses \bass }
            \addlyrics \wordsMidiBass
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
            \new NullVoice \bass
            \addlyrics \chorusBass
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
            \new NullVoice            { \repeat unfold \verses \bass }
            \addlyrics { \repeat unfold \verses \chorusBass }
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
