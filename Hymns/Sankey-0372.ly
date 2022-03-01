\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "The Gate Ajar for Me."
  subtitle    = "Sankey No. 372"
  subsubtitle = "Sankey 880 No. 2"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "S. J. Vail."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Mrs. L. Baxter."
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
  \time 6/8
  \partial 8
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s8 s2.*3 s4. s4
  \mark \markup { \box "B" } s8 s2.*3 s4. s4
  \mark \markup { \box "C" } s8 s2.*3 s4. s4
  \mark \markup { \box "D" } s8 s2.*3 s4. s4
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  g'8
  g4 e8 g4 c8
  c4 a8 g4 e8
  a4 g8 e4 c8
  e4. d4 \bar "|" \break g8
  g4 e8 g4 c8 % B
  c4 a8 g4 c8
  e4 c8 e4 d8
  d4. c4 \bar "|" \break c8^\markup\smallCaps Refrain.
  d4 cis8 d4 e8 % C
  c4 a8 c4 a8
  g4 8 a4 g8
  e4 c8 d4\fermata \bar "|" \break g8
  g4.~4 8 % D
  a4.(c4\fermata) 8
  e4 c8 e4 d8
  c4.~4
}

alto = \relative {
  \autoBeamOff
  e'8
  e4 c8 e4 g8
  a4 f8 e4 c8
  f4 e8 c4 8
  c4. b4 d8
  e4 c8 e4 g8 % B
  a4 f8 e4 8
  g4 8 4 f8
  f4. e4 8
  f4 e8 f4 g8 % C
  e4 8 4 f8
  e4 8 f4 e8
  c4 8 b4\fermata e8
  e4.~4 8 % D
  f4.(a4\fermata) e8
  g4 8 4 f8
  e4.~4
}

tenor = \relative {
  \autoBeamOff
  c'8
  c4 g8 c4 8
  c4 8 4 g8
  c4 8 g4 8
  g4. 4 b8
  c4 g8 c4 8 % B
  c4 8 4 8
  c4 8 4 g8
  g4. 4 8
  g4 8 4 c8 % C
  c4 8 4 8
  c4 8 4 8
  g4 8 4\fermata r8
  r4 c8 4 r8 % D
  r4 c8 4\fermata 8
  c4 8 4 g8
  g4.~4
}

bass = \relative {
  \autoBeamOff
  c8
  c4 8 4 e8
  f4 8 c4 8
  c4 8 4 e8
  g4. 4 g,8
  c4 8 4 e8 % B
  f4 8 c4 8
  c4 e8 g4 g,8
  c4. 4 8
  g'4 8 4 8 % C
  a4 8 4 f8
  c4 8 4 8
  c4 e8 g4\fermata r8
  r4 c,8 4 r8
  r4 f8 4\fermata c8
  c4 e8 g4 g,8
  c4.~4
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  Oh, depth of mer -- cy; can it be
  That gate was left a -- jar for me?
  For me! __ for me! __
  Was left a -- jar for me! __
}

chorusMen = \lyricmode {
  _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _
  For me! for me!
  _ _ _ _ _ _
}

verses = 4

wordsOne = \lyricmode {
  \set stanza = "1."
  There is a gate that stands a -- jar,
  And through its por -- tal's gleam -- ing
  A ra -- diance from the cross a -- far,
  The Sa -- viour's love re -- veal -- ing.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  That gate a -- jar stands free for all
  Who seek thro' it sal -- va -- tion;
  The rich and poor, the great and small,
  Of ev -- 'ry tribe and na -- tion.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Press on -- ward then, tho' foes may frown,
  While mer -- cy's gate is o -- pen:
  Ac -- cept the cross, and win the crown,
  Love's ev -- er -- last -- ing to -- ken.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Be -- yond the riv -- er's brink we'll lay
  The cross that here is giv -- en,
  And bear the crown of life a -- way,
  And love Him more in hea -- ven.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "There " "is " "a " "gate " "that " "stands " a "jar, "
  "\nAnd " "through " "its " por "tal's " gleam "ing "
  "\nA " ra "diance " "from " "the " "cross " a "far, "
  "\nThe " Sa "viour's " "love " re veal "ing. "
  "\nOh, " "depth " "of " mer "cy; " "can " "it " "be "
  "\nThat " "gate " "was " "left " a "jar " "for " "me? "
  "\nFor " "me! "  "for " "me! " 
  "\nWas " "left " a "jar " "for " "me! " 

  \set stanza = "2."
  "\nThat " "gate " a "jar " "stands " "free " "for " "all "
  "\nWho " "seek " "thro' " "it " sal va "tion; "
  "\nThe " "rich " "and " "poor, " "the " "great " "and " "small, "
  "\nOf " ev "'ry " "tribe " "and " na "tion. "
  "\nOh, " "depth " "of " mer "cy; " "can " "it " "be "
  "\nThat " "gate " "was " "left " a "jar " "for " "me? "
  "\nFor " "me! "  "for " "me! " 
  "\nWas " "left " a "jar " "for " "me! " 

  \set stanza = "3."
  "\nPress " on "ward " "then, " "tho' " "foes " "may " "frown, "
  "\nWhile " mer "cy's " "gate " "is " o "pen: "
  "\nAc" "cept " "the " "cross, " "and " "win " "the " "crown, "
  "\nLove's " ev er last "ing " to "ken. "
  "\nOh, " "depth " "of " mer "cy; " "can " "it " "be "
  "\nThat " "gate " "was " "left " a "jar " "for " "me? "
  "\nFor " "me! "  "for " "me! " 
  "\nWas " "left " a "jar " "for " "me! " 

  \set stanza = "4."
  "\nBe" "yond " "the " riv "er's " "brink " "we'll " "lay "
  "\nThe " "cross " "that " "here " "is " giv "en, "
  "\nAnd " "bear " "the " "crown " "of " "life " a "way, "
  "\nAnd " "love " "Him " "more " "in " hea "ven. "
  "\nOh, " "depth " "of " mer "cy; " "can " "it " "be "
  "\nThat " "gate " "was " "left " a "jar " "for " "me? "
  "\nFor " "me! "  "for " "me! " 
  "\nWas " "left " a "jar " "for " "me! " 
}

\book {
  \bookOutputSuffix "midi-women"
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
  \bookOutputSuffix "midi-men"
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
            \addlyrics \wordsMidi
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
            \new NullVoice \tenor
            \addlyrics \chorusMen
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
            \new NullVoice {\repeat unfold \verses \tenor    }
            \addlyrics     {\repeat unfold \verses \chorusMen}
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
            \new NullVoice {\repeat unfold \verses \tenor    }
            \addlyrics     {\repeat unfold \verses \chorusMen}
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
