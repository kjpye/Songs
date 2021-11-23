\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Let us Praise and Adore."
  subtitle    = "Sankey No. 304"
  subsubtitle = "C. C. No. 154"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Ira D. Sankey."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Lyman G. Cuyler."
%  meter       = \markup\smallCaps "meter"
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key d \major
  \time 4/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s4 s1*2 s2
  \mark \markup { \box "B" } s2 s1*3
  \mark \markup { \box "C" }    s1*3
  \mark \markup { \box "D" }    s1*3
  \mark \markup { \box "E" }    s1*3 s2.
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  a'8. 16
  d4 8. 16 4 cis8. b16
  a4 d,8. e16 fis4 8. g16
  a4 8. 16 \bar "|" \break 4 g8. fis16
  e2. a8. 16 % B
  d4 8. 16 4 cis8. b16
  a4 d,8. e16 fis4 b8. 16
  a4 d,8 g fis4 8. e16 % C
  d2. \bar "||" cis8.^\markup\smallCaps Chorus. d16
  e4 8. fis16 g4 fis8. e16
  fis4 8. g16 a4 8. 16 % D
  a4 gis8. a16 b4 e8. d16
  cis2. a8. 16
  d4 8. 16 4 cis8. b16 % E
  a4 d,8. e16 fis4 b8. 16
  a4 d,8 g fis4 8. e16
  d2.
}

alto = \relative {
  \autoBeamOff
  fis'8. 16
  fis4 8. 16 4 a8. g16
  fis4 d8. cis16 d4 8. e16
  fis4 8. 16 4 e8. d16
  cis2. a'8. 16 % B
  fis4 8. 16 4 a8. g16
  fis4 d8. cis16 d4 8. 16
  d4 8 8 4 8. 16 % C
  d2. a8. b16
  cis4 8. d16 e4 d8. cis16
  d4 8. e16 fis4 8. 16 % D
  e4 8. 16 4 8. 16
  e2. a8. 16
  fis4 8. 16 4 a8. g16 % E
  fis4 d8. cis16 d4 8. 16
  d4 8 8 4 8. cis16
  d2.
}

tenor = \relative {
  \autoBeamOff
  d'8. 16
  a4 8. 16 4 b8. cis16
  d4 a8. 16 4 8. 16
  d4 8. 16 4 a8. 16
  a2. 8. 16 % B
  a4 8. 16 4 b8. cis16
  d4 a8. 16 4 g8. 16
  a4 b8 8 a4 8. g16 % C
  fis2. e8. 16
  a4 8. 16 4 8. 16
  a4 8. 16 d4 8. 16 % D
  cis4 b8. cis16 d4 b8. 16
  a2. 8. 16
  a4 8. 16 4 b8. cis16 % E
  d4 a8. 16 4 g8. 16
  a4 b8 8 a4 8. g16
  fis2.
}

bass = \relative {
  \autoBeamOff
  d8. 16
  d4 8. 16 4 8. 16
  d4 fis8. e16 d4 8. 16
  d4 8. 16 4 cis8. d16
  a'2. 8. 16 % B
  d,4 8. 16 4 8. 16
  d4 fis8. e16 d4 g8. 16
  fis4 b,8 g a4 8. 16 % C
  d2. a8. 16
  a4 8. 16 4 8. 16
  d4 8. 16 4 8. 16 % D
  e4 8. 16 e4 gis8. 16
  a2. 8. 16
  d,4 8. 16 4 8. 16 % E
  d4 fis8. e16
  d4 g8. 16
  fis4 b,8 g a4 8. 16
  d2.
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  Let us praise and a -- dore Him for all He hath done,
  Let us tell of His good -- ness and care;
  Let our fer -- vent de -- vo -- tions like in -- cense a -- rise,
  When we ga -- ther be -- fore Him in prayer.
}

verses = 3

wordsOne = \lyricmode {
  \set stanza = "1."
  Let us sing of the won -- der -- ful mer -- cy of God,
  Of His con -- stant pro -- tec -- tion and care;
  Let our fer -- vent de -- vo -- tions like in -- cense a -- rise,
  When we ga -- ther be -- fore Him in prayer.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Let us sing of the won -- der -- ful gift of His grace,
  That to us He has ten -- der -- ly shown;
  In the bless -- ed com -- mun -- ion with Je -- sus His Son,
  That has brought us so near to His throne.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Let us pray that His bless -- ing may fol -- low us still,
  That His light on opur path -- way may shine;
  And at last that our spi -- rits made per -- fect in Him
  May in -- her -- it His king -- dom Di -- vine.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Let " "us " "sing " "of " "the " won der "ful " mer "cy " "of " "God, "
  "\nOf " "His " con "stant " pro tec "tion " "and " "care; "
  "\nLet " "our " fer "vent " de vo "tions " "like " in "cense " a "rise, "
  "\nWhen " "we " ga "ther " be "fore " "Him " "in " "prayer. "
  "\nLet " "us " "praise " "and " a "dore " "Him " "for " "all " "He " "hath " "done, "
  "\nLet " "us " "tell " "of " "His " good "ness " "and " "care; "
  "\nLet " "our " fer "vent " de vo "tions " "like " in "cense " a "rise, "
  "\nWhen " "we " ga "ther " be "fore " "Him " "in " "prayer. "

  \set stanza = "2."
  "\nLet " "us " "sing " "of " "the " won der "ful " "gift " "of " "His " "grace, "
  "\nThat " "to " "us " "He " "has " ten der "ly " "shown; "
  "\nIn " "the " bless "ed " com mun "ion " "with " Je "sus " "His " "Son, "
  "\nThat " "has " "brought " "us " "so " "near " "to " "His " "throne. "
  "\nLet " "us " "praise " "and " a "dore " "Him " "for " "all " "He " "hath " "done, "
  "\nLet " "us " "tell " "of " "His " good "ness " "and " "care; "
  "\nLet " "our " fer "vent " de vo "tions " "like " in "cense " a "rise, "
  "\nWhen " "we " ga "ther " be "fore " "Him " "in " "prayer. "

  \set stanza = "3."
  "\nLet " "us " "pray " "that " "His " bless "ing " "may " fol "low " "us " "still, "
  "\nThat " "His " "light " "on " "opur " path "way " "may " "shine; "
  "\nAnd " "at " "last " "that " "our " spi "rits " "made " per "fect " "in " "Him "
  "\nMay " in her "it " "His " king "dom " Di "vine. "
  "\nLet " "us " "praise " "and " a "dore " "Him " "for " "all " "He " "hath " "done, "
  "\nLet " "us " "tell " "of " "His " good "ness " "and " "care; "
  "\nLet " "our " fer "vent " de vo "tions " "like " in "cense " a "rise, "
  "\nWhen " "we " ga "ther " be "fore " "Him " "in " "prayer. "
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
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}
