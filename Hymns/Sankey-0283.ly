\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "In Remembrance of Me."
  subtitle    = "Sankey No. 283"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "H. P. Danks."
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
  \time 3/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s4 s2.*4
  \mark \markup { \box "B" }    s2.*5
  \mark \markup { \box "C" }    s2.*5
  \mark \markup { \box "D" }    s2.*5
  \mark \markup { \box "E" }    s2.*6
  \mark \markup { \box "F" }    s2.*6 s2
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
  s4
  s2.*27
  \tempo 4=60 s2 \tempo 4=120 s4
  s2.*3
  s2
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  d'8 e
  fis4 e d
  a'2 g8 fis
  e4 d e
  fis2 8 8
  g4 a b % B
  b4 e, b'
  a2.~
  a2 4
  a4 fis g
  b4 a4. 8 % C
  d4 cis c
  b2 8 8
  d4 cis b
  a4 fis d
  fis4 4 e % D
  d2 \bar "||" e8^\markup\smallCaps Refrain. 8
  e4 fis g
  g4 fis e
  fis4 d g
  fis2 8 8 % E
  g4 a b
  b4 e, b'
  a2.~
  a2 4
  a4 fis g
  a4. b8 a4 % F
  fis'4 e d
  d2\fermata b4
  a4 d fis,
  a4 g e
  d2.~
  d2
}

alto = \relative {
  \autoBeamOff
  d'8 d
  d4 cis d
  d2 cis8 d
  cis4 d cis
  d2 8 8
  d4 4 4 % B
  d4 4 4
  cis4(d e
  g4 fis) e
  d4 4 e
  eis4 fis4. 8 % C
  fis4 g a
  g2 8 8
  f4 4 4
  fis4 d d
  d4 cis cis % D
  d2 cis8 8
  cis4 d e
  e4 d cis
  d4 4 4
  d2 8 8 % E
  d4 4 4
  d4 4 4
  cis4(d e
  g4 fis) e
  d4 4 e
  fis4. g8 fis4 % F
  a4 4 4
  b2\fermata g4
  fis4 4 d
  cis4 4 4
  d2 b4
  a2
}

tenor = \relative {
  \autoBeamOff
  fis8 g
  a4 g fis
  a2 8 8
  g4 fis a
  a2 8 8
  g4 fis g % B
  e4 4 4
  e4(fis g
  b4 a) g
  fis4 a a
  gis4 a4. 8 % C
  a4 4 d
  d2 8 8
  b4 cis d
  d4 a gis
  a4 4 g % D
  fis2 a8 8
  a4 4 4
  a4 4 4
  a4 fis b4
  a2 8 8 % E
  g4 fis g
  e4 4 4
  e4(fis g
  b4 a) g
  fis4 a a
  a4. d8 4 % F
  d4 cis d
  d2\fermata 4
  d4 a a
  e4 4 g
  fis2 g4
  fis2
}

bass = \relative {
  \autoBeamOff
  d8 8
  d4 4 4
  fis2 e8 d
  a4 4 4
  d2 c8 8
  b4 a g % B
  gis4 4 4
  a2.~
  a2 4
  d4 4 4
  d4 4. 8 % C
  d4 e fis
  g2 8 8
  gis4 4 4
  a4 4 b,
  a4 4 4 % D
  d2 a8 8
  a4 4 4
  a4 4 4
  d4 4 4
  d2
  c8 8 % E
  b4 a g
  gis4 4 4
  a2.~
  a2 4
  d4 4 4
  d4. 8 4 % F
  d4 e fis
  g2\fermata 4
  a4 4 4
  a,4 4 4
  d2.~
  d2
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  In ac -- cord -- ance to day with Thy bless -- ed com -- mand,
  We com -- mune at Thy ta -- ble with Thee. __
  Re -- call -- ing the words that to us Thou hast said,
  "\"Do" this in re -- mem -- brance of Me, of "Me.\""
}

verses = 3

wordsOne = \lyricmode {
  \set stanza = "1."
  We a -- dore Thee, O Lord, for the won -- der -- ful grace
  That has kept and pre -- served us till now; __
  We hal -- low Thy good -- ness, Thy in -- fi -- nite love,
  While our hearts in Thy pres -- ence, Thy pres -- ence we bow.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Though un -- wor -- thy to eat of Thy life- giv -- ing bread,
  Or to gath -- er the crumbs as rhey fall; __
  We come thro' Thy mer -- it and take of the feast,
  In Thy mer -- cy pro -- vi -- ded, pro -- vi -- ded for all.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  May our strength be re -- newed and our souls be im -- pressed
  With the scenes that by faith we be -- hold. __
  And show forth the death of the Lord till He come,
  And we rest in Thy glo -- ry, Thy glo -- ry un -- told.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "We " a "dore " "Thee, " "O " "Lord, " "for " "the " won der "ful " "grace "
  "\nThat " "has " "kept " "and " pre "served " "us " "till " "now; " 
  "\nWe " hal "low " "Thy " good "ness, " "Thy " in fi "nite " "love, "
  "\nWhile " "our " "hearts " "in " "Thy " pres "ence, " "Thy " pres "ence " "we " "bow. "
  "\nIn " ac cord "ance " "to " "day " "with " "Thy " bless "ed " com "mand, "
  "\nWe " com "mune " "at " "Thy " ta "ble " "with " "Thee. " 
  "\nRe" call "ing " "the " "words " "that " "to " "us " "Thou " "hast " "said, "
  "\n\"Do " "this " "in " re mem "brance " "of " "Me, " "of " "Me.\" "

  \set stanza = "2."
  "\nThough " un wor "thy " "to " "eat " "of " "Thy " life giv "ing " "bread, "
  "\nOr " "to " gath "er " "the " "crumbs " "as " "rhey " "fall; " 
  "\nWe " "come " "thro' " "Thy " mer "it " "and " "take " "of " "the " "feast, "
  "\nIn " "Thy " mer "cy " pro vi "ded, " pro vi "ded " "for " "all. "
  "\nIn " ac cord "ance " "to " "day " "with " "Thy " bless "ed " com "mand, "
  "\nWe " com "mune " "at " "Thy " ta "ble " "with " "Thee. " 
  "\nRe" call "ing " "the " "words " "that " "to " "us " "Thou " "hast " "said, "
  "\n\"Do " "this " "in " re mem "brance " "of " "Me, " "of " "Me.\" "

  \set stanza = "3."
  "\nMay " "our " "strength " "be " re "newed " "and " "our " "souls " "be " im "pressed "
  "\nWith " "the " "scenes " "that " "by " "faith " "we " be "hold. " 
  "\nAnd " "show " "forth " "the " "death " "of " "the " "Lord " "till " "He " "come, "
  "\nAnd " "we " "rest " "in " "Thy " glo "ry, " "Thy " glo "ry " un "told. "
  "\nIn " ac cord "ance " "to " "day " "with " "Thy " bless "ed " com "mand, "
  "\nWe " com "mune " "at " "Thy " ta "ble " "with " "Thee. " 
  "\nRe" call "ing " "the " "words " "that " "to " "us " "Thou " "hast " "said, "
  "\n\"Do " "this " "in " re mem "brance " "of " "Me, " "of " "Me.\" "
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
  \bookOutputSuffix "repeat"
  \score {
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \new Voice \RehearsalTrack
            \new Voice \TempoTrack
            \new NullVoice = "aligner" \alto
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
            \new NullVoice = "aligner" { \repeat unfold \verses \alto }
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
    paper-height = 2000\mm
    ragged-bottom = true
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
            \new NullVoice = "aligner" { \repeat unfold \verses \alto }
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
