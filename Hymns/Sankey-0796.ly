\version "2.25.12"

\include "../kjp.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Where the Saviour Leads."
  subtitle    = "Sankey No. 796"
  subsubtitle = "C. C. No. 114"
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

global = {
  \key ees \major
  \time 4/4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" }    s1*2 s2
  \textMark \markup { \box \bold "B" } s2 s1*2
  \textMark \markup { \box \bold "C" }    s1*3
  \textMark \markup { \box \bold "D" }    s1*3
  \textMark \markup { \box \bold "E" }    s1*5
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  g'4 8. f16 8 ees8 8 g | bes4 8. c16 bes2 | g4 8. 16 \bar "|" \break
  c8 bes aes g | f4 8. 16 f4(aes) | g4 8. f16 8 ees8 8 g |
  bes4 8. c16 bes2 | ees4 bes8. c16 bes8 g ees aes | g4 8. f16 ees2 |
  \section \sectionLabel \markup\smallCaps Chorus. \break
  bes'2~8 aes g bes | ees2 bes | c2~8 ees d c |
  c2 bes | ees4 bes aes8 g f ees | c'2 ees | d4 bes aes d, | ees1 |
}

alto = \relative {
  \autoBeamOff
  ees'4 8. d16 8 ees8 8 8 | g4 8. aes16 g2 | g4 8. 16
  c8 bes aes g | f4 ees8. 16 d4(f) | ees4 8. d16 8 ees8 8 8 |
  g4 8. aes16 g2 | 4 8. aes16 g8 ees8 8 8 | 4 d8. 16 ees2 \section |
  g2~8 f ees g | 2 2 | aes2~8 c bes aes |
  aes2 g | 4 ees4 8 8 d ees | 2 f | 4 d d bes | 1 |
}

tenor = \relative {
  \autoBeamOff
  bes4 8. aes16 8 g g bes | ees4 8. 16 2 | bes4 8. 16
  aes8 bes8 8 8 | 4 a8. 16 bes2 | 4 8. aes16 8 g g bes |
  ees4 8. 16 2 | bes4 ees8. 16 8 bes g c | bes4 8. aes16 g2 \section |
  bes4 4 4 4 | 4 4 ees4 4 | 4 4 4 4 |
  ees4 4 4 4 | bes g c8 bes aes g | aes2 c | bes4 4 4 aes | g1 |
}

bass = \relative {
  \autoBeamOff
  ees4 8. 16 8 8 8 8 | 4 8. 16 2 | 4 8. 16
  aes8 g f ees | d4 c8. 16 bes2 | ees4 8. 16 8 8 8 8 |
  ees4 8. 16 2 | 4 8. 16 8 8 8 aes, | bes4 8. 16 ees2 \section |
  ees4 4 4 4 | 4 4 4 4 | aes4 4 4 4 |
  ees4 4 4 4 | 4 4 8 8 8 8 | aes2 a | bes4 4 bes,4 4 | ees1 |
}

chorus = \lyricmode {
  Where __ the Sa -- viour leads me,
  I __ will glad -- ly fol -- low;
  Where the lov -- ing Sa -- viour leads me,
  I will glad -- ly go.
}

chorusMen = \lyricmode {
  \repeat unfold 44 \skip 1
  \tiny
  Where the lov -- ing Sa -- viour leads me,
  I will glad -- ly, glad -- ly fol -- low;
  \repeat unfold 13 \skip 1
}

verses = 3

wordsOne = \lyricmode {
  \set stanza = "1."
  If in the val -- ley where the bright wa -- ters flow,
  Jes -- us my Sa -- viour leads me, glad -- ly I'll go;
  If, by His hand di -- rect -- ed o'er o -- cean's wave,
  Glad -- ly I'll bear His mes -- sage, lost ones to save.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Out on the bar -- ren moun -- tains drear -- y and cold,
  Seek -- ing the sheep that wan -- der far from the fold;
  Storm -- clouds may frown a -- bove me, fierce winds may blow;
  Yet if my Sa -- viour leads me, on -- ward I'll go.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Wher -- e'er the Sa -- viour leads me I'll fol -- low still,
  Pa -- tient in joy or sor -- row, bi -- ding His will;
  He knows the path of safe -- ty, He knows the way,
  Home to the ma -- ny man -- sions bright, bright as day.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "If " "in " "the " val "ley " "where " "the " "bright " wa "ters " "flow, "
  "\nJes" "us " "my " Sa "viour " "leads " "me, " glad "ly " "I'll " "go; "
  "\nIf, " "by " "His " "hand " di rect "ed " "o'er " o "cean's " "wave, "
  "\nGlad" "ly " "I'll " "bear " "His " mes "sage, " "lost " "ones " "to " "save. "
  "\nWhere "  "the " Sa "viour " "leads " "me, "
  "\nI "  "will " glad "ly " fol "low; "
  "\nWhere " "the " lov "ing " Sa "viour " "leads " "me, "
  "\nI " "will " glad "ly " "go.\n"

  \set stanza = "2."
  "\nOut " "on " "the " bar "ren " moun "tains " drear "y " "and " "cold, "
  "\nSeek" "ing " "the " "sheep " "that " wan "der " "far " "from " "the " "fold; "
  "\nStorm" "clouds " "may " "frown " a "bove " "me, " "fierce " "winds " "may " "blow; "
  "\nYet " "if " "my " Sa "viour " "leads " "me, " on "ward " "I'll " "go. "
  "\nWhere "  "the " Sa "viour " "leads " "me, "
  "\nI "  "will " glad "ly " fol "low; "
  "\nWhere " "the " lov "ing " Sa "viour " "leads " "me, "
  "\nI " "will " glad "ly " "go.\n"

  \set stanza = "3."
  "\nWher" "e'er " "the " Sa "viour " "leads " "me " "I'll " fol "low " "still, "
  "\nPa" "tient " "in " "joy " "or " sor "row, " bi "ding " "His " "will; "
  "\nHe " "knows " "the " "path " "of " safe "ty, " "He " "knows " "the " "way, "
  "\nHome " "to " "the " ma "ny " man "sions " "bright, " "bright " "as " "day. "
  "\nWhere "  "the " Sa "viour " "leads " "me, "
  "\nI "  "will " glad "ly " fol "low; "
  "\nWhere " "the " lov "ing " Sa "viour " "leads " "me, "
  "\nI " "will " glad "ly " "go. "
}

wordsMidiMen = \lyricmode {
  \set stanza = "1."
  "If " "in " "the " val "ley " "where " "the " "bright " wa "ters " "flow, "
  "\nJes" "us " "my " Sa "viour " "leads " "me, " glad "ly " "I'll " "go; "
  "\nIf, " "by " "His " "hand " di rect "ed " "o'er " o "cean's " "wave, "
  "\nGlad" "ly " "I'll " "bear " "His " mes "sage, " "lost " "ones " "to " "save. "
  "\nWhere " "the " lov "ing " Sa "viour " "leads " "me, "
  "\nI " "will " glad "ly, " glad "ly " fol "low; "
  "\nWhere " "the " lov "ing " Sa "viour " "leads " "me, "
  "\nI " "will " glad "ly " "go.\n"

  \set stanza = "2."
  "\nOut " "on " "the " bar "ren " moun "tains " drear "y " "and " "cold, "
  "\nSeek" "ing " "the " "sheep " "that " wan "der " "far " "from " "the " "fold; "
  "\nStorm" "clouds " "may " "frown " a "bove " "me, " "fierce " "winds " "may " "blow; "
  "\nYet " "if " "my " Sa "viour " "leads " "me, " on "ward " "I'll " "go. "
  "\nWhere " "the " lov "ing " Sa "viour " "leads " "me, "
  "\nI " "will " glad "ly, " glad "ly " fol "low; "
  "\nWhere " "the " lov "ing " Sa "viour " "leads " "me, "
  "\nI " "will " glad "ly " "go.\n"

  \set stanza = "3."
  "\nWher" "e'er " "the " Sa "viour " "leads " "me " "I'll " fol "low " "still, "
  "\nPa" "tient " "in " "joy " "or " sor "row, " bi "ding " "His " "will; "
  "\nHe " "knows " "the " "path " "of " safe "ty, " "He " "knows " "the " "way, "
  "\nHome " "to " "the " ma "ny " man "sions " "bright, " "bright " "as " "day. "
  "\nWhere " "the " lov "ing " Sa "viour " "leads " "me, "
  "\nI " "will " glad "ly, " glad "ly " fol "low; "
  "\nWhere " "the " lov "ing " Sa "viour " "leads " "me, "
  "\nI " "will " glad "ly " "go. "
}

\book {
  \bookOutputSuffix "midi-women"
  \score {
%    \articulate
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano
          <<
            \new Voice { \repeat unfold \verses \RehearsalTrack }
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
            \new Voice { \repeat unfold \verses \RehearsalTrack }
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

#(set-global-staff-size 20)

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
            \new Voice \partCombine #'(2 . 88) { \global \soprano \bar "|." } { \global \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne \chorus }
            \new Lyrics \lyricsto "aligner"   \wordsTwo
            \new Lyrics \lyricsto "aligner"   \wordsThree
          >>
                                  % Joint tenor/bass staff
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice \partCombine #'(2 . 88) { \global \tenor } { \global \bass }
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
