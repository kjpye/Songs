\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Come to Jesus! come away!"
  subtitle    = "Sankey No. 408"
  subsubtitle = "Sankey 880 No. 478"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

%  composer    = \markup\smallCaps "composer"
%  arranger    = "arranger"
%  opus        = "opus"

%  poet        = \markup\smallCaps "poet"
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
  \time 4/4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" }    s1*7 s2.
  \mark \markup { \box "B" } s4 s1*8
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  b'2. a4
  g2 fis
  e2 g
  d2. g4
  fis2 g
  c2 b
  b2 a
  d,2. \bar "|" \break c4
  b2 d % B
  g2 b
  d2. g,4
  e'1
  r2 e,
  d2 g
  b2. a4
  g1
}

alto = \relative {
  \autoBeamOff
  g'2. fis4
  g2 d
  e2 c
  b2. d4
  d2 2
  d2 2
  cis2 2
  d2. a4
  b2 a % B
  d2 2
  f2. 4
  e1
  r2 c
  b2 d
  fis2. 4
  g1
}

tenor = \relative {
  \autoBeamOff
  d'2. c4
  b2 g
  g2 2
  g2. d'4
  c2 b
  a2 g
  g2 2
  fis2. 4
  g2 fis % B
  g2 2
  b2. 4
  c1
  r2 g
  g2 b
  d2. c4
  b1
}

bass = \relative {
  \autoBeamOff
  g2. 4
  g2 b,
  c2 e
  g2. b4
  a2 g
  fis2 g
  e2 a,
  d2. 4
  g,2 c % B
  b2 g'
  g2. 4
  c,1
  r2 c
  d2 2
  d2. 4
  g1
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
}

chorusMen = \lyricmode {
}

verses = 5

wordsOne = \lyricmode {
  \set stanza = "1."
  Come to Je -- sus! come a -- way!
  For -- sake thy sins— oh, why de -- lay?
  His arms, are o -- pen night and day;
  He waits to wel -- come thee!
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Come to Je -- sus! all is free;
  Hark how He calls, "\"Come" un -- to Me!
  I cast out none; I'll par -- don "thee.\""
  Oh, thou shalt wel -- come be!
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Come to Je -- sus! cling to Him;
  He'll keep thee far from paths of sin;
  Thou shalt at last the vic -- t'ry win,
  And He will wel -- come thee!
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Come to Je -- sus! do not stand;
  The Fa -- ther draws— 'tis His com -- mand;
  And none shall pluck thee from His hand:
  No— that can ne -- ver be!
}
  
wordsFive = \lyricmode {
  \set stanza = "5."
  Come to Je -- sus!— Lord I come!
  Wea -- ry of sin, no more I'd roam,
  But with my Sa -- viour be at home:
  I know He'll wel -- come me!
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Come " "to " Je "sus! " "come " a "way! "
  "\nFor" "sake " "thy " "sins— " "oh, " "why " de "lay? "
  "\nHis " "arms, " "are " o "pen " "night " "and " "day; "
  "\nHe " "waits " "to " wel "come " "thee! "

  \set stanza = "2."
  "\nCome " "to " Je "sus! " "all " "is " "free; "
  "\nHark " "how " "He " "calls, " "\"Come " un "to " "Me! "
  "\nI " "cast " "out " "none; " "I'll " par "don " "thee.\" "
  "\nOh, " "thou " "shalt " wel "come " "be! "

  \set stanza = "3."
  "\nCome " "to " Je "sus! " "cling " "to " "Him; "
  "\nHe'll " "keep " "thee " "far " "from " "paths " "of " "sin; "
  "\nThou " "shalt " "at " "last " "the " vic "t'ry " "win, "
  "\nAnd " "He " "will " wel "come " "thee! "

  \set stanza = "4."
  "\nCome " "to " Je "sus! " "do " "not " "stand; "
  "\nThe " Fa "ther " "draws— " "'tis " "His " com "mand; "
  "\nAnd " "none " "shall " "pluck " "thee " "from " "His " "hand: "
  "\nNo— " "that " "can " ne "ver " "be! "

  \set stanza = "5."
  "\nCome " "to " Je "sus!— " "Lord " "I " "come! "
  "\nWea" "ry " "of " "sin, " "no " "more " "I'd " "roam, "
  "\nBut " "with " "my " Sa "viour " "be " "at " "home: "
  "\nI " "know " "He'll " wel "come " "me! "
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
            \new Lyrics \lyricsto "aligner"   \wordsFive
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
                                              \wordsFour  \chorus
                                              \wordsFive  \chorus
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
                                              \wordsFour  \chorus
                                              \wordsFive  \chorus
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
