\version "2.25.13"

\include "../kjp.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "There's Room for All."
  subtitle    = "Sankey No. 820"
%  subsubtitle = "Sankey 880 No. Y"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Geo. C. Stebbins."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Fanny J. Crosby."
  meter       = \markup\smallCaps "7.6. D."
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key aes \major
  \time 4/4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s1*4
  \textMark \markup { \box \bold "B" } s1*5
  \textMark \markup { \box \bold "C" } s1*5
  \textMark \markup { \box \bold "D" } s1*5
  \textMark \markup { \box \bold "E" } s1*5
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  ees'4 aes8. bes16 c4 des | c2 bes4 r | ees, g8. aes16 bes4 c | aes2. r4 |
  ees4 aes8. bes16 c4 des | c2 bes4 r | ees bes8. aes16 g4 f | ees2. r4 | des'4 c8. bes16 f4 g |
  aes2 ees4 r | aes f8. g16 aes4 bes | c2. r4 | c bes8. c16 des4 c | ees2 f4 r |
  aes,4 g8. aes16 c4 bes | aes2. r4 |
  \section \sectionLabel \markup\smallCaps Refrain.
  ees'2~8[f] ees[des] | c2. r4 | aes2~8[bes] aes[f] |
  ees2. r4 | g4 f8. g16 aes4 bes | c2 des4 r | ees aes,8. bes16 c4 bes | aes2. r4 |
}

alto = \relative {
  \autoBeamOff
  c'4 8. des16 ees4 f | ees2 des4 r | 4 8. c16 des4 ees | c2. r4 |
  c4 8. des16 ees4 f | ees2 4 r | g ees8. 16 4 d | ees2. r4 | ees4 8. 16 des4 4 |
  c2 4 r | 4 8. 16 f4 4 | e2. r4 | ees des8. ees16 f4 ees | g2 f4 r |
  ees4 8. 16 aes4 g | aes2. r4 | c2~8[des] c[bes] | aes2. r4 | f2~8[g] f[des] |
  c2. r4 | des4 8. ees16 4 4 | 4(ges) f r | ees f8. d16 ees4 des | c2. r4 |
}

tenor = \relative {
  \autoBeamOff
  aes4 8. 16 4 4 |2 g4 r | g bes8. aes16 g4 4 | aes2. r4 |
  aes4 8. 16 4 4 | 2 g4 r | bes4 8. c16 bes4 aes | g2. r4 | bes aes8. g16 aes4 bes |
  aes2 4 r | f aes8. bes16 aes4 f | g2. r4 | aes4 8. 16 4 4 | c(aes) 4 r |
  c4 bes8. c16 ees4 des | c2. r4 | ees4 4 4 4 | 4 4 4 r | des4 4 4 aes |
  aes4 4 4 r | bes aes8. bes16 aes4 g | aes2 4 r | 4 8. 16 4 g | aes2. r4 |
}

bass = \relative {
  \autoBeamOff
  aes,4 8. 16 4 4 | ees'2 4 r | 4 8. 16 4 4 | aes,2. r4 |
  aes4 8. 16 4 4 | ees'2 4 r | 4 g8. aes16 bes4 bes, | ees2. r4 | 4 8. 16 4 4 |
  aes,2 4 r | f'4 8. 16 des4 4 | c2. r4 | aes4 8. 16 4 aes' | 4(c,) des r |
  ees4 8. 16 4 4 | aes,2. r4 \section | aes'4 4 4 4 | 4 4 4 r | des,4 4 4 4 |
  aes4 4 4 r | ees'4 8. des16 c4 ees | aes2 des,4 r | c4 f8. 16 ees4 4 | aes,2. r4 |
}

chorus = \lyricmode {
  Room __ for all __ Room __ for all: __
  Tell them the feast is rea -- dy—
  Tell them there's room for all.
}

chorusMen = \lyricmode {
  \repeat unfold 52 \skip 1
  Room, there's room for all, for all,
  Room, there's room for all, for all,
  \repeat unfold 13 \skip 1
}

verses = 3

wordsOne = \lyricmode {
  \set stanza = "1."
  Res -- cue the souls that per -- ish,
  Seek for the lost that stray;
  Pa -- tient -- ly guide their foot -- steps
  In -- to the nar -- row way!
  O -- ver them kind -- ly bend -- ing,
  Whis -- per the Sa -- viour's call;
  Tell them the feast is rea -- dy—
  Tell them there's room for all.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Out of the vale of sor -- row,
  Out of the star -- less night,
  In -- to the gold -- en sun -- shine,
  Peace -- fulm and pure, and bright:
  Ga -- ther them now to Je -- sus—
  Whis -- per a -- gain the call;
  Tell them the feast is rea -- dy—
  Tell them there's room for all.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Go with a lov -- ing spi -- rit,
  Go in the Mas -- ter's name:
  Life, and a full sal -- va -- tion,
  Now to the world pro -- claim:
  Haste while the day -- beams lin -- ger;
  Haste ere the sha -- dows fall;
  Tell them the feast is rea -- dy—
  Tell them there's room for all.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Res" "cue " "the " "souls " "that " per "ish, "
  "\nSeek " "for " "the " "lost " "that " "stray; "
  "\nPa" tient "ly " "guide " "their " foot "steps "
  "\nIn" "to " "the " nar "row " "way! "
  "\nO" "ver " "them " kind "ly " bend "ing, "
  "\nWhis" "per " "the " Sa "viour's " "call; "
  "\nTell " "them " "the " "feast " "is " rea "dy— "
  "\nTell " "them " "there's " "room " "for " "all. "
  "\nRoom "  "for " "all "  "Room "  "for " "all: " 
  "\nTell " "them " "the " "feast " "is " rea "dy— "
  "\nTell " "them " "there's " "room " "for " "all.\n"

  \set stanza = "2."
  "\nOut " "of " "the " "vale " "of " sor "row, "
  "\nOut " "of " "the " star "less " "night, "
  "\nIn" "to " "the " gold "en " sun "shine, "
  "\nPeace" "fulm " "and " "pure, " "and " "bright: "
  "\nGa" "ther " "them " "now " "to " Je "sus— "
  "\nWhis" "per " a "gain " "the " "call; "
  "\nTell " "them " "the " "feast " "is " rea "dy— "
  "\nTell " "them " "there's " "room " "for " "all. "
  "\nRoom "  "for " "all "  "Room "  "for " "all: " 
  "\nTell " "them " "the " "feast " "is " rea "dy— "
  "\nTell " "them " "there's " "room " "for " "all.\n"

  \set stanza = "3."
  "\nGo " "with " "a " lov "ing " spi "rit, "
  "\nGo " "in " "the " Mas "ter's " "name: "
  "\nLife, " "and " "a " "full " sal va "tion, "
  "\nNow " "to " "the " "world " pro "claim: "
  "\nHaste " "while " "the " day "beams " lin "ger; "
  "\nHaste " "ere " "the " sha "dows " "fall; "
  "\nTell " "them " "the " "feast " "is " rea "dy— "
  "\nTell " "them " "there's " "room " "for " "all. "
  "\nRoom "  "for " "all "  "Room "  "for " "all: " 
  "\nTell " "them " "the " "feast " "is " rea "dy— "
  "\nTell " "them " "there's " "room " "for " "all. "
}

wordsMidiMen = \lyricmode {
  \set stanza = "1."
  "Res" "cue " "the " "souls " "that " per "ish, "
  "\nSeek " "for " "the " "lost " "that " "stray; "
  "\nPa" tient "ly " "guide " "their " foot "steps "
  "\nIn" "to " "the " nar "row " "way! "
  "\nO" "ver " "them " kind "ly " bend "ing, "
  "\nWhis" "per " "the " Sa "viour's " "call; "
  "\nTell " "them " "the " "feast " "is " rea "dy— "
  "\nTell " "them " "there's " "room " "for " "all. "
  "\nRoom, " "there's " "room " "for " "all, " "for " "all, "
  "\nRoom, " "there's " "room " "for " "all, " "for " "all, "
  "\nTell " "them " "the " "feast " "is " rea "dy— "
  "\nTell " "them " "there's " "room " "for " "all.\n"

  \set stanza = "2."
  "\nOut " "of " "the " "vale " "of " sor "row, "
  "\nOut " "of " "the " star "less " "night, "
  "\nIn" "to " "the " gold "en " sun "shine, "
  "\nPeace" "fulm " "and " "pure, " "and " "bright: "
  "\nGa" "ther " "them " "now " "to " Je "sus— "
  "\nWhis" "per " a "gain " "the " "call; "
  "\nTell " "them " "the " "feast " "is " rea "dy— "
  "\nTell " "them " "there's " "room " "for " "all. "
  "\nRoom, " "there's " "room " "for " "all, " "for " "all, "
  "\nRoom, " "there's " "room " "for " "all, " "for " "all, "
  "\nTell " "them " "the " "feast " "is " rea "dy— "
  "\nTell " "them " "there's " "room " "for " "all.\n"

  \set stanza = "3."
  "\nGo " "with " "a " lov "ing " spi "rit, "
  "\nGo " "in " "the " Mas "ter's " "name: "
  "\nLife, " "and " "a " "full " sal va "tion, "
  "\nNow " "to " "the " "world " pro "claim: "
  "\nHaste " "while " "the " day "beams " lin "ger; "
  "\nHaste " "ere " "the " sha "dows " "fall; "
  "\nTell " "them " "the " "feast " "is " rea "dy— "
  "\nTell " "them " "there's " "room " "for " "all. "
  "\nRoom, " "there's " "room " "for " "all, " "for " "all, "
  "\nRoom, " "there's " "room " "for " "all, " "for " "all, "
  "\nTell " "them " "the " "feast " "is " rea "dy— "
  "\nTell " "them " "there's " "room " "for " "all. "
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
            \new Voice { \repeat unfold \verses \RehearsalTrack }
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

#(set-global-staff-size 18)

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

#(set-global-staff-size 20)

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
      #(layout-set-staff-size 20)
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}
