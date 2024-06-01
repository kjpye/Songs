\version "2.25.16"

\include "../kjp.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "None but Christ can Satisfy."
  subtitle    = "Sankey No. 853"
  subsubtitle = "Sankey 880 No. 328"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "James McGranahan."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "B. E."
  meter       = \markup\smallCaps "C.M."
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key f \major
  \time 4/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s4 s1*3 s2.
  \textMark \markup { \box \bold "B" } s4 s1*3 s2.
  \textMark \markup { \box \bold "C" } s4 s1*3 s2.
  \textMark \markup { \box \bold "D" } s4 s1*3 s2.
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

soprano = \relative {
  \autoBeamOff
  c'8[f] | a4 4 4 f8[a] | c4 4 4 8[a] | g4. 8 4 f8[g] | a2. \bar "|" \break
  c,8[f] | a4 4 4 f8[a] | c4 4 4 8[a] | g4. c8 c[b] a[b] | c2.
  \section \sectionLabel \markup\smallCaps Chorus. \break
  c4 | 4. 8 c[a] d[c] | c4. bes8 a4 f8[g] | a4. 8 a[c] bes[a] | g2. \bar "|" \break
  c,4 | f4. 8 a4. 8 | c8[a bes] c d4\fermata d | c8[a] bes[g] f4 e | f2.
}

alto = \relative {
  \autoBeamOff
  c'4 | f f f f | 4 4 4 a8[f] | e4. 8 4 d8[e] | f2.
  c4 | f f f f | f f f a8[f] | e4. 8 f4 4 | e(f g) \section
  g4 | f4. 8 4 4 | 4. 8 4 4 | 4. 8 f[a] g[f] | e2.
  c4 | 4. 8 f4. 8 | 4 4 4 4 | f e f c | 2.
}

tenor = \relative {
  \autoBeamOff
  a4 | c d c a8[c] | a4 bes c c | 4. 8 4 4 | 2.
  a4 c d c a8[c] | a4 bes c c | 4. 8 d4 8[g,] | g4(a bes) \section
  bes4 | a4. 8 8[c] bes[a] | 4. bes8 c4 a8[bes] | c4. 8 4 4 | 2.
  bes4 | a4. 8 c4. 8 | a8[c bes] a bes4_\fermata 4 | a8[c] g[bes] a4 bes | a2.
}

bass = \relative {
  \autoBeamOff
  f4 | f f f f | f g a f | c4. 8 4 4 | f2.
  f4 | 4 4 4 4 | f g a f | g4. 8 4 4 | c,2. \section |
  c4 | f4. 8 4 4 | 4. 8 4 4 | 4. 8 4 e8[f] | c4 bes' a |
  g4 | f4. 8 4. 8 | 4 4 bes,4 4 | c c c c | f2.
}

chorus = \lyricmode {
  Now none but Christ can sat -- is -- fy,
  None o -- ther name for me,
  There's love, and life, and last -- ing joy,
  Lord Je -- sus, found in Thee.
}

chorusMen = \lyricmode {
  \tiny
  \repeat unfold 28 \skip 1
  \repeat unfold 14 \skip 1
  for me,
  \repeat unfold 14 \skip 1
}

verses = 4

wordsOne = \lyricmode {
  \set stanza = "1."
  O Christ, in Thee my soul hath found,
  And found in Thee a -- lone,
  The peace, the joy I sought so long,
  The bliss till now un -- known.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  I sighed for rest and hap -- pi -- ness,
  I yearned for them, not Thee;
  But while I passed my Sa -- viour by,
  His love laid hold on me…
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  I tried the bro -- ken cis -- terns, Lord,
  But ah! the wa -- ters failed!
  E‘en as I stooped to drink they'd fled,
  And mock‘d me as I wailed.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  The plea -- sures lost I sad -- ly mourn‘d,
  Nut ne -- ver wept for Thee,
  Till grace the sight -- less eyes re -- ceived,
  Thy love -- li -- ness to see…
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "O " "Christ, " "in " "Thee " "my " "soul " "hath " "found, "
  "\nAnd " "found " "in " "Thee " a "lone, "
  "\nThe " "peace, " "the " "joy " "I " "sought " "so " "long, "
  "\nThe " "bliss " "till " "now " un "known. "
  "\nNow " "none " "but " "Christ " "can " sat is "fy, "
  "\nNone " o "ther " "name " "for " "me, "
  "\nThere's " "love, " "and " "life, " "and " last "ing " "joy, "
  "\nLord " Je "sus, " "found " "in " "Thee.\n"

  \set stanza = "2."
  "\nI " "sighed " "for " "rest " "and " hap pi "ness, "
  "\nI " "yearned " "for " "them, " "not " "Thee; "
  "\nBut " "while " "I " "passed " "my " Sa "viour " "by, "
  "\nHis " "love " "laid " "hold " "on " "me… "
  "\nNow " "none " "but " "Christ " "can " sat is "fy, "
  "\nNone " o "ther " "name " "for " "me, "
  "\nThere's " "love, " "and " "life, " "and " last "ing " "joy, "
  "\nLord " Je "sus, " "found " "in " "Thee.\n"

  \set stanza = "3."
  "\nI " "tried " "the " bro "ken " cis "terns, " "Lord, "
  "\nBut " "ah! " "the " wa "ters " "failed! "
  "\nE‘en " "as " "I " "stooped " "to " "drink " "they'd " "fled, "
  "\nAnd " "mock‘d " "me " "as " "I " "wailed. "
  "\nNow " "none " "but " "Christ " "can " sat is "fy, "
  "\nNone " o "ther " "name " "for " "me, "
  "\nThere's " "love, " "and " "life, " "and " last "ing " "joy, "
  "\nLord " Je "sus, " "found " "in " "Thee.\n"

  \set stanza = "4."
  "\nThe " plea "sures " "lost " "I " sad "ly " "mourn‘d, "
  "\nNut " ne "ver " "wept " "for " "Thee, "
  "\nTill " "grace " "the " sight "less " "eyes " re "ceived, "
  "\nThy " love li "ness " "to " "see… "
  "\nNow " "none " "but " "Christ " "can " sat is "fy, "
  "\nNone " o "ther " "name " "for " "me, "
  "\nThere's " "love, " "and " "life, " "and " last "ing " "joy, "
  "\nLord " Je "sus, " "found " "in " "Thee. "
}

wordsMidiMen = \lyricmode {
  \set stanza = "1."
  "O " "Christ, " "in " "Thee " "my " "soul " "hath " "found, "
  "\nAnd " "found " "in " "Thee " a "lone, "
  "\nThe " "peace, " "the " "joy " "I " "sought " "so " "long, "
  "\nThe " "bliss " "till " "now " un "known. "
  "\nNow " "none " "but " "Christ " "can " sat is "fy, "
  "\nNone " o "ther " "name " "for " "me, " "for " "me, "
  "\nThere's " "love, " "and " "life, " "and " last "ing " "joy, "
  "\nLord " Je "sus, " "found " "in " "Thee.\n"

  \set stanza = "2."
  "\nI " "sighed " "for " "rest " "and " hap pi "ness, "
  "\nI " "yearned " "for " "them, " "not " "Thee; "
  "\nBut " "while " "I " "passed " "my " Sa "viour " "by, "
  "\nHis " "love " "laid " "hold " "on " "me… "
  "\nNow " "none " "but " "Christ " "can " sat is "fy, "
  "\nNone " o "ther " "name " "for " "me, " "for " "me, "
  "\nThere's " "love, " "and " "life, " "and " last "ing " "joy, "
  "\nLord " Je "sus, " "found " "in " "Thee.\n"

  \set stanza = "3."
  "\nI " "tried " "the " bro "ken " cis "terns, " "Lord, "
  "\nBut " "ah! " "the " wa "ters " "failed! "
  "\nE‘en " "as " "I " "stooped " "to " "drink " "they'd " "fled, "
  "\nAnd " "mock‘d " "me " "as " "I " "wailed. "
  "\nNow " "none " "but " "Christ " "can " sat is "fy, "
  "\nNone " o "ther " "name " "for " "me, " "for " "me, "
  "\nThere's " "love, " "and " "life, " "and " last "ing " "joy, "
  "\nLord " Je "sus, " "found " "in " "Thee.\n"

  \set stanza = "4."
  "\nThe " plea "sures " "lost " "I " sad "ly " "mourn‘d, "
  "\nNut " ne "ver " "wept " "for " "Thee, "
  "\nTill " "grace " "the " sight "less " "eyes " re "ceived, "
  "\nThy " love li "ness " "to " "see… "
  "\nNow " "none " "but " "Christ " "can " sat is "fy, "
  "\nNone " o "ther " "name " "for " "me, " "for " "me, "
  "\nThere's " "love, " "and " "life, " "and " last "ing " "joy, "
  "\nLord " Je "sus, " "found " "in " "Thee. "
}

\book {
  \paper {
    output-suffix = midi
  }
  \score {
%    \articulate
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano
          <<
            \new Voice { \repeat-verses \verses \RehearsalTrack }
            \new Voice { \repeat-verses \verses \TempoTrack     }
            \new Voice { \global \repeat-verses \verses \soprano \bar "|." }
            \addlyrics \wordsMidi
          >>
                                % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global \repeat-verses \verses \alto \bar "|." }
          >>
                                % Tenor staff
          \new Staff = tenor
          <<
            \clef "treble_8"
            \new Voice { \global \repeat-verses \verses \tenor }
          >>
                                % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Voice { \global \repeat-verses \verses \bass }
          >>
        >>
    \midi {}
  }
}

\book {
  \paper {
    output-suffix = midi-bass
  }
  \score {
%    \articulate
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano
          <<
            \new Voice { \repeat-verses \verses \RehearsalTrack }
            \new Voice { \repeat-verses \verses \TempoTrack     }
            \new Voice { \global \repeat-verses \verses \soprano \bar "|." }
          >>
                                % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global \repeat-verses \verses \alto \bar "|." }
          >>
                                % Tenor staff
          \new Staff = tenor
          <<
            \clef "treble_8"
            \new Voice { \global \repeat-verses \verses \tenor }
          >>
                                % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Voice { \global \repeat-verses \verses \bass }
            \addlyrics \wordsMidiMen
          >>
        >>
    \midi {}
  }
}

#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = repeat
  }
  \score {
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff = women \with { printPartCombineTexts = ##f }
          <<
            \new Voice \RehearsalTrack
            \new Voice \TempoTrack
            \new NullVoice = "aligner" \keepWithTag #'dash \soprano
            \new Voice \partCombine #'(2 . 88) { \global \keepWithTag #'dash \soprano \bar "|." } { \global \keepWithTag #'dash \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne \chorus }
            \new Lyrics \lyricsto "aligner"   \wordsTwo
            \new Lyrics \lyricsto "aligner"   \wordsThree
            \new Lyrics \lyricsto "aligner"   \wordsFour
          >>
                                  % Joint tenor/bass staff
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice \partCombine #'(2 . 88) { \global \keepWithTag #'dash \tenor } { \global \keepWithTag #'dash \bass }
            \new NullVoice = alignerB { \keepWithTag #'dash \bass }
          >>
          \new Lyrics \with {alignAboveContext = men} \lyricsto alignerB \chorusMen
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
            \new Voice { \repeat-verses \verses \RehearsalTrack }
            \new Voice { \repeat-verses \verses \TempoTrack }
            \new NullVoice = "aligner" { \repeat-verses \verses \soprano }
            \new Voice \partCombine #'(2 . 88) { \global \repeat-verses \verses \soprano \bar "|." }
                                    { \global \repeat-verses \verses { \alto \nl } \bar "|." }
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
            \new Voice \partCombine #'(2 . 88) { \global \repeat-verses \verses { \tenor \nl } }
                                    { \global \repeat-verses \verses \bass }
            \new NullVoice = alignerB { \repeat-verses \verses \bass }
          >>
          \new Lyrics \with {alignAboveContext = men} \lyricsto alignerB { \repeat unfold \verses \chorusMen }
        >>
}

\book {
  \paper {
    output-suffix = single
  }
  \score {
    \singlescore
    \layout {
      #(layout-set-staff-size 20)
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}

\book {
  \paper {
    output-suffix = singlepage
  }
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
      #(layout-set-staff-size 20)
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}
