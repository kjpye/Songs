\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Sleeper Awake!"
  subtitle    = "Sankey No. 433"
  subsubtitle = "Sankey 880 No. 267"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "P. P. Bliss."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "S. Dyer."
  meter       = \markup\smallCaps "7s."
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
  b'4 d,4 e8[fis] g4
  a4 8[b] a2
  b4 d, e8[fis] g4
  a4 8[b] g2
  d'4-> b d-> b % B
  c8[b] c[b] a2
  b4 d g, c
  b4 a g2
}

alto = \relative {
  \autoBeamOff
  d'4 b c b
  d4 cis d2
  d4 b c b
  c4 8[d] b2
  g'4-> 4 4-> 4 % B
  a8[g] a[g] fis2
  g4 fis e g
  g4 fis g2
}

tenor = \relative {
  \autoBeamOff
  g4 4 4 4
  fis4 g a2
  g4 4 4 4
  fis4 4 g2
  b4 d b d % B
  d4 4 2
  d4 4 b e
  d4. c8 b2
}

bass = \relative {
  \autoBeamOff
  g4 4 4 4
  d4 e fis2
  g4 4 c, e
  d4 4 g,2
  g'4 4 4 4 % B
  d4 4 2
  g4 b, e c
  d4 4 g,2
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
}

chorusMen = \lyricmode {
}

verses = 4

wordsOne = \lyricmode {
  \set stanza = "1."
  Time is earn -- est, pass -- ing by;
  Death is earn -- est, draw -- ing nigh;
  Sin -- ner will thou tri -- fling be?
  Time and death ap -- peal to thee.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Life is earn -- est; when 'tis o'er,
  Thou re -- turn -- est nev -- er -- more;
  Soon to meet e -- ter -- ni -- ty,
  Wilt thou nev -- er se -- rious be?
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  God is earn -- est; kneel and pray
  Ere thy sea -- son pass a -- way:
  Ere be set His judg -- ment -- throne;
  Ven -- geance rea -- dy, mer -- cy gone.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Oh, be earn -- est! death is near;
  Thou wilt per -- ish lin -- g'ring here:
  Sleep no lon -- ger, rise and flee:
  Lo, thy Sa -- viour waits for thee!
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Time " "is " earn "est, " pass "ing " "by; "
  "\nDeath " "is " earn "est, " draw "ing " "nigh; "
  "\nSin" "ner " "will " "thou " tri "fling " "be? "
  "\nTime " "and " "death " ap "peal " "to " "thee.\n"

  \set stanza = "2."
  "\nLife " "is " earn "est; " "when " "'tis " "o'er, "
  "\nThou " re turn "est " nev er "more; "
  "\nSoon " "to " "meet " e ter ni "ty, "
  "\nWilt " "thou " nev "er " se "rious " "be?\n"

  \set stanza = "3."
  "\nGod " "is " earn "est; " "kneel " "and " "pray "
  "\nEre " "thy " sea "son " "pass " a "way: "
  "\nEre " "be " "set " "His " judg ment "throne; "
  "\nVen" "geance " rea "dy, " mer "cy " "gone.\n"

  \set stanza = "4."
  "\nOh, " "be " earn "est! " "death " "is " "near; "
  "\nThou " "wilt " per "ish " lin "g'ring " "here: "
  "\nSleep " "no " lon "ger, " "rise " "and " "flee: "
  "\nLo, " "thy " Sa "viour " "waits " "for " "thee!"
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
