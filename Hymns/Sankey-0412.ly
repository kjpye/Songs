\version "2.23.9"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Calling Now."
  subtitle    = "Sankey No. 412"
%  subsubtitle = "Sankey 880 No. Y"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "P. P. Bliss."
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
  \key f \major
  \time 6/4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s1.*4
  \mark \markup { \box "B" } s1.*4
  \mark \markup { \box "C" } s1.*4
  \mark \markup { \box "D" } s1.*4
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  c''2. bes2 4
  a2. f
  g2. c2 bes4
  a1.
  a2. g2 f4 % B
  bes2. a
  g2 4 a2 g4
  g2.(c) \bar "||"
  c2^\markup\smallCaps Refrain. 4 d2 c4 % C
  c2. a4 bes c
  c2 a4 c2 f,4
  g1.
  a2 4 g2 f4 % D
  b2 a4 4 d c
  c2 a4 2 g4
  f1.
}

alto = \relative {
  \autoBeamOff
  a'2. g2 4
  f2. c
  e2. 2 g4
  f1.
  f2. c2 f4 % B
  f2. 2.
  e2 4 f2 4
  e2.~2.
  f2 4 2 4 % C
  f2. 4 g a
  a2 f4 a2 f4
  e1.
  f2 4 c2 f4 % D
  f2 4 4 4 4
  f2 4 e2 4
  f1.
}

tenor = \relative {
  \autoBeamOff
  c'2. 2 4
  c2. a
  c2. 2 4
  c1.
  c2. bes2 a4 % B
  d2. c
  c2 4 b2 4
  c2.(bes)
  a2 4 bes2 a4 % C
  a2. c4 4 4
  c2 4 f2 c4
  c1.
  c2 4 bes2 a4 % D
  d2 c4 4 bes a
  a2 c4 2 bes4
  a1.
}

bass = \relative {
  \autoBeamOff
  f2. 2 4
  f2. 2.
  c2. 2 4
  f1.
  f2. 2 4 % B
  f2. 2.
  g2 4 2 4
  c,2.~2.
  f2 4 2 4 % C
  f2. 4 4 4
  f2 4 2 a,4
  c1.
  f2 4 2 4 % D
  f2 4 4 4 4
  f2 4 c2 4
  f1.
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  Call -- ing now for thee, pro -- di -- gal,
  Call -- ing now for thee;
  Thou hast wan -- dered far a -- way,
  But He's call -- ing now for thee.
}

chorusMen = \lyricmode {
}

verses = 3

wordsOne = \lyricmode {
  \set stanza = "1."
  This lov -- ing Sa -- viour
  Stands pa -- tient -- ly;
  Though oft re -- ject -- ed,
  Calls a -- gain for thee. __
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Oh, bound -- less mer -- cy,
  Free, free to all!
  Stay, child of er -- ror,
  Heed the ten -- der call. __
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Though all un -- wor -- thy,
  Come now, come home;
  Say while He's wait -- ing:
  "\"Je" -- sus, Lord, I "come.\"" __
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "This " lov "ing " Sa "viour "
  "\nStands " pa tient "ly; "
  "\nThough " "oft " re ject "ed, "
  "\nCalls " a "gain " "for " "thee. " 
  "\nCall" "ing " "now " "for " "thee, " pro di "gal, "
  "\nCall" "ing " "now " "for " "thee; "
  "\nThou " "hast " wan "dered " "far " a "way, "
  "\nBut " "He's " call "ing " "now " "for " "thee. "

  \set stanza = "2."
  "\nOh, " bound "less " mer "cy, "
  "\nFree, " "free " "to " "all! "
  "\nStay, " "child " "of " er "ror, "
  "\nHeed " "the " ten "der " "call. " 
  "\nCall" "ing " "now " "for " "thee, " pro di "gal, "
  "\nCall" "ing " "now " "for " "thee; "
  "\nThou " "hast " wan "dered " "far " a "way, "
  "\nBut " "He's " call "ing " "now " "for " "thee. "

  \set stanza = "3."
  "\nThough " "all " un wor "thy, "
  "\nCome " "now, " "come " "home; "
  "\nSay " "while " "He's " wait "ing: "
  "\n\"Je" "sus, " "Lord, " "I " "come.\" " 
  "\nCall" "ing " "now " "for " "thee, " pro di "gal, "
  "\nCall" "ing " "now " "for " "thee; "
  "\nThou " "hast " wan "dered " "far " a "way, "
  "\nBut " "He's " call "ing " "now " "for " "thee. "
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
