\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Come to Jesus!"
  subtitle    = "Sankey No. 458"
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

  poet        = \markup\smallCaps "Anna Shipton."
%  meter       = \markup\smallCaps "meter"
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key e \major
  \time 3/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s4 s2.*3
  \mark \markup { \box "B" }    s2.*3
  \mark \markup { \box "C" }    s2.*3
  \mark \markup { \box "D" }    s2.*3
  \mark \markup { \box "E" }    s2.*3 s2
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
  s4 s2.*14
  s4 \tempo 4=100 s2
  s2
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff \partial 4
  gis'8. 16 | a4 gis cis8. b16 | b4 gis dis8 e | a4. gis8 fis e |
  fis4. r8 gis8. 16 | a4 gis cis8. b16 | 4 gis b8 cis |
  dis8. cis16 b4 ais | b4. r8 \bar "||" cis8.^\markup\smallCaps Chorus. b16 | b4 a8 r dis8. cis16 |
  cis4 b8 r e8. b16 | a8 cis b4 a | gis4. r8 cis8. b16 |
  b4 a8 r dis8. cis16 | 4 b8 r e8. b16 | cis8 e b4^\markup\italic rit. 4 | b4. r8
}

alto = \relative {
  \autoBeamOff \partial 4
  e'8. 16 | 4 4 a8. gis16 | 4 e b8 e | dis4. e8 8 cis |
  dis4. r8 e8. 16 | 4 4 a8. gis16 | 4 e gis8 8 |
  fis8. 16 4 e | dis4. r8 a'8. gis16 | 4 fis8 r a8. 16 |
  a4 gis8 r8 8. 16 | e8 8 4 dis | e4. r8 a8. gis16 |
  gis4 fis8 r a8. 16 | 4 gis8 r8 8. e16 | 8 8 gis4 fis | e4. r8
}

tenor = \relative {
  \autoBeamOff \partial 4
  b8. 16 | cis4 b e8. 16 | 4 b4 8 8 | 4. 8 cis8 gis |
  b4. r8 8. 16 | cis4 b e8. 16 | 4 b e8 8 |
  b8. e16 dis4 cis | b4. r8 8. 16 | 4 8 r8 8. dis16 |
  e4 8 r b8. e16 | cis8 a b4 4 | 4. r8 8. 16 |
  b4 8 r8 8. dis16 | e4 8 r b8. gis16 | a8 cis b4 a | gis4. r8
}

bass = \relative {
  \autoBeamOff \partial 4
  e8. 16 | 4 4 8. 16 | 4 4 a8 gis | fis4. e8 a, cis |
  b4. r8 e8. 16 | 4 4 8. 16 | 4 4 8 8 |
  fis8. 16 4 4 | b,4. r8 8. 16 | 4 8 r8 8. 16 |
  e4 8 r8 8. 16 | a8 8 gis4 fis | e4. r8 b8. 16 |
  b4 8 r8 8. 16 | e4 8 r8 8. 16 | a,8 8 b4 4 | e4. r8
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  Come to Je -- sus! Come to Je -- sus!
  Hark! The Spi -- rit whis -- pers, "\"Come!\""
  Come to Je -- sus! Come to Je -- sus!
  Hark! The Spi -- rit whis -- pers, "\"Come!\""
}

chorusMen = \lyricmode {
}

verses = 3

wordsOne = \lyricmode {
  \set stanza = "1."
  Come to Je -- sus, ye who wan -- der
  Far from hope, and peace, and rest;
  Scorned, neg -- lect -- ed, and for -- sa -- ken,
  Sor -- row -- ful, and sore dis -- trest.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Come to Je -- sus! He hath loved you
  With a deep, a -- bound -- ing love;
  And His heart of ten -- d'rest pi -- ty
  Needs no sac -- ri -- fice to move.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Come! oh come! the Mas -- ter wait -- eth:
  "\"Come!\"" the long -- ing Bride doth say:
  "\"Come!\"" He tar -- ries whilst we lin -- ger;
  He hath borne our sins a -- way.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Come " "to " Je "sus, " "ye " "who " wan "der "
  "\nFar " "from " "hope, " "and " "peace, " "and " "rest; "
  "\nScorned, " neg lect "ed, " "and " for sa "ken, "
  "\nSor" row "ful, " "and " "sore " dis "trest. "
  "\nCome " "to " Je "sus! " "Come " "to " Je "sus! "
  "\nHark! " "The " Spi "rit " whis "pers, " "\"Come!\" "
  "\nCome " "to " Je "sus! " "Come " "to " Je "sus! "
  "\nHark! " "The " Spi "rit " whis "pers, " "\"Come!\"\n"

  \set stanza = "2."
  "\nCome " "to " Je "sus! " "He " "hath " "loved " "you "
  "\nWith " "a " "deep, " a bound "ing " "love; "
  "\nAnd " "His " "heart " "of " ten "d'rest " pi "ty "
  "\nNeeds " "no " sac ri "fice " "to " "move. "
  "\nCome " "to " Je "sus! " "Come " "to " Je "sus! "
  "\nHark! " "The " Spi "rit " whis "pers, " "\"Come!\" "
  "\nCome " "to " Je "sus! " "Come " "to " Je "sus! "
  "\nHark! " "The " Spi "rit " whis "pers, " "\"Come!\"\n"

  \set stanza = "3."
  "\nCome! " "oh " "come! " "the " Mas "ter " wait "eth: "
  "\n\"Come!\" " "the " long "ing " "Bride " "doth " "say: "
  "\n\"Come!\" " "He " tar "ries " "whilst " "we " lin "ger; "
  "\nHe " "hath " "borne " "our " "sins " a "way. "
  "\nCome " "to " Je "sus! " "Come " "to " Je "sus! "
  "\nHark! " "The " Spi "rit " whis "pers, " "\"Come!\" "
  "\nCome " "to " Je "sus! " "Come " "to " Je "sus! "
  "\nHark! " "The " Spi "rit " whis "pers, " "\"Come!\" "
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
