\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Sweet the Moments."
  subtitle    = "Sankey No. 316"
  subsubtitle = "C. C. No. 209"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup "Sicilian Melody."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup {\smallCaps "J. Allen" and \smallCaps "W. Shirley."}
  meter       = \markup\smallCaps "8.7.8.7."
  piece       = \markup\smallCaps "Mariners."

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

#(set-global-staff-size 19)

global = {
  \key e \major
  \time 4/4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s1*4
  \mark \markup { \box "B" } s1*4
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  b'4 cis b8.[a16] gis8[a]
  b4 cis b8.[a16] gis4
  b4 4 cis dis8[e]
  dis4 cis b2
  fis8.[gis16] fis8[gis] a4 4 % B
  gis8.[a16] gis8[a] b4 4
  e8[dis] cis[b] e[cis] b[a]
  gis4 fis e2
}

alto = \relative {
  \autoBeamOff
  gis'4 a gis8.[fis16] e8[fis]
  gis4 a gis8.[fis16] e4
  e4 fis fis fis8[gis]
  fis4 8[e] dis2
  dis8.[e16] dis8[e] fis4 4 % B
  e8.[fis16] e8[fis] gis4 4
  gis8[b] a[gis] gis[a] gis[fis]
  e4 dis e2
}

tenor = \relative {
  \autoBeamOff
  e4 4 4 4
  e4 4 4 4
  gis4 b ais b
  b4 ais b2
  b4 4 4 4 % B
  b4 4 4 4
  b4 e e cis
  b4 8[a] gis2
}

bass = \relative {
  \autoBeamOff
  \partCombineApart
  e4 4 4 4
  e4 4 4 4 \partCombineAutomatic
  e4 dis cis b8[e]
  fis4 4 b,2
  b4 4 4 4 % B
  e4 4 4 4
  e4 4 4 a,
  b4 4 e2
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
}

verses = 4

wordsOne = \lyricmode {
  \set stanza = "1."
  Sweet the mo -- ments, rich in bless -- ing,
  Which be -- fore the cross we spend;
  Life, and health, and peace pos -- ses -- sing,
  From the sin -- ner's dy -- ing Friend.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Tru -- ly bless -- ed is this sta -- tion,
  Low be -- fore His cross to lie,
  While we see Di -- vine com -- pas -- sion
  Beam -- ing in His gra -- cious eye.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Love and grief our hearts di -- vi -- ding,
  With our tears His feet we bathe,
  Con -- stant still in faith a -- bid -- ing,
  Life de -- riv -- ing from His death.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  For Thy sor -- rows we a -- dore Thee,
  For the pains that wrought our peace,
  Gra -- cious Sa -- viour, we im -- plore Thee
  In our souls Thy love in -- crease.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Sweet " "the " mo "ments, " "rich " "in " bless "ing, "
  "\nWhich " be "fore " "the " "cross " "we " "spend; "
  "\nLife, " "and " "health, " "and " "peace " pos ses "sing, "
  "\nFrom " "the " sin "ner's " dy "ing " "Friend. "

  \set stanza = "2."
  "\nTru" "ly " bless "ed " "is " "this " sta "tion, "
  "\nLow " be "fore " "His " "cross " "to " "lie, "
  "\nWhile " "we " "see " Di "vine " com pas "sion "
  "\nBeam" "ing " "in " "His " gra "cious " "eye. "

  \set stanza = "3."
  "\nLove " "and " "grief " "our " "hearts " di vi "ding, "
  "\nWith " "our " "tears " "His " "feet " "we " "bathe, "
  "\nCon" "stant " "still " "in " "faith " a bid "ing, "
  "\nLife " de riv "ing " "from " "His " "death. "

  \set stanza = "4."
  "\nFor " "Thy " sor "rows " "we " a "dore " "Thee, "
  "\nFor " "the " "pains " "that " "wrought " "our " "peace, "
  "\nGra" "cious " Sa "viour, " "we " im "plore " "Thee "
  "\nIn " "our " "souls " "Thy " "love " in "crease. "
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
            \new Lyrics \lyricsto "aligner"   \wordsFour
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
                                              \wordsFour  \chorus
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
                                              \wordsFour  \chorus
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
