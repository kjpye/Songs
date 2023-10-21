\version "2.25.0"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Able to Deliver."
  subtitle    = "Sankey No. 709"
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

  poet        = \markup\smallCaps "Fanny J. Crosby."
%  meter       = \markup\smallCaps "meter"
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key bes \major
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
  d'8.[ees16] |  f4 4 4 bes8. c16 | bes4 aes4 4 c,8. d16 | ees4 4 4 a8. g16 | 4 f f \bar "|" \break
  d8. ees16 | f4 4 4 d'8. 16 | c4 g g c8.[bes16] | a4 a bes c | bes2.
  \section \sectionLabel \markup\smallCaps Chorus. \break
  f8. bes16 | d4 4 4 ees8. d16 | 4 c c f,8. a16 | c4 4 4 d8. c16 | 4 bes bes \bar "|" \break
  f8. 16 | g4 g bes a8. g16 | f4 bes d bes | c g a f | bes2.
}

alto = \relative {
  \autoBeamOff
  bes8.[c16] | d4 4 4 f8. ees16 | d4 c c a8. bes16 | c4 4 4 ees8. 16 | d4 4 4
  bes8. c16 d4 4 4 f8. 16 | ees4 4 4 e8.[g16] | d4 ees d ees | d2. \section
  d8. 16 | f4 4 4 g8. f16 | 4 ees4 4 8. 16 | 4 4 4 f8. e16 | 4 d d
  d8. 16 | ees4 4 g4 f8. ees16 | d4 4 f f | ees4 4 4 4 | d2.
}

tenor = \relative {
  \autoBeamOff
  f4 | bes4 4 4 8. g16 | f4 4 4 8. 16 | a4 4 4 c8. a16 | bes4 4 4
  f8. 16 | bes4 4 4 8. 16 | g4 bes4 4 c | c c bes a bes2. \section
  bes8. 16 | 4 4 4 8. 16 | a4 4 4 8. c16 | a4 4 4 f8. a16 | bes4 4 f |
  bes8. 16 | 4 4 4 8. 16 | 4 f bes aes | g c c a | f2.
}

bass = \relative {
  \autoBeamOff
  bes,4 | 4 4 4 d8. ees16 | f4 4 4 8. 16 | 4 4 4 8. 16 | bes,4 4 4
  bes8. 16 | 4 4 4 8. 16 | ees4 4 4 c | f f f f | bes,2. \section
  bes8. 16 | 4 4 4 8. 16 | f'4 4 4 8. 16 | 4 4 4 8. 16 | bes,4 4 4
  bes8. 16 | ees4 4 4 8. 16 | bes4 4 4 d | ees4 4 f f | bes,2.
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  He is a -- ble still to de -- liv -- er thee,
  And His own right hand thy de -- fence shall be:
  He is a -- ble still to de -- liv -- er thee,
  Then be thou not a -- fraid.
}

chorusMen = \lyricmode {
}

verses = 3

wordsOne = \lyricmode {
  \set stanza = "1."
  O troub -- led heart, be thou not a -- fraid,
  In the Lord thy God let thy hope by stayed;
  He will hear thy cry and will give thee aid,
  What -- e'er thy cross may be.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  O troub -- led heart, tho' thy foes u -- nite,
  Let thy faith be strong and thy ar -- mour bright;
  Thou shalt o -- ver -- come thro' His power and might,
  And more than con -- q'ror be.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  O troub -- led heart, when thy way is drear,
  He will res -- cue thee and dis -- pel thy fear;
  In thy great -- est need He is al -- ways near—
  To Him all glo -- ry be!
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "O " troub "led " "heart, " "be " "thou " "not " a "fraid, "
  "\nIn " "the " "Lord " "thy " "God " "let " "thy " "hope " "by " "stayed; "
  "\nHe " "will " "hear " "thy " "cry " "and " "will " "give " "thee " "aid, "
  "\nWhat" "e'er " "thy " "cross " "may " "be. "
  "\nHe " "is " a "ble " "still " "to " de liv "er " "thee, "
  "\nAnd " "His " "own " "right " "hand " "thy " de "fence " "shall " "be: "
  "\nHe " "is " a "ble " "still " "to " de liv "er " "thee, "
  "\nThen " "be " "thou " "not " a "fraid.\n"

  \set stanza = "2."
  "\nO " troub "led " "heart, " "tho' " "thy " "foes " u "nite, "
  "\nLet " "thy " "faith " "be " "strong " "and " "thy " ar "mour " "bright; "
  "\nThou " "shalt " o ver "come " "thro' " "His " "power " "and " "might, "
  "\nAnd " "more " "than " con "q'ror " "be. "
  "\nHe " "is " a "ble " "still " "to " de liv "er " "thee, "
  "\nAnd " "His " "own " "right " "hand " "thy " de "fence " "shall " "be: "
  "\nHe " "is " a "ble " "still " "to " de liv "er " "thee, "
  "\nThen " "be " "thou " "not " a "fraid.\n"

  \set stanza = "3."
  "\nO " troub "led " "heart, " "when " "thy " "way " "is " "drear, "
  "\nHe " "will " res "cue " "thee " "and " dis "pel " "thy " "fear; "
  "\nIn " "thy " great "est " "need " "He " "is " al "ways " "near— "
  "\nTo " "Him " "all " glo "ry " "be! "
  "\nHe " "is " a "ble " "still " "to " de liv "er " "thee, "
  "\nAnd " "His " "own " "right " "hand " "thy " de "fence " "shall " "be: "
  "\nHe " "is " a "ble " "still " "to " de liv "er " "thee, "
  "\nThen " "be " "thou " "not " a "fraid. "
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
