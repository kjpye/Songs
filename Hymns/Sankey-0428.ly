\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "narrow and Strait"
  subtitle    = "Sankey No. 428"
  subsubtitle = "N. H. No. 11"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Geo. F. Root."
%  arranger    = "arranger"
%  opus        = "opus"

%  poet        = \markup\smallCaps "poet"
%  meter       = \markup\smallCaps "meter"
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key ees \major
  \time 3/4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s2.*6
  \mark \markup { \box "B" } s2.*7
  \mark \markup { \box "C" } s2.*7
  \mark \markup { \box "D" } s2.*8
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  g'4 fis g
  bes4 g r
  ees4 aes c
  bes2 r4
  g4 f e
  f g f
  ees4 ees' c % B
  bes2 r4
  g4 fis g
  bes4 g r
  bes4 a bes
  c2 r4
  d4 c d
  ees4 g, a % C
  bes4 c bes
  ees,2 r4 \bar "||"
  g4^\markup\smallCaps Refrain. f ees
  bes'2.~
  bes2.~
  bes2 r4
  g4 f ees % D
  bes'2.~
  bes2.~
  bes2 r4
  d4 c bes
  ees4 g, a
  bes4 c bes
  ees,2 r4
}

alto = \relative {
  \autoBeamOff
  ees'4 4 4
  g4 ees r
  c4 4 ees
  ees2 r4
  d4 4 cis
  d4 4 4
  ees4 4 4 % B
  ees2 r4
  ees4 4 4
  g4 ees r
  g4 fis g
  aes2 r4
  aes4 4 f
  ees4 4 4 % C
  ees4 d d
  ees2 r4
  \partCombineApart R2.
  R2.
  \partCombineAutomatic d4 ees f
  ees2 r4
  \partCombineApart R2. % D
  R2.
  \partCombineAutomatic d4 ees f
  ees2 r4
  f4 ees d
  ees4 4 4
  ees4 d d
  ees2 r4
}

tenor = \relative {
  \autoBeamOff
  bes4 a bes
  ees4 bes r
  aes4 4 4
  g2 r4
  bes4 aes g
  aes4 bes aes
  g4 c aes % B
  g2 r4
  bes4 a bes
  ees4 bes r
  ees4 4 4
  ees2 r4
  bes4 f aes
  g4 4 fis % C
  g4 aes aes
  g2 r4
  R2.
  R2.
  f4 g aes
  g2 r4
  R2. % D
  R2.
  f4 g aes
  g2 r4
  aes4 4 4
  g4 4 fis
  g4 aes aes
  g2 r4
}

bass = \relative {
  \autoBeamOff
  ees4 4 4
  ees4 4 r
  ees4 4 4
  ees2 r4
  bes4 4 4
  bes4 4 4
  ees4 4 4 % B
  ees2 r4
  ees4 4 4
  ees4 4 r
  ees4 4 4
  aes,2 r4
  bes4 4 4
  c4 4 4 % C
  bes4 4 4
  ees2 r4
  R2.
  R2.
  bes4 4 4
  ees2 r4
  R2. % D
  R2.
  bes4 4 4
  ees2 r4
  bes4 4 4
  c4 4 4
  bes4 4 4
  ees2 r4
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  Nar -- row and strait, __
  Nar -- row and strait. __
  Is the bright path -- way
  to heaven's pear -- ly gate.
}

chorusMen = \lyricmode {
  _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  Nar -- row and strait,
  Nar -- row and strait.
  _ _ _ _ _ _ _ _ _ _
}

verses = 3

wordsOne = \lyricmode {
  \set stanza = "1."
  Why do you lin -- ger, why do you stay.
  In the broad road, that most dan -- ger -- ous way—
  While right be -- fore you, nar -- row and strait,
  Is the bright path -- way to heaven's pear -- ly gate?
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Do you find plea -- sures last -- ing and pure
  In the gay scenes that the thought -- less al -- lure—
  While you Re -- deem -- er, with love so greatm
  Points to the way that is nar -- row and strait?
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Come, then, be -- lov -- ed, no long -- er stay:
  Leave the broad high -- way, oh, leave it to -- day!
  Make your de -- cis -- ion, oh, do not wait;
  Take thou the path -- way so nar -- row and strait!
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Why " "do " "you " lin "ger, " "why " "do " "you " "stay. "
  "\nIn " "the " "broad " "road, " "that " "most " dan ger "ous " "way— "
  "\nWhile " "right " be "fore " "you, " nar "row " "and " "strait, "
  "\nIs " "the " "bright " path "way " "to " "heaven's " pear "ly " "gate? "
  "\nNar" "row " "and " "strait, " 
  "\nNar" "row " "and " "strait. " 
  "\nIs " "the " "bright " path "way "
  "\nto " "heaven's " pear "ly " "gate. "

  \set stanza = "2."
  "\nDo " "you " "find " plea "sures " last "ing " "and " "pure "
  "\nIn " "the " "gay " "scenes " "that " "the " thought "less " al "lure— "
  "\nWhile " "you " Re deem "er, " "with " "love " "so " "greatm "
  "\nPoints " "to " "the " "way " "that " "is " nar "row " "and " "strait? "
  "\nNar" "row " "and " "strait, " 
  "\nNar" "row " "and " "strait. " 
  "\nIs " "the " "bright " path "way "
  "\nto " "heaven's " pear "ly " "gate. "

  \set stanza = "3."
  "\nCome, " "then, " be lov "ed, " "no " long "er " "stay: "
  "\nLeave " "the " "broad " high "way, " "oh, " "leave " "it " to "day! "
  "\nMake " "your " de cis "ion, " "oh, " "do " "not " "wait; "
  "\nTake " "thou " "the " path "way " "so " nar "row " "and " "strait! "
  "\nNar" "row " "and " "strait, " 
  "\nNar" "row " "and " "strait. " 
  "\nIs " "the " "bright " path "way "
  "\nto " "heaven's " pear "ly " "gate. "
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
