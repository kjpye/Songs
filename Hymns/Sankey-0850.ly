\version "2.25.16"

\include "../kjp.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "I Came a Wanderer."
  subtitle    = "Sankey No. 850"
  subsubtitle = "Sankey 880 No. 490"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Ira D. Sankey."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Julia Sterling."
  meter       = \markup\smallCaps "C.M."
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key aes \major
  \time 3/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s4 s2.*3 s2
  \textMark \markup { \box \bold "B" } s4 s2.*3 s2
  \textMark \markup { \box \bold "C" } s4 s2.*3 s2
  \textMark \markup { \box \bold "D" } s4 s2.*3 s2
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

soprano = \relative {
  \autoBeamOff
  aes'4 | c8 8 4 aes | f8 aes ees4 aes | bes4. 8 aes bes | c2 \bar "|" \break
  aes4 | c8 8 4 aes | f8 aes ees4 aes | bes4. aes8 bes c | aes2
  \section \sectionLabel \markup\smallCaps Chorus \break
  aes8[c] | ees8 8 4 c | aes8 f aes4 8[c] | ees8 8 4 c | bes2 \bar "|" \break
  aes4 | c8 8 4 aes | f8 aes ees4 aes | bes4. aes8 bes c | aes2
}

alto = \relative {
  \autoBeamOff
  c'4 | ees8 8 4 4 | des8 8 c4 ees | g4. 8 f g | aes2
  ees4 | 8 8 4 4 | des8 8 c4 ees | g4. aes8 g g | aes2 \section
  c,8[ees] | aes g aes4 ees | f8des c4 8[ees] | aes g aes4 ees | 2
  c4 | ees8 8 4 4 | des8 8 c4 ees | des4. c8 des ees | c2
}

tenor = \relative {
  \autoBeamOff
  aes4 | 8 8 4 4 | 8 8 4 c | des4. 8 c ees | 2
  c4 | aes8 8 4 4 | 8 8 4 c | des4. c8 des ees | c2 \section
  aes4 | c8 bes c4 aes | 8 8 4 4 | c8 bes c4 aes | g2
  aes4 | 8 8 4 4 | 8 8 4 4 | g4. aes8 g g | aes2
}

bass = \relative {
  \autoBeamOff
  aes,4 | 8 8 4 c | des8 f aes4 4 | ees4. 8 f ees | aes2
  aes4 | 8 8 4 c, | des8 f aes4 4 | ees4. 8 8 8 | aes2 \section
  aes4 | 8 ees aes4 aes, | des8 8 aes4 aes' | 8 ees aes,4 c | ees2
  aes,4 | 8 8 4 c | des8 f aes4 c, | ees4. 8 8 8 | aes,2
}

chorus = \lyricmode {
  O Je -- sus, Sa -- viour, Lamb of God,
  How much I owe to Thee,
  For all the won -- ders of Thy grace,
  And all Thy love to me!
}

chorusMen = \lyricmode {
}

verses = 4

wordsOne = \lyricmode {
  \set stanza = "1."
  I came a wan -- d’rer, and a -- lone,
  My way was dark as night;
  I looked to Thee, O bles -- sed One,
  And then I found the light.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  I came with all my doubts and fears,
  No hope but in Thy Word;
  And while I gazed up -- on the blood,
  Thy pard -- ‘ning voice I heard.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Oh, may the Spi -- rit’s power be felt,
  In this poor heart of mine!
  And make Thy Word my lamp and light,
  My shield and strength Di -- vine.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Oh, teach me, Lord, Thy voice to know,
  A -- mid the sur -- ging throng;
  Be Thou my hope, my lief, my joy,
  My ev -- er -- last -- ing song.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "I " "came " "a " wan "d’rer, " "and " a "lone, "
  "\nMy " "way " "was " "dark " "as " "night; "
  "\nI " "looked " "to " "Thee, " "O " bles "sed " "One, "
  "\nAnd " "then " "I " "found " "the " "light. "
  "\nO " Je "sus, " Sa "viour, " "Lamb " "of " "God, "
  "\nHow " "much " "I " "owe " "to " "Thee, "
  "\nFor " "all " "the " won "ders " "of " "Thy " "grace, "
  "\nAnd " "all " "Thy " "love " "to " "me!\n"

  \set stanza = "2."
  "\nI " "came " "with " "all " "my " "doubts " "and " "fears, "
  "\nNo " "hope " "but " "in " "Thy " "Word; "
  "\nAnd " "while " "I " "gazed " up "on " "the " "blood, "
  "\nThy " pard "‘ning " "voice " "I " "heard. "
  "\nO " Je "sus, " Sa "viour, " "Lamb " "of " "God, "
  "\nHow " "much " "I " "owe " "to " "Thee, "
  "\nFor " "all " "the " won "ders " "of " "Thy " "grace, "
  "\nAnd " "all " "Thy " "love " "to " "me!\n"

  \set stanza = "3."
  "\nOh, " "may " "the " Spi "rit’s " "power " "be " "felt, "
  "\nIn " "this " "poor " "heart " "of " "mine! "
  "\nAnd " "make " "Thy " "Word " "my " "lamp " "and " "light, "
  "\nMy " "shield " "and " "strength " Di "vine. "
  "\nO " Je "sus, " Sa "viour, " "Lamb " "of " "God, "
  "\nHow " "much " "I " "owe " "to " "Thee, "
  "\nFor " "all " "the " won "ders " "of " "Thy " "grace, "
  "\nAnd " "all " "Thy " "love " "to " "me!\n"

  \set stanza = "4."
  "\nOh, " "teach " "me, " "Lord, " "Thy " "voice " "to " "know, "
  "\nA" "mid " "the " sur "ging " "throng; "
  "\nBe " "Thou " "my " "hope, " "my " "lief, " "my " "joy, "
  "\nMy " ev er last "ing " "song. "
  "\nO " Je "sus, " Sa "viour, " "Lamb " "of " "God, "
  "\nHow " "much " "I " "owe " "to " "Thee, "
  "\nFor " "all " "the " won "ders " "of " "Thy " "grace, "
  "\nAnd " "all " "Thy " "love " "to " "me! "
}

wordsMidiMen = \lyricmode {
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
            \addlyrics \wordsMidiMen
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
            \new NullVoice = alignerT { \keepWithTag #'dash \tenor }
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
            \new NullVoice = alignerT { \repeat-verses \verses \tenor }
          >>
          \new Lyrics \with {alignAboveContext = men} \lyricsto alignerT { \repeat unfold \verses \chorusMen }
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
