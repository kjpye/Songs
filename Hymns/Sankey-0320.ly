\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "The Hour of Prayer"
  subtitle    = "Sankey No. 320"
  subsubtitle = "N. H. No. 82"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "J. H. Tenney/"
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "E. A. Hoffman."
%  meter       = \markup\smallCaps "meter"
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key c \major
  \time 4/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s4 s1*2
  \mark \markup { \box "B" }    s1*2 s2
  \mark \markup { \box "C" } s2 s1   s2.
  \mark \markup { \box "D" } s4 s1*2 s2.
  \mark \markup { \box "E" } s4 s1   s2.
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  e'8 8
  e8 8 8 f g4 8 8
  g4 fis8 a g4 8 8
  g8 f f e f4 d8 8 % B
  d8[e] f a g4\fermata e8 8
  e8 8 8 f \bar "|" \break g4 8 8
  g4 fis8 a g4 8 8 % C
  g8 e' d c b a \bar "|" \break f a
  g4 c8 b c4\fermata \bar "||" e,8^\markup\smallCaps Chorus. 8 % D
  e4 f g\fermata 8 8
  a4 c8[a] g4 \bar "|" \break e8 f
  g8 e' d c b a f a % E
  g4 c8 b c4\fermata
}

alto = \relative {
  \autoBeamOff
  c'8 8
  c8 8 8 d e4 8 8
  e4 dis8 8 e4 8 8
  e8 d d cis d4 b8 8 % B
  b8[c] d f e4\fermata c8 8
  c8 8 8 d e4 8 8
  e4 dis8 8 e4 8 8 % C
  e8 g g g g f c f
  e4 f8 8 e4\fermata c8 8 % D
  c4 d e\fermata 8 8
  f4 4 e c8 d
  e8 g g g g f c f % E
  e4 f8 8 e4\fermata
  
}

tenor = \relative {
  \autoBeamOff
  g8 8
  g8 8 8 8 c4 8 8
  c4 a8 fis g4 8 8
  g8 8 8 8 4 8 8 % B
  g4 b8 8 c4\fermata g8 8
  g8 8 8 8 c4 8 8
  c4 a8 fis g4 c8 8 % C
  c8 g c c c c a c
  c4 d8 g, g4 8 8 % D
  g4 4 c\fermata 8 8
  c4 a8[c] 4 g8 8
  c8 g c c c c a c % E
  c4 d8 g,8 4\fermata
}

bass = \relative {
  \autoBeamOff
  c8 8
  c8 8 8 8 4 8 8
  c4 8 8 4 8 8
  g8 8 8 8 4 8 8 % B
  g4 8 8 c4\fermata 8 8
  c8 8 8 8 4 8 8
  c4 8 8 4 8 8 % C
  c8 8 e e f f f f
  g4 8 8 c,4\fermata 8 8 % D
  c4 4 4\fermata 8 8
  f4 4 c4 8 8
  c8 8 e e f f f f % E
  g4 8 8 c,4\fermata
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  Pre -- cious hour of prayer!
  hal -- lowed hour of prayer!
  Sac -- red sea -- son of com -- mu -- nion,
  It is sweet to be there!
}

verses = 3

wordsOne = \lyricmode {
  \set stanza = "1."
  'Tis the hal -- lowed hour of prayer,
  And we trust -- ing -- ly bring
  All our doubt -- ings and our fears,
  To our Sa -- viour and King;
  For we know that He de -- lights
  A glad wel -- come to give,
  And the bless -- ings that we ask for
  We shall ful -- ly re -- ceive.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  'Tis the pre -- cious hour of prayer,
  And we hum -- nly en -- treat:
  Fa -- ther, breathe the spi -- rit now,
  As we bow at Thy feet;
  Touch our lips with power of somg;
  Fill our souls with Thy love,
  And be -- stow the be -- ne -- dic -- tion
  Of Thy peace from a -- bove.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  'Tis the sa -- cred hour of prayer,
  Calm as hea -- ven a -- bove;
  Soul to soul is breath -- ing here
  The com -- mu -- nion of love;
  Ev -- 'ry heart is sweet -- ly filled
  With a peace most pro -- found;
  Oh, te place is like to hea -- ven
  Where such true joys a -- bound.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "'Tis " "the " hal "lowed " "hour " "of " "prayer, "
  "\nAnd " "we " trust ing "ly " "bring "
  "\nAll " "our " doubt "ings " "and " "our " "fears, "
  "\nTo " "our " Sa "viour " "and " "King; "
  "\nFor " "we " "know " "that " "He " de "lights "
  "\nA " "glad " wel "come " "to " "give, "
  "\nAnd " "the " bless "ings " "that " "we " "ask " "for "
  "\nWe " "shall " ful "ly " re "ceive. "
  "\nPre" "cious " "hour " "of " "prayer! "
  "\nhal" "lowed " "hour " "of " "prayer! "
  "\nSac" "red " sea "son " "of " com mu "nion, "
  "\nIt " "is " "sweet " "to " "be " "there! "

  \set stanza = "2."
  "\n'Tis " "the " pre "cious " "hour " "of " "prayer, "
  "\nAnd " "we " hum "nly " en "treat: "
  "\nFa" "ther, " "breathe " "the " spi "rit " "now, "
  "\nAs " "we " "bow " "at " "Thy " "feet; "
  "\nTouch " "our " "lips " "with " "power " "of " "somg; "
  "\nFill " "our " "souls " "with " "Thy " "love, "
  "\nAnd " be "stow " "the " be ne dic "tion "
  "\nOf " "Thy " "peace " "from " a "bove. "
  "\nPre" "cious " "hour " "of " "prayer! "
  "\nhal" "lowed " "hour " "of " "prayer! "
  "\nSac" "red " sea "son " "of " com mu "nion, "
  "\nIt " "is " "sweet " "to " "be " "there! "

  \set stanza = "3."
  "\n'Tis " "the " sa "cred " "hour " "of " "prayer, "
  "\nCalm " "as " hea "ven " a "bove; "
  "\nSoul " "to " "soul " "is " breath "ing " "here "
  "\nThe " com mu "nion " "of " "love; "
  "\nEv" "'ry " "heart " "is " sweet "ly " "filled "
  "\nWith " "a " "peace " "most " pro "found; "
  "\nOh, " "te " "place " "is " "like " "to " hea "ven "
  "\nWhere " "such " "true " "joys " a "bound. "
  "\nPre" "cious " "hour " "of " "prayer! "
  "\nhal" "lowed " "hour " "of " "prayer! "
  "\nSac" "red " sea "son " "of " com mu "nion, "
  "\nIt " "is " "sweet " "to " "be " "there! "
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
