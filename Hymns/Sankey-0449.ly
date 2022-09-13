\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Tenderly Pleading."
  subtitle    = "Sankey No. 449"
  subsubtitle = "N. H. No. 88"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Ira D. Sankey."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Fanny J. Crosby."
%  meter       = \markup\smallCaps "meter"
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key g \major
  \time 9/8
  \partial 4.
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s4.*9
  \mark \markup { \box "B" } s4.*9
  \mark \markup { \box "C" } s4.*9
  \mark \markup { \box "D" } s4.*10
  \mark \markup { \box "E" } s4.*11
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  d'8 g a
  b4. g a8 g e
  e4. d4. 8 g a
  b4. g4 b8 \bar "|" \break d8 8 e
  d4.~4. e8 d b % B
  a4. g a8 g e
  e4. d \bar "|" \break d8 g b
  d4. b4 g8 a g fis % C
  g4.~4. \bar "||" d'8^\markup\smallCaps Chorus. b e
  d4. b \bar "|" \break b8 g c
  b4. g a8 8 8 % D
  g4. a b8 d b
  a4.~4. b8 d e
  d4. b4. 8 g c % E
  b4. g a8 g e
  d4. b' a8 g fis
  g4.~4.
}

alto = \relative {
  \autoBeamOff
  d'8 8 8
  g4. d e8 8 c
  c4. b4. 8 d d
  d4. 4 8 fis8 8 8
  g4.~4. 8 8 d % B
  c4. b e8 8 c
  c4. b4. 8 d g
  g4. 4 8 fis g d % C
  d4.~4. g8 8 8
  g4. 4. 8 8 8
  g4. d fis8 8 8 % D
  e4. fis g8 8 8
  fis4.~4. g8 8 8
  g4. 4. 8 8 8 % E
  g4. d e8 8 c
  b4. d fis8 g d
  d4.~4.
}

tenor = \relative {
  \autoBeamOff
  b8 8 c
  d4. b c8 8 g
  g4. 4. 8 8 fis
  g4. b4 g8 a8 8 c
  b4.~4. 8 8 g % B
  fis4. g c8 8 g
  g4. 4. 8 b d
  b4. d4 8 c b a % C
  b4.~4. 8 d c
  b4. d4. 8 b e
  d4. b d8 8 c % D
  b4. d d8 b d
  d4.~4. 8 b c
  b4. d4. 8 b e % E
  d4. b c8 8 g
  g4. 4. c8 b a
  b4.~4.
}

bass = \relative {
  \autoBeamOff
  g8 8 8
  g4. 4. c,8 8 8
  c4. g4. 8 b d
  g4. 4 8 d8 8 8
  g4.~4. 8 8 8 % B
  d4. e c8 8 8
  g4. 4. g'8 8 8
  g4. 4 b,8 d d d % C
  g4.~4. 8 8 8
  g4. 4. 8 8 8
  g4. 4. d8 8 8 % D
  e4. d g8 8 8
  d4.~4. g8 8 8
  g4. 4. 8 8 8 % E
  g4. 4. c,8 8 8
  d4. 4. 8 8 8
  g,4.~4.
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  Ten -- der -- ly call -- ing, pa -- tient -- ly plead -- ing,
  Hear the Good Shep -- herd call -- ing to thee;
  Ten -- der -- ly plead -- ing, pa -- tient -- ly call -- ing,
  Lov -- ing -- ly say -- ing, "\"Come" un -- to -- "Me!\""
}

chorusMen = \lyricmode {
}

verses = 4

wordsOne = \lyricmode {
  \set stanza = "1."
  Turn thee, O lost one, care -- worn and wea -- ry.
  Lo! the Good Shep -- herd is plead -- ing to -- day;
  Seek -- ing to save thee, wait -- ing to cleanse thee:
  Haste to re -- ceive Him— no lon -- ger de -- lay!
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Still He is wait -- ing: why wilt thou per -- ish?
  Tho' thou hast wan -- dered so far from the fold—
  Yet with His life -- blood He has re -- deemed thee,
  Won -- drous com -- pas -- sion that can -- not be told!
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  List to His mes -- sage, think of His mer -- cy!
  Sin -- less, yet bear -- ing thy sons on the tree;
  Per -- fect re -- mis -- sion, life ev -- er -- last -- ing.
  Thro' His a -- tone -- ment He of -- fers to thee.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Come in the old way, come in the true way,
  En -- ter thro' Je -- sus, for He is the door;
  He is the Shep -- herd, ten -- der -- ly call -- ing.
  Come in thy weak -- ness and wan -- der no more.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Turn " "thee, " "O " "lost " "one, " care "worn " "and " wea "ry. "
  "\nLo! " "the " "Good " Shep "herd " "is " plead "ing " to "day; "
  "\nSeek" "ing " "to " "save " "thee, " wait "ing " "to " "cleanse " "thee: "
  "\nHaste " "to " re "ceive " "Him— " "no " lon "ger " de "lay! "
  "\nTen" der "ly " call "ing, " pa tient "ly " plead "ing, "
  "\nHear " "the " "Good " Shep "herd " call "ing " "to " "thee; "
  "\nTen" der "ly " plead "ing, " pa tient "ly " call "ing, "
  "\nLov" ing "ly " say "ing, " "\"Come " un to "Me!\"\n"

  \set stanza = "2."
  "\nStill " "He " "is " wait "ing: " "why " "wilt " "thou " per "ish? "
  "\nTho' " "thou " "hast " wan "dered " "so " "far " "from " "the " "fold— "
  "\nYet " "with " "His " life "blood " "He " "has " re "deemed " "thee, "
  "\nWon" "drous " com pas "sion " "that " can "not " "be " "told! "
  "\nTen" der "ly " call "ing, " pa tient "ly " plead "ing, "
  "\nHear " "the " "Good " Shep "herd " call "ing " "to " "thee; "
  "\nTen" der "ly " plead "ing, " pa tient "ly " call "ing, "
  "\nLov" ing "ly " say "ing, " "\"Come " un to "Me!\"\n"

  \set stanza = "3."
  "\nList " "to " "His " mes "sage, " "think " "of " "His " mer "cy! "
  "\nSin" "less, " "yet " bear "ing " "thy " "sons " "on " "the " "tree; "
  "\nPer" "fect " re mis "sion, " "life " ev er last "ing. "
  "\nThro' " "His " a tone "ment " "He " of "fers " "to " "thee. "
  "\nTen" der "ly " call "ing, " pa tient "ly " plead "ing, "
  "\nHear " "the " "Good " Shep "herd " call "ing " "to " "thee; "
  "\nTen" der "ly " plead "ing, " pa tient "ly " call "ing, "
  "\nLov" ing "ly " say "ing, " "\"Come " un to "Me!\"\n"

  \set stanza = "4."
  "\nCome " "in " "the " "old " "way, " "come " "in " "the " "true " "way, "
  "\nEn" "ter " "thro' " Je "sus, " "for " "He " "is " "the " "door; "
  "\nHe " "is " "the " Shep "herd, " ten der "ly " call "ing. "
  "\nCome " "in " "thy " weak "ness " "and " wan "der " "no " "more. "
  "\nTen" der "ly " call "ing, " pa tient "ly " plead "ing, "
  "\nHear " "the " "Good " Shep "herd " call "ing " "to " "thee; "
  "\nTen" der "ly " plead "ing, " pa tient "ly " call "ing, "
  "\nLov" ing "ly " say "ing, " "\"Come " un to "Me!\"\n"
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
            \new Lyrics \lyricsto "aligner"   \wordsFour
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
