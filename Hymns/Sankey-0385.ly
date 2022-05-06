\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Look unto Me, and be ye Saved!"
  subtitle    = "Sankey No. 385"
  subsubtitle = "Sankey 880 No. 510"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "James McGranahan."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "El Nathan."
  meter       = \markup\smallCaps "C.M."
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 19)

global = {
  \key d \major
  \time 3/4
  \partial 4.
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s4. s2.*3 s4.
  \mark \markup { \box "B" } s4. s2.*3 s4. \time 4/4 \partial 4.
  \mark \markup { \box "C" } s4. s1*2
  \mark \markup { \box "D" }     s1*3
  \mark \markup { \box "E" }     s1*2 s2 s8
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \global
  \autoBeamOff
  d'8 fis g
  a4. 8 b gis
  a2 4
  a4. e8 fis g fis4. \bar "|" \break d8 fis g
  a4. 8 b gis % B
  a2 4
  a4. fis8 g fis
  d4.\fermata \bar "|" \break \time 4/4 \partial 4. fis8^\markup\smallCaps Chorus. g a
  b2~8 d d b % C
  a2. r4
  a4. b8 a8[b] a b % D
  a2~8 fis g a
  b2~8 d d b
  a2~8 8 8 8 % E
  cis4. 8 4 b8[cis]
  d2~8\fermata
}

alto = \relative {
  \autoBeamOff
  d'8 d e
  fis4. 8 g eis
  fis2 4
  g4. cis,8 d e
  d4. 8 8 e
  fis4. 8 g eis % B
  fis2 4
  e4. d8 cis cis
  d4.\fermata 8 e fis
  g2~8 b b g % C
  fis2. r4
  g4. 8 4 8 8 % D
  fis4 8 8 8 d e fis
  g2~8 b b g
  fis2~8 8 8 8 % E
  e4. g8 4 4
  fis8 8 a-> g fis\fermata
}

tenor = \relative {
  \autoBeamOff
  fis8 a a
  d4. 8 8 8
  d2 4
  cis4. a8 8 8
  a4. fis8 a a
  d4. 8 8 8 % B
  d2 4
  cis4. a8 8 g
  fis4.\fermata r8 r4
  r8 d' d d d r r4 % C
  r8 d d d d4 r
  cis4. 8 4 8 8 % D
  d4 8 8 8 8 8 8
  d4 8 8 8 r r4
  r8 d d d d a a a % E
  a4. e'8 4 a,
  a8 a c b a\fermata
}

bass = \relative {
  \autoBeamOff
  d8 8 8
  d4. 8 8 8
  d2 4
  d4. 8 8 8
  e4. 8 a, a
  d4. 8 8 8 % B
  d2 4
  cis4. a8 a g
  fis4.\fermata r8 r4
  r8 d'8 8 8 8 r r4 % C
  r8 d d d d4 r
  e4. 8 a,4 8 8 % D
  d4 8 8 8 c b a
  g4 g'8 8 8 r r4
  r8 d d d d d d d % E
  a4. 8 4 4
  d2~8\fermata
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  \set associatedVoice = alignerA "\"Look" un -- to Me, __ and be ye saved,
  all ye ends, all ye ends of the earth; \set associatedVoice = alignerS
  for I am God. __ there is none else; __
  Look un -- to Me, and be ye "saved.\"" __
}

chorusMen = \lyricmode {
  _ _ _ _ _ _ _
  _ _ _ _ _ _ _
  _ _ _ _ _ _ _
  _ _ _ _ _ _ _
  Look un -- to Me! and be ye saved,
  _ _ _ _ _ _ _ _ _ _ _ _ _
  I am God, there is none else;
  _ _ _ _ _ _ _ _
  and be ye "saved/\""
}

chorusSopAbove = \lyricmode {
  _ _ _ _ _ _ _
  _ _ _ _ _ _ _
  _ _ _ _ _ _ _
  _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _
  all ye ends of the earth; __
  "" _ _ _ _ _ _ _
  _ _ _ _ _ _ _ -
}

verses = 4

wordsOne = \lyricmode {
  \set stanza = "1."
  "\"Look" un -- to Me, and be ye "saved!\""
  Oh, hear the blest com -- mand!
  Sal -- va -- tion full, sal -- va -- tion free,
  Pro -- claim o'er ev -- 'ry land!
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  "\"Look" un -- to "Me,\"" up -- on the cross,
  O wea -- ry, bur -- dened soul;
  "'T was" there on Me thy sins were laid.—
  Be -- lieve, and be made whole!
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  "\"Look" un -- to "Me,\"" thy ris -- en Lord,
  In dark temp -- ta -- tion's hour;
  The need -- ful grace I'll free -- ly give,
  To keep from Sa -- tan's power.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  "\"Look" un -- to "Me,\"" and not \markup\italic with -- \markup\italic in,
  No help is \markup\italic there for thee;
  For par -- don, peace, and all thy need.
  Look on -- ly un -- to \markup\smallCaps Me!
}
  
wordsMidiSop = \lyricmode {
  \set stanza = "1."
  "\"Look " un "to " "Me, " "and " "be " "ye " "saved!\" "
  "\nOh, " "hear " "the " "blest " com "mand! "
  "\nSal" va "tion " "full, " sal va "tion " "free, "
  "\nPro" "claim " "o'er " ev "'ry " "land! "
  "\n\"Look " un "to " "Me, "  "and " "be " "ye " "saved, "
  "\nall " "ye " "ends " "of " "the " "earth; "
  "\nfor " "I " "am " "God. "  "there " "is " "none " "else; " 
  "\nLook " un "to " "Me, " "and " "be " "ye " "saved.\" " 

  \set stanza = "2."
  "\n\"Look " un "to " "Me,\" " up "on " "the " "cross, "
  "\nO " wea "ry, " bur "dened " "soul; "
  "\n'T was " "there " "on " "Me " "thy " "sins " "were " "laid.— "
  "\nBe" "lieve, " "and " "be " "made " "whole! "
  "\n\"Look " un "to " "Me, "  "and " "be " "ye " "saved, "
  "\nall " "ye " "ends " "of " "the " "earth; "
  "\nfor " "I " "am " "God. "  "there " "is " "none " "else; " 
  "\nLook " un "to " "Me, " "and " "be " "ye " "saved.\" " 

  \set stanza = "3."
  "\n\"Look " un "to " "Me,\" " "thy " ris "en " "Lord, "
  "\nIn " "dark " temp ta "tion's " "hour; "
  "\nThe " need "ful " "grace " "I'll " free "ly " "give, "
  "\nTo " "keep " "from " Sa "tan's " "power. "
  "\n\"Look " un "to " "Me, "  "and " "be " "ye " "saved, "
  "\nall " "ye " "ends " "of " "the " "earth; "
  "\nfor " "I " "am " "God. "  "there " "is " "none " "else; " 
  "\nLook " un "to " "Me, " "and " "be " "ye " "saved.\" " 

  \set stanza = "4."
  "\n\"Look " un "to " "Me,\" " "and " "not " "\markup\italic " with "\markup\italic " "in, "
  "\nNo " "help " "is " "\markup\italic " "there " "for " "thee; "
  "\nFor " par "don, " "peace, " "and " "all " "thy " "need. "
  "\nLook " on "ly " un "to " "\markup\smallCaps " "Me! "
  "\n\"Look " un "to " "Me, "  "and " "be " "ye " "saved, "
  "\nall " "ye " "ends " "of " "the " "earth; "
  "\nfor " "I " "am " "God. "  "there " "is " "none " "else; " 
  "\nLook " un "to " "Me, " "and " "be " "ye " "saved.\" " 
}

wordsMidiAlto = \lyricmode {
  \set stanza = "1."
  "\"Look " un "to " "Me, " "and " "be " "ye " "saved!\" "
  "\nOh, " "hear " "the " "blest " com "mand! "
  "\nSal" va "tion " "full, " sal va "tion " "free, "
  "\nPro" "claim " "o'er " ev "'ry " "land! "
  "\n\"Look " un "to " "Me, "  "and " "be " "ye " "saved, "
  "\nall " "ye " "ends, " "all " "ye " "ends " "of " "the " "earth; "
  "\nfor " "I " "am " "God. "  "there " "is " "none " "else; " 
  "\nLook " un "to " "Me, " "and " "be " "ye " "saved.\" " "and " "be " "ye " "saved.\" "

  \set stanza = "2."
  "\n\"Look " un "to " "Me,\" " up "on " "the " "cross, "
  "\nO " wea "ry, " bur "dened " "soul; "
  "\n'T was " "there " "on " "Me " "thy " "sins " "were " "laid.— "
  "\nBe" "lieve, " "and " "be " "made " "whole! "
  "\n\"Look " un "to " "Me, "  "and " "be " "ye " "saved, "
  "\nall " "ye " "ends, " "all " "ye " "ends " "of " "the " "earth; "
  "\nfor " "I " "am " "God. "  "there " "is " "none " "else; " 
  "\nLook " un "to " "Me, " "and " "be " "ye " "saved.\" " "and " "be " "ye " "saved.\" "

  \set stanza = "3."
  "\n\"Look " un "to " "Me,\" " "thy " ris "en " "Lord, "
  "\nIn " "dark " temp ta "tion's " "hour; "
  "\nThe " need "ful " "grace " "I'll " free "ly " "give, "
  "\nTo " "keep " "from " Sa "tan's " "power. "
  "\n\"Look " un "to " "Me, "  "and " "be " "ye " "saved, "
  "\nall " "ye " "ends, " "all " "ye " "ends " "of " "the " "earth; "
  "\nfor " "I " "am " "God. "  "there " "is " "none " "else; " 
  "\nLook " un "to " "Me, " "and " "be " "ye " "saved.\" " "and " "be " "ye " "saved.\" "

  \set stanza = "4."
  "\n\"Look " un "to " "Me,\" " "and " "not " "\markup\italic " with "\markup\italic " "in, "
  "\nNo " "help " "is " "\markup\italic " "there " "for " "thee; "
  "\nFor " par "don, " "peace, " "and " "all " "thy " "need. "
  "\nLook " on "ly " un "to " "\markup\smallCaps " "Me! "
  "\n\"Look " un "to " "Me, "  "and " "be " "ye " "saved, "
  "\nall " "ye " "ends, " "all " "ye " "ends " "of " "the " "earth; "
  "\nfor " "I " "am " "God. "  "there " "is " "none " "else; " 
  "\nLook " un "to " "Me, " "and " "be " "ye " "saved.\" " "and " "be " "ye " "saved.\" "
}

wordsMidiTenor = \lyricmode {
  \set stanza = "1."
  "\"Look " un "to " "Me, " "and " "be " "ye " "saved!\" "
  "\nOh, " "hear " "the " "blest " com "mand! "
  "\nSal" va "tion " "full, " sal va "tion " "free, "
  "\nPro" "claim " "o'er " ev "'ry " "land! "
  "\n\"Look " un "to " "Me, "  "and " "be " "ye " "saved, "
  "\nall " "ye " "ends, " "all " "ye " "ends " "of " "the " "earth; "
  "\nfor " "I " "am " "God. " "I " "am " "God, " "there " "is " "none " "else; " 
  "\nLook " un "to " "Me, " "and " "be " "ye " "saved.\" " "and " "be " "ye " "saved,\" "

  \set stanza = "2."
  "\n\"Look " un "to " "Me,\" " up "on " "the " "cross, "
  "\nO " wea "ry, " bur "dened " "soul; "
  "\n'T was " "there " "on " "Me " "thy " "sins " "were " "laid.— "
  "\nBe" "lieve, " "and " "be " "made " "whole! "
  "\n\"Look " un "to " "Me, "  "and " "be " "ye " "saved, "
  "\nall " "ye " "ends, " "all " "ye " "ends " "of " "the " "earth; "
  "\nfor " "I " "am " "God. " "I " "am " "God, " "there " "is " "none " "else; " 
  "\nLook " un "to " "Me, " "and " "be " "ye " "saved.\" " "and " "be " "ye " "saved,\" "

  \set stanza = "3."
  "\n\"Look " un "to " "Me,\" " "thy " ris "en " "Lord, "
  "\nIn " "dark " temp ta "tion's " "hour; "
  "\nThe " need "ful " "grace " "I'll " free "ly " "give, "
  "\nTo " "keep " "from " Sa "tan's " "power. "
  "\n\"Look " un "to " "Me, "  "and " "be " "ye " "saved, "
  "\nall " "ye " "ends, " "all " "ye " "ends " "of " "the " "earth; "
  "\nfor " "I " "am " "God. " "I " "am " "God, " "there " "is " "none " "else; " 
  "\nLook " un "to " "Me, " "and " "be " "ye " "saved.\" " "and " "be " "ye " "saved,\" "

  \set stanza = "4."
  "\n\"Look " un "to " "Me,\" " "and " "not " "\markup\italic " with "\markup\italic " "in, "
  "\nNo " "help " "is " "\markup\italic " "there " "for " "thee; "
  "\nFor " par "don, " "peace, " "and " "all " "thy " "need. "
  "\nLook " on "ly " un "to " "\markup\smallCaps " "Me! "
  "\n\"Look " un "to " "Me, "  "and " "be " "ye " "saved, "
  "\nall " "ye " "ends, " "all " "ye " "ends " "of " "the " "earth; "
  "\nfor " "I " "am " "God. " "I " "am " "God, " "there " "is " "none " "else; " 
  "\nLook " un "to " "Me, " "and " "be " "ye " "saved.\" " "and " "be " "ye " "saved,\" "
}

wordsMidiBass = \lyricmode {
  \set stanza = "1."
  "\"Look " un "to " "Me, " "and " "be " "ye " "saved!\" "
  "\nOh, " "hear " "the " "blest " com "mand! "
  "\nSal" va "tion " "full, " sal va "tion " "free, "
  "\nPro" "claim " "o'er " ev "'ry " "land! "
  "\n\"Look " un "to " "Me, "  "and " "be " "ye " "saved, "
  "\nall " "ye " "ends, " "all " "ye " "ends " "of " "the " "earth; "
  "\nfor " "I " "am " "God. " "I " "am " "God, " "there " "is " "none " "else; " 
  "\nLook " un "to " "Me, " "and " "be " "ye " "saved.\" " 

  \set stanza = "2."
  "\n\"Look " un "to " "Me,\" " up "on " "the " "cross, "
  "\nO " wea "ry, " bur "dened " "soul; "
  "\n'T was " "there " "on " "Me " "thy " "sins " "were " "laid.— "
  "\nBe" "lieve, " "and " "be " "made " "whole! "
  "\n\"Look " un "to " "Me, "  "and " "be " "ye " "saved, "
  "\nall " "ye " "ends, " "all " "ye " "ends " "of " "the " "earth; "
  "\nfor " "I " "am " "God. " "I " "am " "God, " "there " "is " "none " "else; " 
  "\nLook " un "to " "Me, " "and " "be " "ye " "saved.\" " 

  \set stanza = "3."
  "\n\"Look " un "to " "Me,\" " "thy " ris "en " "Lord, "
  "\nIn " "dark " temp ta "tion's " "hour; "
  "\nThe " need "ful " "grace " "I'll " free "ly " "give, "
  "\nTo " "keep " "from " Sa "tan's " "power. "
  "\n\"Look " un "to " "Me, "  "and " "be " "ye " "saved, "
  "\nall " "ye " "ends, " "all " "ye " "ends " "of " "the " "earth; "
  "\nfor " "I " "am " "God. " "I " "am " "God, " "there " "is " "none " "else; " 
  "\nLook " un "to " "Me, " "and " "be " "ye " "saved.\" " 

  \set stanza = "4."
  "\n\"Look " un "to " "Me,\" " "and " "not " "\markup\italic " with "\markup\italic " "in, "
  "\nNo " "help " "is " "\markup\italic " "there " "for " "thee; "
  "\nFor " par "don, " "peace, " "and " "all " "thy " "need. "
  "\nLook " on "ly " un "to " "\markup\smallCaps " "Me! "
  "\n\"Look " un "to " "Me, "  "and " "be " "ye " "saved, "
  "\nall " "ye " "ends, " "all " "ye " "ends " "of " "the " "earth; "
  "\nfor " "I " "am " "God. " "I " "am " "God, " "there " "is " "none " "else; " 
  "\nLook " un "to " "Me, " "and " "be " "ye " "saved.\" " 
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
  \bookOutputSuffix "midi-alto"
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
            \addlyrics \wordsMidiAlto
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
  \bookOutputSuffix "midi-tenor"
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
            \addlyrics \wordsMidiTenor
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
            \new NullVoice = "alignerS" \soprano
            \new NullVoice = "alignerA" \alto
            \new NullVoice = "alignerT" \tenor
            \new Voice \partCombine { \global \soprano \bar "|." } { \global \alto }
            \new Lyrics \lyricsto "alignerS" { \wordsOne \chorus }
            \new Lyrics \lyricsto "alignerS"   \wordsTwo
            \new Lyrics \lyricsto "alignerS"   \wordsThree
            \new Lyrics \lyricsto "alignerS"   \wordsFour
            \new Lyrics \lyricsto "alignerT" \chorusMen
            \new Lyrics \with {alignAboveContext = women} \lyricsto "alignerS" \chorusSopAbove
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
          \new Staff = women \with { printPartCombineTexts = ##f }
          <<
            \new Voice { \repeat unfold \verses \RehearsalTrack }
            \new Voice { \repeat unfold \verses \TempoTrack }
            \new NullVoice = "alignerS" { \repeat unfold \verses \soprano }
            \new NullVoice = "alignerA" { \repeat unfold \verses \alto    }
            \new NullVoice = "alignerT" { \repeat unfold \verses \tenor   }
            \new Voice \partCombine { \global \repeat unfold \verses \soprano \bar "|." }
                                               { \global \repeat unfold \verses { \alto \nl } \bar "|." }
            \new Lyrics \lyricsto "alignerS" { \wordsOne   \chorus
                                               \wordsTwo   \chorus
                                               \wordsThree \chorus
                                               \wordsFour  \chorus
                                             }
            \new Lyrics \lyricsto "alignerT" { \repeat unfold \verses \chorusMen }
            \new Lyrics \with {alignAboveContext = women} \lyricsto "alignerS" { \repeat unfold \verses \chorusSopAbove }
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
          \new Staff = women \with { printPartCombineTexts = ##f }
          <<
            \new Voice { \repeat unfold \verses \RehearsalTrack }
            \new Voice { \repeat unfold \verses \TempoTrack }
            \new NullVoice = "alignerS" { \repeat unfold \verses \soprano }
            \new NullVoice = "alignerA" { \repeat unfold \verses \alto    }
            \new NullVoice = "alignerT" { \repeat unfold \verses \tenor   }
            \new Voice \partCombine { \global \repeat unfold \verses \soprano \bar "|." }
                                               { \global \repeat unfold \verses { \alto \nl } \bar "|." }
            \new Lyrics \lyricsto "alignerS" { \wordsOne   \chorus
                                               \wordsTwo   \chorus
                                               \wordsThree \chorus
                                               \wordsFour  \chorus
                                             }
            \new Lyrics \lyricsto "alignerT" {\repeat unfold \verses \chorusMen }
            \new Lyrics \with {alignAboveContext = women} \lyricsto "alignerS" {\repeat unfold \verses \chorusSopAbove }
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
  \bookOutputSuffix "midi"
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
            \addlyrics \wordsMidiAlto
          >>
                                % Tenor staff
          \new Staff = tenor
          <<
            \clef "treble_8"
            \new Voice { \global \repeat unfold \verses \tenor }
            \addlyrics \wordsMidiTenor
          >>
                                % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Voice { \global \repeat unfold \verses \bass }
            \addlyrics \wordsMidiBass
          >>
        >>
    \layout { }
%    \midi {}
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
            \new NullVoice = "alignerS" \soprano
            \new NullVoice = "alignerA" \alto
            \new NullVoice = "alignerT" \tenor
            \new Voice \partCombine { \global \soprano \bar "|." } { \global \alto }
            \new Lyrics \lyricsto "alignerS" { \wordsOne \chorus }
            \new Lyrics \lyricsto "alignerS"   \wordsTwo
            \new Lyrics \lyricsto "alignerS"   \wordsThree
            \new Lyrics \lyricsto "alignerS"   \wordsFour
            \new Lyrics \lyricsto "alignerT" \chorusMen
            \new Lyrics \with {alignAboveContext = women} \lyricsto "alignerS" \chorusSopAbove
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
          \new Staff = women \with { printPartCombineTexts = ##f }
          <<
            \new Voice { \repeat unfold \verses \RehearsalTrack }
            \new Voice { \repeat unfold \verses \TempoTrack }
            \new NullVoice = "alignerS" { \repeat unfold \verses \soprano }
            \new NullVoice = "alignerA" { \repeat unfold \verses \alto    }
            \new NullVoice = "alignerT" { \repeat unfold \verses \tenor   }
            \new Voice \partCombine { \global \repeat unfold \verses \soprano \bar "|." }
                                               { \global \repeat unfold \verses { \alto \nl } \bar "|." }
            \new Lyrics \lyricsto "alignerS" { \wordsOne   \chorus
                                               \wordsTwo   \chorus
                                               \wordsThree \chorus
                                               \wordsFour  \chorus
                                             }
            \new Lyrics \lyricsto "alignerT" { \repeat unfold \verses \chorusMen }
            \new Lyrics \with {alignAboveContext = women} \lyricsto "alignerS" { \repeat unfold \verses \chorusSopAbove }
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
          \new Staff = women \with { printPartCombineTexts = ##f }
          <<
            \new Voice { \repeat unfold \verses \RehearsalTrack }
            \new Voice { \repeat unfold \verses \TempoTrack }
            \new NullVoice = "alignerS" { \repeat unfold \verses \soprano }
            \new NullVoice = "alignerA" { \repeat unfold \verses \alto    }
            \new NullVoice = "alignerT" { \repeat unfold \verses \tenor   }
            \new Voice \partCombine { \global \repeat unfold \verses \soprano \bar "|." }
                                               { \global \repeat unfold \verses { \alto \nl } \bar "|." }
            \new Lyrics \lyricsto "alignerS" { \wordsOne   \chorus
                                               \wordsTwo   \chorus
                                               \wordsThree \chorus
                                               \wordsFour  \chorus
                                             }
            \new Lyrics \lyricsto "alignerT" {\repeat unfold \verses \chorusMen }
            \new Lyrics \with {alignAboveContext = women} \lyricsto "alignerS" {\repeat unfold \verses \chorusSopAbove }
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
