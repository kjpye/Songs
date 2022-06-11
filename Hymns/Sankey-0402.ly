\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Believe and Obey!"
  subtitle    = "Sankey No. 402"
  subsubtitle = "C. C. No. 226"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Ira D. Sankey."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Julia Stirling"
  meter       = \markup\smallCaps "11s."
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key d \major
  \time 3/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s4 s2.*5
  \mark \markup { \box "B" }    s2.*5
  \mark \markup { \box "C" }    s2.*5 s2
  \mark \markup { \box "D" } s4 s2.*5
  \mark \markup { \box "E" }    s2.*5
  \mark \markup { \box "F" }    s2.*5 s2
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  a'4
  a4 fis b
  a4 fis d'
  cis4 b cis
  d2 a4
  b4 g b
  d4 cis b % B
  a4 4 fis
  e2 a4
  a4 fis b
  a4 fis d'
  cis4 b cis % C
  d2 a4
  b4 d b
  a4 d, g
  fis4 4 e
  fis2 \bar "||" \break a4^\markup\smallCaps Chorus
  d4 4 4 % D
  cis2 a4
  e'4 4 4
  d2 a4
  b4 d b
  a4 fis fis % E
  fis4 e d
  a'2 4
  a4 fis b
  a4 fis d'
  cis4 b cis % F
  d2 a4
  b4 d b
  a4 d, g
  fis4 4 e
  d2
}

alto = \relative {
  \autoBeamOff
  fis'4
  fis4 d g
  fis4 d fis
  g4 4 4
  fis2 4
  g4 d g
  b4 a g % B
  fis4 4 d
  cis2 g'4
  fis4 d g
  fis4 d fis
  g4 4 4 % C
  fis2 a4
  g4 4 4
  fis4 d d
  d4 4 cis
  d2 fis4
  fis4 4 d % D
  e2 a4
  g4 4 4
  fis2 a4
  g4 4 4
  fis4 d d % E
  d4 4 b
  cis2 g'4
  fis4 d g
  fis4 d fis
  g4 4 4 % F
  fis2 a4
  g4 4 4
  fis4 d d
  d4 4 cis
  d2
}

tenor = \relative {
  \autoBeamOff
  d'4
  d4 a d
  d4 a a
  a4 e' a,
  a2 d4
  d4 b d
  b4 cis d % B
  d4 4 a
  a2 c4
  d4 a d
  d4 a a
  a4 e' e % C
  d2 4
  d4 b d
  d4 a b
  a4 4 g
  fis2 d'4
  a4 4 4 % D
  a2 4
  c4 4 4
  d2 4
  d4 b d
  d4 a a % E
  gis4 4 4
  a2 4
  a4 4 d
  d4 a a
  a4 e' e % F
  d2 4
  d4 b d
  d4 a b
  a4 4 g
  fis2
}

bass = \relative {
  \autoBeamOff
  d4
  d4 4 4
  d4 4 4
  a'4 4 4
  d,2 4
  g4 4 4
  g4 4 4 % B
  d4 4 fis
  a2 a,4
  d4 4 4
  d4 4 4
  a'4 4 ais % C
  b2 fis4
  g4 4 4
  d4 fis e
  a4 4 a,
  d2 4
  d4 4 fis % D
  a2 4
  a4 4 4
  b2 fis4
  g4 4 4
  d4 4 4 % E
  b4 4 e
  a,2 cis4
  d4 4 4
  d4 4 4
  a'4 4 ais % F
  a2 fis4
  g4 4 4
  g4 fis e
  a4 4 a,
  d2
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  Be -- lieve and o -- bey, be -- lieve and o -- bey!
  The Mas -- ter is call -- ing— no long -- er de -- lay!
  The light of His mer -- cy shines bright on the way
  Of all who con -- fess Him: be -- lieve and o -- bey!
}

chorusMen = \lyricmode {
}

verses = 3

wordsOne = \lyricmode {
  \set stanza = "1."
  Press on -- ward, press on -- ward, and, trust -- ing the Lord,
  Re -- mem -- ber the prom -- ise pro -- claimed in His Word;
  He gui -- deth the foot -- steps, fi -- rect -- eth the way,
  Of all who con -- fess Him: be -- lieve and o -- bey!
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Press on -- ward, press on -- ward, if you would se -- cure
  The rest of the faith -- ful, a -- bi -- ding and sure;
  The gift of sal -- va -- tion is of -- fered to -- day
  To all who con -- fess Him: be -- lieve and o -- bey!
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Press on -- ward, press on -- ward, your cou -- rage re -- new;
  The prize is be -- fore you, the crown is in view;
  His love is so bound -- less, He'll nev -- er say Nay
  To those who con -- fess Him: be -- lieve and o -- bey!
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Press " on "ward, " "press " on "ward, " "and, " trust "ing " "the " "Lord, "
  "\nRe" mem "ber " "the " prom "ise " pro "claimed " "in " "His " "Word; "
  "\nHe " gui "deth " "the " foot "steps, " fi rect "eth " "the " "way, "
  "\nOf " "all " "who " con "fess " "Him: " be "lieve " "and " o "bey! "
  "\nBe" "lieve " "and " o "bey, " be "lieve " "and " o "bey! "
  "\nThe " Mas "ter " "is " call "ing— " "no " long "er " de "lay! "
  "\nThe " "light " "of " "His " mer "cy " "shines " "bright " "on " "the " "way "
  "\nOf " "all " "who " con "fess " "Him: " be "lieve " "and " o "bey! "

  \set stanza = "2."
  "\nPress " on "ward, " "press " on "ward, " "if " "you " "would " se "cure "
  "\nThe " "rest " "of " "the " faith "ful, " a bi "ding " "and " "sure; "
  "\nThe " "gift " "of " sal va "tion " "is " of "fered " to "day "
  "\nTo " "all " "who " con "fess " "Him: " be "lieve " "and " o "bey! "
  "\nBe" "lieve " "and " o "bey, " be "lieve " "and " o "bey! "
  "\nThe " Mas "ter " "is " call "ing— " "no " long "er " de "lay! "
  "\nThe " "light " "of " "His " mer "cy " "shines " "bright " "on " "the " "way "
  "\nOf " "all " "who " con "fess " "Him: " be "lieve " "and " o "bey! "

  \set stanza = "3."
  "\nPress " on "ward, " "press " on "ward, " "your " cou "rage " re "new; "
  "\nThe " "prize " "is " be "fore " "you, " "the " "crown " "is " "in " "view; "
  "\nHis " "love " "is " "so " bound "less, " "He'll " nev "er " "say " "Nay "
  "\nTo " "those " "who " con "fess " "Him: " be "lieve " "and " o "bey! "
  "\nBe" "lieve " "and " o "bey, " be "lieve " "and " o "bey! "
  "\nThe " Mas "ter " "is " call "ing— " "no " long "er " de "lay! "
  "\nThe " "light " "of " "His " mer "cy " "shines " "bright " "on " "the " "way "
  "\nOf " "all " "who " con "fess " "Him: " be "lieve " "and " o "bey! "
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
