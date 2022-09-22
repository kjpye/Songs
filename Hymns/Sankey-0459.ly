\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Believe ye that He is Able?"
  subtitle    = "Sankey No. 459"
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

  poet        = \markup\smallCaps "Julia H. Johnston."
  meter       = \markup\smallCaps "7.6."
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key ees \major
  \time 3/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s4 s2.*3 s2
  \mark \markup { \box "B" } s4 s2.*3 s2
  \mark \markup { \box "C" } s4 s2.*3 s2
  \mark \markup { \box "D" } s4 s2.*3 s2
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff \partial 4
  ees'4 | g4. 8 aes d, | f4 ees ees | ees4. aes8 ees f | g2 \bar "|" \break 4 |
  bes4. f8 g aes | aes4 g g | f4. bes8 a c | bes2 \bar "|" \break 4^\markup\smallCaps Chorus. |
  bes4. 8 c bes | bes4 g bes | ees4. 8 d c | bes2 \bar "|" \break ees,4 |
  aes4. g8 c bes | bes4  ees, aes | g4. ees8 g f | ees2
  
}

alto = \relative {
  \autoBeamOff \partial 4
  ees'4 | 4. 8 d bes | d4 ees des | c4. ees8 8 8 | ees2 4 |
  d4. 8 ees d | f4 ees des | d4. f8 ees ees | d2 ees4 |
  ees4. 8 8 8 | ees4 4 4 | ees4. g8 f ees | d2 ees4 |
  d4. ees8 8 8 | ees4 4 f | ees4. bes8 d d | ees2
}

tenor = \relative {
  \autoBeamOff \partial 4
  g4 | bes4. 8 8 aes | aes4 g g | aes4. c8 c ces | bes2 4 |
  bes4. aes8 g f | bes4 4 4 | bes4. d8 c a | bes2 g4 |
  g4. 8 aes g | g4 bes g | g4. bes8 a a | bes2 4 |
  bes4. 8 aes g | g4 bes c | bes4. g8 bes aes | g2
}

bass = \relative {
  \autoBeamOff \partial 4
  ees4 | 4. 8 bes bes | bes4 ees ees | aes,4. 8 8 8 | ees'2 4 |
  bes4. 8 8 8 | d4 ees e | f4. 8 8 8 | bes,2 ees4 |
  ees4. 8 8 8 | ees4 4 4 | c4. 8 f f | bes4(aes) g |
  f4. ees8 8 8 | ees4 g, aes | bes4. 8 8 8 | ees2
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  Oh, look to Je -- sus on -- ly,
  With Him is love and might;
  Be -- lieve that He is a -- ble
  To lead you in -- to light.
}

chorusMen = \lyricmode {
}

verses = 4

wordsOne = \lyricmode {
  \set stanza = "1."
  O souls in dark -- ness gro -- ping,
  And long -- ing for the light,
  Be -- lieve ye that the Sa -- viour
  Can give the blind their sight?
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Of old He had com -- pas -- sion,
  The Lord of life and love,
  And He is "\"that" same Je -- "sus,\""
  En -- throned in light a -- bove.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  He claims your faith un -- doubt -- ing;
  "\"Be" -- lieve "ye!\"" is His word:
  Was ev -- er voice so ten -- der
  By wea -- ry mor -- tal heard?
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  And now that Christ is a -- ble
  His prom -- ise to ful -- fil,
  Oh, cast your -- selves up -- on Him,
  And say, "\"I" know \markup\italic He \markup\italic "will!\""
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "O " "souls " "in " dark "ness " gro "ping, "
  "\nAnd " long "ing " "for " "the " "light, "
  "\nBe" "lieve " "ye " "that " "the " Sa "viour "
  "\nCan " "give " "the " "blind " "their " "sight? "
  "\nOh, " "look " "to " Je "sus " on "ly, "
  "\nWith " "Him " "is " "love " "and " "might; "
  "\nBe" "lieve " "that " "He " "is " a "ble "
  "\nTo " "lead " "you " in "to " "light.\n"

  \set stanza = "2."
  "\nOf " "old " "He " "had " com pas "sion, "
  "\nThe " "Lord " "of " "life " "and " "love, "
  "\nAnd " "He " "is " "\"that " "same " Je "sus,\" "
  "\nEn" "throned " "in " "light " a "bove. "
  "\nOh, " "look " "to " Je "sus " on "ly, "
  "\nWith " "Him " "is " "love " "and " "might; "
  "\nBe" "lieve " "that " "He " "is " a "ble "
  "\nTo " "lead " "you " in "to " "light.\n"

  \set stanza = "3."
  "\nHe " "claims " "your " "faith " un doubt "ing; "
  "\n\"Be" "lieve " "ye!\" " "is " "His " "word: "
  "\nWas " ev "er " "voice " "so " ten "der "
  "\nBy " wea "ry " mor "tal " "heard? "
  "\nOh, " "look " "to " Je "sus " on "ly, "
  "\nWith " "Him " "is " "love " "and " "might; "
  "\nBe" "lieve " "that " "He " "is " a "ble "
  "\nTo " "lead " "you " in "to " "light.\n"

  \set stanza = "4."
  "\nAnd " "now " "that " "Christ " "is " a "ble "
  "\nHis " prom "ise " "to " ful "fil, "
  "\nOh, " "cast " your "selves " up "on " "Him, "
  "\nAnd " "say, " "\"I " "know " "He " "will!\" "
  "\nOh, " "look " "to " Je "sus " on "ly, "
  "\nWith " "Him " "is " "love " "and " "might; "
  "\nBe" "lieve " "that " "He " "is " a "ble "
  "\nTo " "lead " "you " in "to " "light. "
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
