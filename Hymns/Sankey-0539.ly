\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "A Shelter in the Time of Storm!"
  subtitle    = "Sankey No. 539"
  subsubtitle = "Sankey 880 No. 512"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Ira D. Sankey."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup {\smallCaps "V. J. C." "in \"Song Services\""}
%  meter       = \markup\smallCaps "meter"
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

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
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  c'4 | f f f g | a bes c4. a8 | 8. 16 8. 16 bes4 a | g2. \bar "|" \break
  c,4 | f f f g | a bes c4. f,8^\p | a8. 16 8 f g4 4 | f2. \bar "|" \break
  c'4\fermata^\markup\smallCaps Chorus. | d8. 16 8. 16 4 e8. d16 | c4 4 4. a8 | bes4 4 4. g8 | a4 4 4 \bar "|" \break
  c4 | d8. 16 8. 16 4 e8. d16 | c4 4 4. f,8 | a8. 16 8 f g4 4 | f2.
}

alto = \relative {
  \autoBeamOff
  c'4 | c c c e | f4 g a4. f8 | 8. 16 8. 16 g4 f | e2.
  c4 | 4 4 4 e | f g a4. f8^\p | 8. 16 8 8 e4 4 | f2.
  f4\fermata | 8. 16 8. 16 4 8. 16 | 4 e r4. 8 | e4 4 4. 8 | f4 4 4
  f4 | 8. 16 8. 16 4 8. 16 | 4 e f4. 8 | 8. 16 8 8 e4 4 | f2.
}

tenor = \relative {
  \autoBeamOff
  a4 | a a a c | c c f4. c8 | 8. 16 8. 16 4 4 | 2.
  b4 | a a a c | c c f4. a,8^\p | c8. 16 8 a bes4 4 | a2.
  a4\fermata bes8. 16 8. 16 4 8. 16 | a4 g a4. f8 | g4 4 4. c8 | 4 4 4
  a4 | b8. 16 8. 16 4 8. 16 | a4 g a4. b8 | c8. 16 8 a bes4 4 | a2.
}

bass = \relative {
  \autoBeamOff
  f4 | 4 4 4 c | f4 4 4. 8 | 8. 16 8. 16 e4 f | c2.
  e4 | f4 4 4 c | f4 4 4. 8^\p | c8. 16 8 8 4 4 | f2.
  f4\fermata | bes,8. 16 8. 16 4 8. 16 | f'4 c f4. 8 | c4 4 4. e8 | f4 4 4
  f4 | bes,8. 16 8. 16 4 8. 16 | f'4 c f4. d8 | c8. 16 8 8 4 4 | f,2.
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  Oh, Je -- sus is a Rock in a wea -- ry land!
  A wea -- ry land, a wea -- ry land;
  Oh, Je -- sus is a Rock in a wea -- ry land,—
  A shel -- ter in the time of storm!
}

chorusMen = \lyricmode {
}

verses = 4

wordsOne = \lyricmode {
  \set stanza = "1."
  The Lord's our Rock, in Him we hide:
  A shel -- ter in the time of storm!
  Se -- cure what -- ev -- er ill be -- tide:
  A shel -- ter in the time of storm.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  A shade by day, de -- fence by night;
  A shel -- ter in the time of storm!
  No fears a -- larm, no foes af -- fright;
  A shel -- ter in the time of storm!
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  The ra -- ging storms may round us beat:
  A shel -- ter in the time of storm!
  We'll ne -- ver leave our safe re -- treat,
  A shel -- ter in the time of storm!
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  O Rock di -- vine, O Re -- fuge dear:
  A shel -- ter in the time of storm!
  Be Thou our help -- er ev -- er near,
  A shel -- ter in the time of storm!
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "The " "Lord's " "our " "Rock, " "in " "Him " "we " "hide: "
  "\nA " shel "ter " "in " "the " "time " "of " "storm! "
  "\nSe" "cure " what ev "er " "ill " be "tide: "
  "\nA " shel "ter " "in " "the " "time " "of " "storm. "
  "\nOh, " Je "sus " "is " "a " "Rock " "in " "a " wea "ry " "land! "
  "\nA " wea "ry " "land, " "a " wea "ry " "land; "
  "\nOh, " Je "sus " "is " "a " "Rock " "in " "a " wea "ry " "land,— "
  "\nA " shel "ter " "in " "the " "time " "of " "storm!\n"

  \set stanza = "2."
  "\nA " "shade " "by " "day, " de "fence " "by " "night; "
  "\nA " shel "ter " "in " "the " "time " "of " "storm! "
  "\nNo " "fears " a "larm, " "no " "foes " af "fright; "
  "\nA " shel "ter " "in " "the " "time " "of " "storm! "
  "\nOh, " Je "sus " "is " "a " "Rock " "in " "a " wea "ry " "land! "
  "\nA " wea "ry " "land, " "a " wea "ry " "land; "
  "\nOh, " Je "sus " "is " "a " "Rock " "in " "a " wea "ry " "land,— "
  "\nA " shel "ter " "in " "the " "time " "of " "storm!\n"

  \set stanza = "3."
  "\nThe " ra "ging " "storms " "may " "round " "us " "beat: "
  "\nA " shel "ter " "in " "the " "time " "of " "storm! "
  "\nWe'll " ne "ver " "leave " "our " "safe " re "treat, "
  "\nA " shel "ter " "in " "the " "time " "of " "storm! "
  "\nOh, " Je "sus " "is " "a " "Rock " "in " "a " wea "ry " "land! "
  "\nA " wea "ry " "land, " "a " wea "ry " "land; "
  "\nOh, " Je "sus " "is " "a " "Rock " "in " "a " wea "ry " "land,— "
  "\nA " shel "ter " "in " "the " "time " "of " "storm!\n"

  \set stanza = "4."
  "\nO " "Rock " di "vine, " "O " Re "fuge " "dear: "
  "\nA " shel "ter " "in " "the " "time " "of " "storm! "
  "\nBe " "Thou " "our " help "er " ev "er " "near, "
  "\nA " shel "ter " "in " "the " "time " "of " "storm! "
  "\nOh, " Je "sus " "is " "a " "Rock " "in " "a " wea "ry " "land! "
  "\nA " wea "ry " "land, " "a " wea "ry " "land; "
  "\nOh, " Je "sus " "is " "a " "Rock " "in " "a " wea "ry " "land,— "
  "\nA " shel "ter " "in " "the " "time " "of " "storm! "
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
