\version "2.25.0"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Anywhere, my Saviour."
  subtitle    = "Sankey No. 596"
  subsubtitle = "C. C. No. 76"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "J. H. Tenney."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "E. C. Ellsworth."
%  meter       = \markup\smallCaps "meter"
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key bes \major
  \time 12/8
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" }     s1.*2 s2.
  \textMark \markup { \box \bold "B" } s2. s1.*2
  \textMark \markup { \box \bold "C" }     s1.*3
  \textMark \markup { \box \bold "D" }     s1.*2
  \textMark \markup { \box \bold "E" }     s1.*2 s4.*3
  \textMark \markup { \box \bold "F" } s4. s1.*3
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

dynamicsPrint = {
}

dynamicsOmit = {
}

soprano = \relative {
  \autoBeamOff
  f'4 8 4 8 g4. g | f4 8 bes4 c8 d4.~4 r8 | ees4 d8 c4 b8 \bar "|" \break
  c4 8 4. | d4 c8 bes4 g8 f4.~4 r8 | 4 8 4 8 g4 8 4. |
  f4 8 bes4 c8 d4.~4 r8 | e4 8 4 8 d4. bes | c4 8 d4 c8 bes4.~4 r8 |
  \section \sectionLabel \markup\smallCaps Chorus.
  d4.~4.~4 ees8 d4 c8 | bes4. 4. f bes |
  c4 8 4 8 4.~4 r8 | d4 8 4 8 4.~4 r8 | d4.~4.~4 c8 \bar "|" \break
  bes4 a8 | c4. bes a g | f4.~4 bes8 d4. c | bes4.~4.~2. |
}

alto = \relative {
  \autoBeamOff
  d'4 8 4 8 ees4. ees | d4 8 f4 8 4.~4 r8 | 4 8 4 8 
  f4 8 4. | 4 ees8 d4 ees8 d4.~4 r8 | 4 8 4 8 ees4 8 4. |
  d4 8 f4 8 4.~4 r8 | g4 8 4 8 f4. d | ees4 8 f4 ees8 d4.~4 r8 |
  f4 8 4 8 4 \partCombineApart r8 r4. | d4 8 4 8 4 8 4. |
  \partCombineAutomatic ees4 8 4 8 4.~4 r8 | f4 8 4 8 4.~4 r8 | f4 8 4 8 4 \partCombineApart r8
  r4. | ees4 8 g4 8 f4 8 ees4. | \partCombineAutomatic d4.~4 8 f4. ees | d4. ees4 8 d2. |
}

tenor = \relative {
  \autoBeamOff
  bes4 8 4 8 4. 4. | bes4 8 4 a8 bes4.~4 r8 | c4 bes8 a4 gis8
  a4 8 4. | bes4 f8 4 bes8 4.~4 r8 | 4 8 4 8 4 8 4. |
  bes4 8 4 a8 bes4.~4 r8 |4 8  4 8 4. f | a4 8 4 f8 4.~4 r8 | \section
  bes4 8 4 8 4 r8 r4. | f4 8 4 8 bes4 8 f4. |
  a4 8 4 8 4.~4 r8 | bes4 8 4 8 4.~4 r8 | 4 8 4 8 4 r8
  r4. | g4 8 bes4 8 4 8 4. | 4.~4 8 4. a | bes4. g4 8 f2. |
}

bass = \relative {
  \autoBeamOff
  bes,4 8 4 8 ees4. 4. |  bes4 8 d4 f8 bes4.~4 r8 | f4 8 4 8
  f4 8 4. | bes,4 8 4 8 4.~4 r8 | bes4 8 4 8 ees4 8 4. |
  bes4 8 d4 f8 bes4.~4 r8 | ees,4 8 4 8 bes4. 4. | f'4 8 4 8 bes,4.~4 r8 |
  bes4 8 4 8 4 r8 r4. | 4 8 4 8 4 8 4. |
  f'4 8 4 8 4.~4 r8 | bes,4 8 4 8 4.~4 r8 | 4 8 4 8 4 r8
  r4. | ees4 8 4 8 4 8 4. | f4.~4 8 4. 4. | bes,4.~4.~2. |
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  An -- y where, my bless -- ed Sa -- viour,
  I will fol -- low Thee, I will fol -- low Thee;
  An -- y where, my bless -- ed Sa -- viour,
  If Thou lead -- est me. __
}

chorusMen = \lyricmode {
  _ _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _
  _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _ _
  An -- y -- where with Thee,
  if Thou on -- ly lead -- est me,
  _ _ _ _ _ _ _ _ _ _
  An -- y -- where with Thee,
  I will ev -- er fol -- low Thee.
  _ _ _ _ _ lead -- est me.
}

verses = 3

wordsOne = \lyricmode {
  \set stanza = "1."
  An -- y -- where my Sa -- viour, lead my wil -- ling feet,
  On -- ly let me clasp Thy hand, feel Thy pres -- ence sweet;
  Thorns may pierce and snares be -- set, I will fol -- low Thee
  An -- y -- where, my Sa -- viour, if Thou lead -- est me.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  An -- y -- where my Sa -- viour, on -- ly on me smile;
  Strenggh -- en, guard, and com -- fort me, let not sin be -- guile;
  Dark and toil -- some tho' my way, I will ne -- ver fear,
  An -- y -- where, my Sa -- viour, if Thy pres -- ence cheer.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  An -- y -- where my Sa -- viour: on -- ly this I pray,
  Keep me in the nar -- row path, nev -- er let me stray;
  Sin may plead with si -- ren voice, help me ans -- wer, Nay,
  Kept by Thee, my Sav -- iour, I will hold my way.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "An" y "where " "my " Sa "viour, " "lead " "my " wil "ling " "feet, "
  "\nOn" "ly " "let " "me " "clasp " "Thy " "hand, " "feel " "Thy " pres "ence " "sweet; "
  "\nThorns " "may " "pierce " "and " "snares " be "set, " "I " "will " fol "low " "Thee "
  "\nAn" y "where, " "my " Sa "viour, " "if " "Thou " lead "est " "me. "
  "\nAn" "y " "where, " "my " bless "ed " Sa "viour, "
  "\nI " "will " fol "low " "Thee, " "I " "will " fol "low " "Thee; "
  "\nAn" "y " "where, " "my " bless "ed " Sa "viour, "
  "\nIf " "Thou " lead "est " "me.\n" 

  \set stanza = "2."
  "\nAn" y "where " "my " Sa "viour, " on "ly " "on " "me " "smile; "
  "\nStrenggh" "en, " "guard, " "and " com "fort " "me, " "let " "not " "sin " be "guile; "
  "\nDark " "and " toil "some " "tho' " "my " "way, " "I " "will " ne "ver " "fear, "
  "\nAn" y "where, " "my " Sa "viour, " "if " "Thy " pres "ence " "cheer. "
  "\nAn" "y " "where, " "my " bless "ed " Sa "viour, "
  "\nI " "will " fol "low " "Thee, " "I " "will " fol "low " "Thee; "
  "\nAn" "y " "where, " "my " bless "ed " Sa "viour, "
  "\nIf " "Thou " lead "est " "me.\n" 

  \set stanza = "3."
  "\nAn" y "where " "my " Sa "viour: " on "ly " "this " "I " "pray, "
  "\nKeep " "me " "in " "the " nar "row " "path, " nev "er " "let " "me " "stray; "
  "\nSin " "may " "plead " "with " si "ren " "voice, " "help " "me " ans "wer, " "Nay, "
  "\nKept " "by " "Thee, " "my " Sav "iour, " "I " "will " "hold " "my " "way. "
  "\nAn" "y " "where, " "my " bless "ed " Sa "viour, "
  "\nI " "will " fol "low " "Thee, " "I " "will " fol "low " "Thee; "
  "\nAn" "y " "where, " "my " bless "ed " Sa "viour, "
  "\nIf " "Thou " lead "est " "me. " 
}
  
wordsMidiMen = \lyricmode {
  \set stanza = "1."
  "An" y "where " "my " Sa "viour, " "lead " "my " wil "ling " "feet, "
  "\nOn" "ly " "let " "me " "clasp " "Thy " "hand, " "feel " "Thy " pres "ence " "sweet; "
  "\nThorns " "may " "pierce " "and " "snares " be "set, " "I " "will " fol "low " "Thee "
  "\nAn" y "where, " "my " Sa "viour, " "if " "Thou " lead "est " "me. "
  "\nAn" y "where " "with " "Thee, "
  "\nif " "Thou " on "ly " lead "est " "me, "
  "\nI " "will " fol "low " "Thee, " "I " "will " fol "low " "Thee; "
  "\nAn" y "where " "with " "Thee, "
  "\nI " "will " ev "er " fol "low " "Thee. "
  "\nIf " "Thou " lead "est " "me, " lead "est " "me.\n"

  \set stanza = "2."
  "\nAn" y "where " "my " Sa "viour, " on "ly " "on " "me " "smile; "
  "\nStrenggh" "en, " "guard, " "and " com "fort " "me, " "let " "not " "sin " be "guile; "
  "\nDark " "and " toil "some " "tho' " "my " "way, " "I " "will " ne "ver " "fear, "
  "\nAn" y "where, " "my " Sa "viour, " "if " "Thy " pres "ence " "cheer. "
  "\nAn" y "where " "with " "Thee, "
  "\nif " "Thou " on "ly " lead "est " "me, "
  "\nI " "will " fol "low " "Thee, " "I " "will " fol "low " "Thee; "
  "\nAn" y "where " "with " "Thee, "
  "\nI " "will " ev "er " fol "low " "Thee. "
  "\nIf " "Thou " lead "est " "me, " lead "est " "me.\n"

  \set stanza = "3."
  "\nAn" y "where " "my " Sa "viour: " on "ly " "this " "I " "pray, "
  "\nKeep " "me " "in " "the " nar "row " "path, " nev "er " "let " "me " "stray; "
  "\nSin " "may " "plead " "with " si "ren " "voice, " "help " "me " ans "wer, " "Nay, "
  "\nKept " "by " "Thee, " "my " Sav "iour, " "I " "will " "hold " "my " "way. "
  "\nAn" y "where " "with " "Thee, "
  "\nif " "Thou " on "ly " lead "est " "me, "
  "\nI " "will " fol "low " "Thee, " "I " "will " fol "low " "Thee; "
  "\nAn" y "where " "with " "Thee, "
  "\nI " "will " ev "er " fol "low " "Thee. "
  "\nIf " "Thou " lead "est " "me, " lead "est " "me. "
}

\book {
  \bookOutputSuffix "midi-sop"
  \score {
%    \articulate
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano
          <<
            \new Dynamics \repeat unfold \verses \dynamicsOmit
            \new Voice { \repeat unfold \verses \TempoTrack     }
            \new Voice { \global \repeat unfold \verses \soprano \bar "|." }
            \addlyrics \wordsMidi
          >>
                                % Alto staff
          \new Staff = alto
          <<
            \new Dynamics \repeat unfold \verses \dynamicsOmit
            \new Voice { \global \repeat unfold \verses { \alto \nl } \bar "|." }
          >>
                                % Tenor staff
          \new Staff = tenor
          <<
            \clef "treble_8"
            \new Dynamics \repeat unfold \verses \dynamicsOmit
            \new Voice { \global \repeat unfold \verses \tenor }
          >>
                                % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Dynamics \repeat unfold \verses \dynamicsOmit
            \new Voice { \global \repeat unfold \verses \bass }
          >>
        >>
    \midi {}
  }
}

\book {
  \bookOutputSuffix "midi"
  \score {
%    \articulate
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano
          <<
            \new Dynamics \repeat unfold \verses \dynamicsOmit
            \new Voice { \repeat unfold \verses \TempoTrack     }
            \new Voice { \global \repeat unfold \verses \soprano \bar "|." }
          >>
                                % Alto staff
          \new Staff = alto
          <<
            \new Dynamics \repeat unfold \verses \dynamicsOmit
            \new Voice { \global \repeat unfold \verses { \alto \nl } \bar "|." }
          >>
                                % Tenor staff
          \new Staff = tenor
          <<
            \clef "treble_8"
            \new Dynamics \repeat unfold \verses \dynamicsOmit
            \new Voice { \global \repeat unfold \verses \tenor }
            \addlyrics \wordsMidiMen
          >>
                                % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Dynamics \repeat unfold \verses \dynamicsOmit
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
            \new Dynamics \with {alignAboveContext = women} \dynamicsPrint
            \new Voice \RehearsalTrack
            \new Voice \TempoTrack
            \new NullVoice = "aligner" \soprano
            \new Voice \partCombine #'(2 . 88) { \global \soprano \bar "|." } { \global \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne \chorus }
            \new Lyrics \lyricsto "aligner"   \wordsTwo
            \new Lyrics \lyricsto "aligner"   \wordsThree
          >>
                                  % Joint tenor/bass staff
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Dynamics \dynamicsOmit
            \new Voice \partCombine #'(2 . 88) { \global \tenor } { \global \bass }
            \new NullVoice = alignerT { \tenor }
          >>
          \new Lyrics \with {alignAboveContext = men} \lyricsto alignerT \chorusMen
        >>
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

singlescore = {
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff = women \with { printPartCombineTexts = ##f }
          <<
            \new Dynamics \with {alignAboveContext = women} \repeat unfold \verses \dynamicsPrint
            \new Voice { \repeat unfold \verses \RehearsalTrack }
            \new Voice { \repeat unfold \verses \TempoTrack }
            \new NullVoice = "aligner" { \repeat unfold \verses \soprano }
            \new Voice \partCombine #'(2 . 88) { \global \repeat unfold \verses \soprano \bar "|." }
                                    { \global \repeat unfold \verses { \alto \nl } \bar "|." }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Dynamics \repeat unfold \verses \dynamicsOmit
            \new Voice \partCombine #'(2 . 88) { \global \repeat unfold \verses \tenor }
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
      #(layout-set-staff-size 20)
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}
