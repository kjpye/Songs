\version "2.25.0"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "My Jesus, I Love Thee."
  subtitle    = "Sankey No. 569"
  subsubtitle = "Sankey 880 No. 374"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "A. J. Gordon, D. D."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "W. R. Featherston."
  meter       = \markup\smallCaps "11s."
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

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  \tag #'dash       {\slurDashed f'8(8) \slurSolid}
  \tag #'(v1 v2 v4) {            f4               }
  \tag #'v3         {            f8  8            }
  a2 bes4 4 | a4.(g8) f4 a | g2 e4 4 | f2. \bar "|" \break
  f4 | a2 bes4 4 | a4.(g8) f4 a | g2 e4 4 | f2. \bar "|" \break
  a4 | c2 d4 c | bes(a) g c, | a'(c) bes g | f2(e4) \bar "|" \break
  f4 | a2 bes4 4 | a4.(g8) f4 a | c(bes) a g | f2.
}

alto = \relative {
  \autoBeamOff
  \tag #'dash       {\slurDashed c'8(8) \slurSolid}
  \tag #'(v1 v2 v4) {            c4               }
  \tag #'v3         {            c8  8            }
  f2 4 4 |f4.(c8) 4 f | e2 c4 4 | 2.
  c4 | f2 4 4 | 4.(c8) 4 f | e2 c4 4 | 2.
  c4 | f2 4 4 | e(f) c c | 2 d4 4 | c2.
  c4 | f2 4 4 | 4.(c8) 4 f | f(e) e e | f2.
}

tenor = \relative {
  \autoBeamOff
  \tag #'dash       {\slurDashed a8(8) \slurSolid}
  \tag #'(v1 v2 v4) {            a4              }
  \tag #'v3         {            a8 8            }
  c2 d4 4 | c4.(bes8) a4 c | bes2 f4 4 | a2.
  a4 | c2 d4 4 | c4.(b8) a4 c | bes2 g4 4 | a2.
  f4 | a2 bes4 a | g(f) e c | f(a) g bes | a2(g4)
  a4 | c2 d4 4 | c4.(bes8) a4 c | a(g) c bes | a2.
}

bass = \relative {
  \autoBeamOff
  \tag #'dash       {\slurDashed f8(8) \slurSolid}
  \tag #'(v1 v2 v4) {            f4              }
  \tag #'v3         {            f8 8            }
  f2 4 4 | 2 4 4 | c2 4 4 | f2.
  f4 | 2 4 4 | 2 4 4 | c2 4 4 | f2.
  \partCombineApart r4 | R1 | R | R | r2 r4 \partCombineAutomatic
  f4 | 2 4 4 | 2 4 4 | c2 4 4 | f2.
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
  My Je -- sus, I love Thee, I know Thou art mine!
  For Thee all the plea -- sures of sin I re -- sign;
  My gra -- cious Re -- deem -- er, my Sa -- viour art Thou!
  If ev -- er I loved Thee, my Je -- sus 'tis now!
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  I love Thee, be -- cause Thou hast first lov -- ed me,
  And pur -- chased my par -- don on Cal -- va -- ry's tree;
  I love Thee for wear -- ing the thorns on Thy brow:
  If ev -- er I loved Thee, my Je -- sus 'tis now!
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  \nom I will \yesm love Thee in life, I will love Thee in death,
  And praise Thee as long as Thou lend -- est me breath;
  And say when the death -- dew lies cold on my brow,
  "\"If" ev -- er I loved Thee, my Je -- sus 'tis "now!\""
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  In man -- sions of glo -- ry and end -- less de -- light,
  I'll e -- ver a -- dore Thee in hea -- ven so bright;
  I'll sing with the glit -- ter -- ing crown on my brow,
  "\"If" ev -- er I loved Thee, my Je -- sus 'tis "now!\""
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "My " Je "sus, " "I " "love " "Thee, " "I " "know " "Thou " "art " "mine! "
  "\nFor " "Thee " "all " "the " plea "sures " "of " "sin " "I " re "sign; "
  "\nMy " gra "cious " Re deem "er, " "my " Sa "viour " "art " "Thou! "
  "\nIf " ev "er " "I " "loved " "Thee, " "my " Je "sus " "'tis " "now!\n"

  \set stanza = "2."
  "\nI " "love " "Thee, " be "cause " "Thou " "hast " "first " lov "ed " "me, "
  "\nAnd " pur "chased " "my " par "don " "on " Cal va "ry's " "tree; "
  "\nI " "love " "Thee " "for " wear "ing " "the " "thorns " "on " "Thy " "brow: "
  "\nIf " ev "er " "I " "loved " "Thee, " "my " Je "sus " "'tis " "now!\n"

  \set stanza = "3."
  "I " "will " "love " "Thee " "in " "life, " "I " "will " "love " "Thee " "in " "death, "
  "\nAnd " "praise " "Thee " "as " "long " "as " "Thou " lend "est " "me " "breath; "
  "\nAnd " "say " "when " "the " death "dew " "lies " "cold " "on " "my " "brow, "
  "\n\"If " ev "er " "I " "loved " "Thee, " "my " Je "sus " "'tis " "now!\"\n"

  \set stanza = "4."
  "\nIn " man "sions " "of " glo "ry " "and " end "less " de "light, "
  "\nI'll " e "ver " a "dore " "Thee " "in " hea "ven " "so " "bright; "
  "\nI'll " "sing " "with " "the " glit ter "ing " "crown " "on " "my " "brow, "
  "\n\"If " ev "er " "I " "loved " "Thee, " "my " Je "sus " "'tis " "now!\" "
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
            \new Voice { \repeat unfold \verses \RehearsalTrack }
            \new Voice { \repeat unfold \verses \TempoTrack     }
            \new Voice { \global
                         \keepWithTag #'v1 \soprano
                         \keepWithTag #'v2 \soprano
                         \keepWithTag #'v3 \soprano
                         \keepWithTag #'v4 \soprano
                         \bar "|." }
            \addlyrics \wordsMidi
          >>
                                % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global
                         \keepWithTag #'v1 \alto \nl
                         \keepWithTag #'v2 \alto \nl
                         \keepWithTag #'v3 \alto \nl
                         \keepWithTag #'v4 \alto \nl
                       \bar "|." }
          >>
                                % Tenor staff
          \new Staff = tenor
          <<
            \clef "treble_8"
            \new Voice { \global
                         \keepWithTag #'v1 \tenor
                         \keepWithTag #'v2 \tenor
                         \keepWithTag #'v3 \tenor
                         \keepWithTag #'v4 \tenor
                       }
            \addlyrics \wordsMidiMen
          >>
                                % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Voice { \global
                         \keepWithTag #'v1 \bass
                         \keepWithTag #'v2 \bass
                         \keepWithTag #'v3 \bass
                         \keepWithTag #'v4 \bass
                       }
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
            \new NullVoice = "aligner" \keepWithTag #'dash \soprano
            \new Voice \partCombine #'(2 . 88) { \global \keepWithTag #'dash \soprano \bar "|." }
            { \global \keepWithTag #'dash \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne \chorus }
            \new Lyrics \lyricsto "aligner"   \wordsTwo
            \new Lyrics \lyricsto "aligner"   \wordsThree
            \new Lyrics \lyricsto "aligner"   \wordsFour
          >>
                                  % Joint tenor/bass staff
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice \partCombine #'(2 . 88) { \global \keepWithTag #'dash \tenor }
            { \global \keepWithTag #'dash \bass }
            \new NullVoice = alignerT { \keepWithTag #'dash \tenor }
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

singlescore = {
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff = women \with { printPartCombineTexts = ##f }
          <<
            \new Voice { \repeat unfold \verses \RehearsalTrack }
            \new Voice { \repeat unfold \verses \TempoTrack }
            \new NullVoice = "aligner" {
              \keepWithTag #'v1 \soprano
              \keepWithTag #'v2 \soprano
              \keepWithTag #'v3 \soprano
              \keepWithTag #'v4 \soprano
            }
            \new Voice \partCombine #'(2 . 88) { \global
                                                 \keepWithTag #'v1 \soprano
                                                 \keepWithTag #'v2 \soprano
                                                 \keepWithTag #'v3 \soprano
                                                 \keepWithTag #'v4 \soprano
                                                 \bar "|." }
            { \global
              \keepWithTag #'v1 \alto \nl
              \keepWithTag #'v2 \alto \nl
              \keepWithTag #'v3 \alto \nl
              \keepWithTag #'v4 \alto \nl
              \bar "|." }
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
            \new Voice \partCombine #'(2 . 88) { \global
                                                 \keepWithTag #'v1 \tenor
                                                 \keepWithTag #'v2 \tenor
                                                 \keepWithTag #'v3 \tenor
                                                 \keepWithTag #'v4 \tenor
                                               }
            { \global
              \keepWithTag #'v1 \bass
              \keepWithTag #'v2 \bass
              \keepWithTag #'v3 \bass
              \keepWithTag #'v4 \bass
            }
            \new NullVoice = alignerT {
              \keepWithTag #'v1 \tenor
              \keepWithTag #'v2 \tenor
              \keepWithTag #'v3 \tenor
              \keepWithTag #'v4 \tenor
                                      }
          >>
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
