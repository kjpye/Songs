\version "2.25.0"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Joy Cometh in the Morning!"
  subtitle    = "Sankey No. 717"
  subsubtitle = "Sankey 880 No. 445"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup{Arr. \smallCaps "E. S. Lorenz."}
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup{Arr. \smallCaps "M. M. Wienland."}
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
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s4 s1*3 s2.
  \textMark \markup { \box \bold "B" } s4 s1*4
  \textMark \markup { \box \bold "C" }    s1*4
  \textMark \markup { \box \bold "D" }    s1*3 s2.
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  ees'8[f] | g4 bes bes ees | c4 ees bes g | bes2 c8 bes g ees | g2 f4 \bar "|" \break
  ees8[f] | g4 bes bes ees | c ees bes g | bes2 c8 bes g ees | f2 ees4 r |
  \section \sectionLabel "Chorus."
  f2 g8 f ees f | g2 bes | c aes8 c ees c | bes2 g |
  bes4 c bes g | c4 8 d ees4 c | bes2 c8 bes g ees | f2 ees4
}

alto = \relative {
  \autoBeamOff
  ees'4 | 4 g g g | aes4 c g ees | g2 aes8 g ees ees | 2 d4
  ees4  | 4 g g g | aes4 c g ees | g2 aes8 g ees ees | d2 ees4 r \section |
  d2 ees8 d c d | ees2 g | aes2 8 8 8 ees | 2 2 |
  ees4 4 4 4 | 4 aes8 8 4 4 | g2 aes8 g ees ees | d2 ees4
}

tenor = \relative {
  \autoBeamOff
  r4 | R1 | aes2 \once \tiny g4 bes | ees2 8 8 bes g | aes2 g4
  r4 | R1 | aes2 \once \tiny g4 bes | ees2 8 8 bes g | aes2 g4 r \section |
  bes2 8 8 8 8 | 2 ees | 2 c8 ees c aes | g2 bes |
  g4 aes g bes | aes ees'8 d c4 ees | 2 8 8 bes g | aes2 g4
}

bass = \relative {
  \autoBeamOff
  r4 | R1 | aes,2 \once\tiny ees'4 4 | 2 8 8 8 8 | bes2 4
  r4 | R1 | aes2  \once\tiny ees'4 4 | 2 8 8 8 8 | bes2 ees4 r \section |
  bes2 8 8 8 8 | ees2 2 | aes2 8 8 8 8 | ees2 2 |
  ees4 4 4 4 | aes4 8 8 4 4 | ees2 8 8 8 8 | bes2 ees4
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  Joy com -- eth in the morn -- ing!
  Joy com -- eth in the morn -- ing!
  Weep -- ing may en -- dure for a night;
  But joy com -- eth in the morn -- ing!
}

chorusMen = \lyricmode {
}

verses = 4

wordsOne = \lyricmode {
  \set stanza = "1."
  O wea -- ry pil -- grim, lift your head;
  For joy com -- eth in the morn -- ing!
  For God in His own Word hath said
  That joy com -- eth in the morn -- ing!
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Ye tremb -- ling saints, dis -- miss your fears:
  For joy com -- eth in the morn -- ing!
  O wea -- ry mourn -- er, dry your tears:
  For joy com -- eth in the morn -- ing!
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Re -- joice! the night will soon be gone:
  For joy com -- eth in the morn -- ing!
  And then shall come the glo -- rious dawn:
  For joy com -- eth in the morn -- ing!
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Oh, may we all be glad to -- day!—
  For joy com -- eth in the morn -- ing!
  Our God shall wipe all tears a -- way:
  For joy com -- eth in the morn -- ing!
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "O " wea "ry " pil "grim, " "lift " "your " "head; "
  "\nFor " "joy " com "eth " "in " "the " morn "ing! "
  "\nFor " "God " "in " "His " "own " "Word " "hath " "said "
  "\nThat " "joy " com "eth " "in " "the " morn "ing! "
  "\nJoy " com "eth " "in " "the " morn "ing! "
  "\nJoy " com "eth " "in " "the " morn "ing! "
  "\nWeep" "ing " "may " en "dure " "for " "a " "night; "
  "\nBut " "joy " com "eth " "in " "the " morn "ing!\n"

  \set stanza = "2."
  "\nYe " tremb "ling " "saints, " dis "miss " "your " "fears: "
  "\nFor " "joy " com "eth " "in " "the " morn "ing! "
  "\nO " wea "ry " mourn "er, " "dry " "your " "tears: "
  "\nFor " "joy " com "eth " "in " "the " morn "ing! "
  "\nJoy " com "eth " "in " "the " morn "ing! "
  "\nJoy " com "eth " "in " "the " morn "ing! "
  "\nWeep" "ing " "may " en "dure " "for " "a " "night; "
  "\nBut " "joy " com "eth " "in " "the " morn "ing!\n"

  \set stanza = "3."
  "\nRe" "joice! " "the " "night " "will " "soon " "be " "gone: "
  "\nFor " "joy " com "eth " "in " "the " morn "ing! "
  "\nAnd " "then " "shall " "come " "the " glo "rious " "dawn: "
  "\nFor " "joy " com "eth " "in " "the " morn "ing! "
  "\nJoy " com "eth " "in " "the " morn "ing! "
  "\nJoy " com "eth " "in " "the " morn "ing! "
  "\nWeep" "ing " "may " en "dure " "for " "a " "night; "
  "\nBut " "joy " com "eth " "in " "the " morn "ing!\n"

  \set stanza = "4."
  "\nOh, " "may " "we " "all " "be " "glad " to "day!— "
  "\nFor " "joy " com "eth " "in " "the " morn "ing! "
  "\nOur " "God " "shall " "wipe " "all " "tears " a "way: "
  "\nFor " "joy " com "eth " "in " "the " morn "ing! "
  "\nJoy " com "eth " "in " "the " morn "ing! "
  "\nJoy " com "eth " "in " "the " morn "ing! "
  "\nWeep" "ing " "may " en "dure " "for " "a " "night; "
  "\nBut " "joy " com "eth " "in " "the " morn "ing! "
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

#(set-global-staff-size 19)

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
            \new Lyrics \lyricsto "aligner"   \wordsFour
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
                                              \wordsFour  \chorus
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
