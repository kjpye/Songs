\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Come to Jesus Now."
  subtitle    = "Sankey No. 380"
%  subsubtitle = "Sankey 880 No. Y"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Hubert P. Main."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Lyman G. Cuyler."
  meter       = \markup\smallCaps "7.5.7.5."
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key aes \major
  \time 4/4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s1*4
  \mark \markup { \box "B" } s1*4
  \mark \markup { \box "C" } s1*4
  \mark \markup { \box "D" } s1*4
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  c''8[bes] aes4 4 ees
  f4 aes ees2
  aes8[bes] c4 bes aes
  bes2. r4
  c8[bes] aes4 4 ees % B
  f4 aes ees2
  aes4. 8 bes4 4
  aes2. r4
  bes4^\markup\smallCaps Chorus. ees c8[bes] aes4 % C
  bes4 ees8[des] c2
  ees4 bes bes8[c] bes[aes]
  g4 f ees2
  aes8[bes] c4 bes2 % D
  bes8[c] des4 c2
  ees4. aes,8 c4 bes
  aes2. r4
}

alto = \relative {
  \autoBeamOff
  ees'4 c c ees
  des4 4 c2
  c4 4 d4 4
  ees2. r4
  ees4 c c ees % B
  des4 4 c2
  c4. 8 des4 4
  c2. r4
  ees4 4 4 4 % C
  ees4 g aes2
  bes4 aes g f
  ees8[c] d4 ees4(des)
  c8[des] ees4 2 % D
  ees4 4 2
  ees4. c8 ees4 4
  ees2. r4
}

tenor = \relative {
  \autoBeamOff
  aes4 ees ees aes
  aes4 4 2
  aes4 4 f bes
  g2. r4
  aes4 ees ees aes % B
  aes4 4 2
  aes4. 8 4 g
  aes2. r4
  g4 bes aes8[des] c4 % C
  bes4 8[ees] ees2
  ees4 d ees c
  bes4 8[aes] g2
  aes4 4 g2 % D
  g8[aes] bes4 aes2
  aes4. 8 4 des
  c2. r4
}

bass = \relative {
  \autoBeamOff
  aes,4 4 4 c
  des4 f aes2
  f4 4 bes, bes
  ees2. r4
  aes,4 4 4 c % B
  des4 f aes2
  f4. 8 ees4 4
  aes,2. r4
  ees'4 f aes8[des] aes4 % C
  g4 ees aes2
  g4 f ees aes,
  bes4 4 ees2
  aes4 aes, ees'2 % D
  ees4 g aes2
  c,4. f8 ees4 4
  aes,2. r4
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  Wea -- ry wan -- d'rer, come and see
  What His grace will do for thee:
  Hear Him say, Come a -- way,
  Come, oh come to -- day!
}

verses = 3

wordsOne = \lyricmode {
  \set stanza = "1."
  Art thou trou -- bled, sin- op -- pressed?
  Come to Je -- sus now;
  Wouldst thou find thy on -- ly rest?
  Come to Je -- sus now.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Day is fa -- ding in the west,
  Come to Je -- sus now;
  Lean thy head up -- on His breast—
  Come to Je -- sus now.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  He will all thy sins for -- give,
  Come to Je -- sus now;
  Look to Him and thou shalt live,
  Come to Je -- sus now.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Art " "thou " trou "bled, " sin op "pressed? "
  "\nCome " "to " Je "sus " "now; "
  "\nWouldst " "thou " "find " "thy " on "ly " "rest? "
  "\nCome " "to " Je "sus " "now. "
  "\nWea" "ry " wan "d'rer, " "come " "and " "see "
  "\nWhat " "His " "grace " "will " "do " "for " "thee: "
  "\nHear " "Him " "say, " "Come " a "way, "
  "\nCome, " "oh " "come " to "day! "

  \set stanza = "2."
  "\nDay " "is " fa "ding " "in " "the " "west, "
  "\nCome " "to " Je "sus " "now; "
  "\nLean " "thy " "head " up "on " "His " "breast— "
  "\nCome " "to " Je "sus " "now. "
  "\nWea" "ry " wan "d'rer, " "come " "and " "see "
  "\nWhat " "His " "grace " "will " "do " "for " "thee: "
  "\nHear " "Him " "say, " "Come " a "way, "
  "\nCome, " "oh " "come " to "day! "

  \set stanza = "3."
  "\nHe " "will " "all " "thy " "sins " for "give, "
  "\nCome " "to " Je "sus " "now; "
  "\nLook " "to " "Him " "and " "thou " "shalt " "live, "
  "\nCome " "to " Je "sus " "now. "
  "\nWea" "ry " wan "d'rer, " "come " "and " "see "
  "\nWhat " "His " "grace " "will " "do " "for " "thee: "
  "\nHear " "Him " "say, " "Come " a "way, "
  "\nCome, " "oh " "come " to "day! "
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
      \pointAndClickOff
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}
