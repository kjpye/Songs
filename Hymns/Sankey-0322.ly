\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "O Lord, Thy Work Revive!"
  subtitle    = "Sankey No. 322"
  subsubtitle = "Sankey 880 No. 669"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "S. Howard."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "P. H. Brown."
  meter       = \markup\smallCaps "S. M."
  piece       = \markup\smallCaps "St. Bride."

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key c \major
  \time 2/4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s2*8
  \mark \markup { \box "B" } s2*9
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  a'2
  e4 a
  c4 b
  a2
  c
  g4
  c
  e4 d
  c2
  e2 % B
  d4 c
  b4 a
  g4 f
  e2
  e'2
  a,4 d
  c4 b
  a2
}

alto = \relative {
  \autoBeamOff
  e'2
  \once\partCombineApart e4 c
  e4 d
  c2
  g'2
  \once\partCombineApart g4 e
  g4 f
  e2
  g2 % B
  f4 e
  d4 c8[f]
  e4 d8[c]
  b2
  e2
  c4 f
  e4. d8
  c2
}

tenor = \relative {
  c'2 | b4 a | a gis |  a2 | e'2 | d4 c | c b | c2
  c2 | b4 c | gis a | c b8[a] | gis2 | gis | a4 4 | a gis | a2
}

bass = \relative {
  \autoBeamOff
  a2 | g4 f | e4 4 | a,2 | c'2 | b4 a | g4 4 | c,2
  c2 | g'4 a | e f | c d | e2 | e | f4 d | e4 4 | a,2
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
}

verses = 4

wordsOne = \lyricmode {
  \set stanza = "1."
  O lord, Thy work re -- vive,
  In Zi -- on's gloom -- y hour;
  And make her dy -- ing gra -- ces live
  By Thy re -- stor -- ing power.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  A -- wake Thy cho --sen few
  To fer -- vent earn -- est prayer;
  A -- gain may they their vows re -- new,
  Thy bless -- ed pres -- ence share.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Thy Spi -- rit then will speak
  Through lips of fee -- ble clay;
  And hearts of ad -- am -- ant will break,
  And re -- bels will o -- bey.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Lord, lend Thy gra -- cious ear;
  Oh, lis -- ten to our cry;
  O come, and bring sal -- va -- tion here:
  Our hopes on Thee re -- ly.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "O " "lord, " "Thy " "work " re "vive, "
  "\nIn " Zi "on's " gloom "y " "hour; "
  "\nAnd " "make " "her " dy "ing " gra "ces " "live "
  "\nBy " "Thy " re stor "ing " "power. "

  \set stanza = "2."
  "\nA" "wake " "Thy " cho"sen " "few "
  "\nTo " fer "vent " earn "est " "prayer; "
  "\nA" "gain " "may " "they " "their " "vows " re "new, "
  "\nThy " bless "ed " pres "ence " "share. "

  \set stanza = "3."
  "\nThy " Spi "rit " "then " "will " "speak "
  "\nThrough " "lips " "of " fee "ble " "clay; "
  "\nAnd " "hearts " "of " ad am "ant " "will " "break, "
  "\nAnd " re "bels " "will " o "bey. "

  \set stanza = "4."
  "\nLord, " "lend " "Thy " gra "cious " "ear; "
  "\nOh, " lis "ten " "to " "our " "cry; "
  "\nO " "come, " "and " "bring " sal va "tion " "here: "
  "\nOur " "hopes " "on " "Thee " re "ly. "
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
