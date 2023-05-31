\version "2.25.0"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Precious Thoughts."
  subtitle    = "Sankey No. 651"
%  subsubtitle = "Sankey 880 No. Y"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Ira D. Sankey."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "M. L. Tilden."
%  meter       = \markup\smallCaps "meter"
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

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  aes'8. bes16 | c4. des8 c8. bes16 | aes2 g8. aes16 | bes4. ees,8 aes8. bes16 | c2 \bar "|" \break
  aes8. bes16 | c4. des8 c8. bes16 | aes2 g8. f16 | ees4(aes) bes | aes2
  \section \sectionLabel \markup\smallCaps Refrain \break
  g8. aes16 | bes4. des8 c8. bes16 | c2 8. des16 | ees4. c8 des\fermata c\fermata | bes2 \bar "|" \break
  ees,8. aes16 | c4. des8 c8. bes16 | aes2 g8. f16 | ees4(aes) bes | aes2
}

alto = \relative {
  \autoBeamOff
  c'8. des16 | ees4. f8 ees8. des16 | c2 des8. c16 | des4. ees8 8. 16 | 2
  c8. des16 | ees4. f8 ees8. des16 | c2 b8. 16 | c2 des4 | c2 \section
  bes8. c16 | des4. f8 ees8. g16 | aes2 ees8. 16 | aes4. ees8 8\fermata 8\fermata | 2
  c8. 16 | ees4. f8 ees8. des16 | c2 b8. 16 | c2 des4 | c2
}

tenor = \relative {
  \autoBeamOff
  ees8. 16 | aes4. 8 g8. 16 | aes2 bes8. aes16 | g4. 8 aes8. g16 | aes2
  aes8. 16 | 4. 8 g8. 16 | aes2 8. 16 | aes4(ees) g | aes2 \section
  r4 | g8. 16  8 r r4 | ees'8. 16 4 aes,8. bes16 | c4. aes8 bes\fermata aes\fermata | g2
  aes8. 16 | 4. 8 g8. 16 | aes2 8. 16 | 4(ees) g | aes2
}

bass = \relative {
  \autoBeamOff
  aes,8. 16 | 4. des8 ees8. 16 | aes,2 ees'8. 16 | 4. des8 c8. ees16 | aes2
  aes,8. 16 | 4. des8 ees8. e16 | f2 d8. 16 | ees2 4 | aes,2 \section
  r4 | ees'8. 16 8 r r4 | aes8. 16 4 8. 16 | 4. 8 g\fermata aes\fermata | ees2
  aes8. 16 | 4. des,8 ees8. e16 | f2 d8. 16 | ees2 4 | aes,2
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
}

chorusMen = \lyricmode {
  \small
  \repeat unfold 26 _
  \set stanza = "1."
  Hold -- eth me, hold -- eth me;
  \repeat unfold 19 _
}

verses = 3

wordsOne = \lyricmode {
  \set stanza = "1."
  To the cross of Christ I cling;
  Tho' but faint my faith may be.
  Yet this thought doth com -- fort bring:
  Je -- sus hold -- eth me.
  Hold -- eth me, __ He hold -- eth me; __
  Tho' but faint my hold may be,
  Yet this thought doth com -- fort bring:
  Je -- sus hold -- eth me.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Low at Je -- sus feet I plead;
  Bro -- ken though my prayer may be,
  Pre -- cious is the thought in -- deed:
  Je -- sus pleads for me.
  Pleads for me, __ He pleads for me;
  Bro -- ken tho' my prayer may be.
  Pre -- cious is the thought in -- deed:
  Je -- sus pleads for me.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Can I say I love the Lord?
  Cold at times my love may be,
  Yet how pre -- cious is the word:
  Je -- sus lov -- eth me.
  Lov -- eth me, __ He lov -- eth me; __
  Cold at times my heart may ne,
  Yet how pre -- cious is the word:
  Je -- sus lov -- eth me.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "To " "the " "cross " "of " "Christ " "I " "cling; "
  "\nTho' " "but " "faint " "my " "faith " "may " "be. "
  "\nYet " "this " "thought " "doth " com "fort " "bring: "
  "\nJe" "sus " hold "eth " "me. "
  "\nHold" "eth " "me, "  "He " hold "eth " "me; " 
  "\nTho' " "but " "faint " "my " "hold " "may " "be, "
  "\nYet " "this " "thought " "doth " com "fort " "bring: "
  "\nJe" "sus " hold "eth " "me.\n"

  \set stanza = "2."
  "\nLow " "at " Je "sus " "feet " "I " "plead; "
  "\nBro" "ken " "though " "my " "prayer " "may " "be, "
  "\nPre" "cious " "is " "the " "thought " in "deed: "
  "\nJe" "sus " "pleads " "for " "me. "
  "\nPleads " "for " "me, "  "He " "pleads " "for " "me; "
  "\nBro" "ken " "tho' " "my " "prayer " "may " "be. "
  "\nPre" "cious " "is " "the " "thought " in "deed: "
  "\nJe" "sus " "pleads " "for " "me.\n"

  \set stanza = "3."
  "\nCan " "I " "say " "I " "love " "the " "Lord? "
  "\nCold " "at " "times " "my " "love " "may " "be, "
  "\nYet " "how " pre "cious " "is " "the " "word: "
  "\nJe" "sus " lov "eth " "me. "
  "\nLov" "eth " "me, "  "He " lov "eth " "me; " 
  "\nCold " "at " "times " "my " "heart " "may " "ne, "
  "\nYet " "how " pre "cious " "is " "the " "word: "
  "\nJe" "sus " lov "eth " "me. "
}

wordsMidiMen = \lyricmode {
  \set stanza = "1."
  "To " "the " "cross " "of " "Christ " "I " "cling; "
  "\nTho' " "but " "faint " "my " "faith " "may " "be. "
  "\nYet " "this " "thought " "doth " com "fort " "bring: "
  "\nJe" "sus " hold "eth " "me. "
  "\nHold" "eth " "me, "  hold "eth " "me; " 
  "\nTho' " "but " "faint " "my " "hold " "may " "be, "
  "\nYet " "this " "thought " "doth " com "fort " "bring: "
  "\nJe" "sus " hold "eth " "me.\n"

  \set stanza = "2."
  "\nLow " "at " Je "sus " "feet " "I " "plead; "
  "\nBro" "ken " "though " "my " "prayer " "may " "be, "
  "\nPre" "cious " "is " "the " "thought " in "deed: "
  "\nJe" "sus " "pleads " "for " "me. "
  "\nPleads " "for " "me, "  "pleads " "for " "me; "
  "\nBro" "ken " "tho' " "my " "prayer " "may " "be. "
  "\nPre" "cious " "is " "the " "thought " in "deed: "
  "\nJe" "sus " "pleads " "for " "me.\n"

  \set stanza = "3."
  "\nCan " "I " "say " "I " "love " "the " "Lord? "
  "\nCold " "at " "times " "my " "love " "may " "be, "
  "\nYet " "how " pre "cious " "is " "the " "word: "
  "\nJe" "sus " lov "eth " "me. "
  "\nLov" "eth " "me, "  lov "eth " "me; " 
  "\nCold " "at " "times " "my " "heart " "may " "ne, "
  "\nYet " "how " pre "cious " "is " "the " "word: "
  "\nJe" "sus " lov "eth " "me. "
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
