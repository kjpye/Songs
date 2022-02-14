\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Why do you Wait?"
  subtitle    = "Sankey No. 351"
  subsubtitle = "Sankey 880 No. 297"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Geo. F. Root."
%  arranger    = "arranger"
%  opus        = "opus"

%  poet        = \markup\smallCaps ""
%  meter       = \markup\smallCaps "meter"
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key a \major
  \time 6/8
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" }     s2.*2 s4.
  \mark \markup { \box "B" } s4. s2.*2
  \mark \markup { \box "C" }     s2.*3
  \mark \markup { \box "D" }     s2.*4
  \mark \markup { \box "E" }     s2.*4
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  e'8 8 8 fis4 e8
  e8 a4~4 8
  b8 8 8 \bar "|" \break a a b
  cis4.~4 e,8 % B
  e8 8 8 gis fis e \break
  e8 a4~4 b8 % C
  cis8 d cis b fis gis
  a4.~4 r8 \break
  cis4.^\markup\smallCaps Chorus. a4 r8 % D
  a4. fis4 r8
  e4 8 gis fis e
  e4.(a)
  cis4. a4 r8 % E
  a4. fis4 r8
  e4 8 gis fis e
  a4.~4 r8
}

alto = \relative {
  \autoBeamOff
  cis'8 8 8 d4 cis8
  cis8 4~4 8
  e8 8 8 8 8 8
  e4.~4 cis8 % B
  cis8 8 8 d d d
  cis8 4~4 d8 % C
  e8 fis e d d d
  cis4.~4 r8
  e4. cis4 r8 % D
  fis4. d4 r8
  d4 8 8 8 8
  cis2.
  e4. cis4 r8 % E
  fis4. d4 r8
  d4 8 8 8 8
  cis4.~4 r8
}

tenor = \relative {
  \autoBeamOff
  a8 8 8 4 8
  a8 4~4 8
  gis8 8 8 fis fis gis
  a4.~4 8 % B
  a8 8 8 b a gis
  a8 4~4 8 % C
  a8 8 8 gis b b
  a4.~4 r8
  a4. 4 r8 % D
  a4. 4 r8
  gis4 8 b b b
  a2.
  a4. 4 r8 % E
  a4. 4 r8
  gis4 8 b b b
  a4.~4 r8
}

bass = \relative {
  \autoBeamOff
  a,8 8 8 4 8
  a8 4~4 8
  e'8 8 8 8 8 8
  a,4.~4 8 % B
  a8 8 8 e' e e
  a,8 4~4 8 % C
  a'8 8 8 e e e
  a,4.~4 r8
  a4. 4 r8 % D
  d4. 4 r8
  e4 8 8 8 8
  a,2.
  a4. 4 r8 % E
  d4. 4 r8
  e4 8 8 8 8
  a,4.~4 r8
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  Why not?— Why not?— Why not come to Him now?
  Why not?— Why not?— Why not come to Him now?
}

verses = 4

wordsOne = \lyricmode {
  \set stanza = "1."
  Why do you wait, dear bro -- ther?
  Oh, why do you tar -- ry so long?
  Your Sa -- viour is wait -- ing to give you
  A place in His sanc -- ti -- fied throng.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  What do you hope, dear bro -- ther,
  To gain by a fur -- ther de -- lay?
  There's no one to save you but Je -- sus;
  There's no o --ther way but His way.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Do you not feel, dear bro -- ther,
  His Spi -- rit now striv -- ing with -- in?
  Oh, why not ac -- cept His sal -- va -- tion?
  And throw off thy bur -- den of sin.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Why do you wait, dear bro -- ther?
  The har -- vest is pass -- ing a -- way;
  You Sa -- viour is long -- ing to bless you:
  There's dan -- ger and death in de -- lay.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Why " "do " "you " "wait, " "dear " bro "ther? "
  "\nOh, " "why " "do " "you " tar "ry " "so " "long? "
  "\nYour " Sa "viour " "is " wait "ing " "to " "give " "you "
  "\nA " "place " "in " "His " sanc ti "fied " "throng. "
  "\nWhy " "not?— " "Why " "not?— " "Why " "not " "come " "to " "Him " "now? "
  "\nWhy " "not?— " "Why " "not?— " "Why " "not " "come " "to " "Him " "now? "

  \set stanza = "2."
  "\nWhat " "do " "you " "hope, " "dear " bro "ther, "
  "\nTo " "gain " "by " "a " fur "ther " de "lay? "
  "\nThere's " "no " "one " "to " "save " "you " "but " Je "sus; "
  "\nThere's " "no " o"ther " "way " "but " "His " "way. "
  "\nWhy " "not?— " "Why " "not?— " "Why " "not " "come " "to " "Him " "now? "
  "\nWhy " "not?— " "Why " "not?— " "Why " "not " "come " "to " "Him " "now? "

  \set stanza = "3."
  "\nDo " "you " "not " "feel, " "dear " bro "ther, "
  "\nHis " Spi "rit " "now " striv "ing " with "in? "
  "\nOh, " "why " "not " ac "cept " "His " sal va "tion? "
  "\nAnd " "throw " "off " "thy " bur "den " "of " "sin. "
  "\nWhy " "not?— " "Why " "not?— " "Why " "not " "come " "to " "Him " "now? "
  "\nWhy " "not?— " "Why " "not?— " "Why " "not " "come " "to " "Him " "now? "

  \set stanza = "4."
  "\nWhy " "do " "you " "wait, " "dear " bro "ther? "
  "\nThe " har "vest " "is " pass "ing " a "way; "
  "\nYou " Sa "viour " "is " long "ing " "to " "bless " "you: "
  "\nThere's " dan "ger " "and " "death " "in " de "lay. "
  "\nWhy " "not?— " "Why " "not?— " "Why " "not " "come " "to " "Him " "now? "
  "\nWhy " "not?— " "Why " "not?— " "Why " "not " "come " "to " "Him " "now? "
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
