\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "We are Coming Home To-Night."
  subtitle    = "Sankey No. 487"
  subsubtitle = "N. H. No. 40"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "R. Lowry."
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

% #(set-global-staff-size 16)

global = {
  \key g \major
  \time 4/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s4 s1 s2
  \mark \markup { \box "B" } s2 s1
  \mark \markup { \box "C" }    s1*2
  \mark \markup { \box "D" }    s1*2
  \mark \markup { \box "E" }    s1*2
  \mark \markup { \box "F" }    s1*2 s2.
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  g'8 a | b16 8. c b16 8 a fis g | a8 8 b8. a16 \bar "|" \break g4 b8 c |
  d16 8. e d16 8 b c b |
  a8 d8 8. cis16 d4\fermata \bar "||" 8^\markup\smallCaps Refrain. c | b16 8.~4 d e8 d |
  b16 8.~4 d c8 b | a16 8. 8. 16 8 c b8. a16 \break |
  b2(d4) b8 8 | c16 8.~4 4 g8 a |
  b16 8.~4 4 g8 8 | a16 8.~4 b4. a8 | g2.
}

alto = \relative {
  \autoBeamOff
  d'8 8 | g16 8. 8. 16 8 fis d d | f8 8 8. 16 g4 8 8 |
  g16 8. 8. 16 8 8 a g |
  f8 8 8. g16 fis4\fermata  8 a | g16 8.~4 4 8 8 |
  g16 8.~4 b a8 g | f16 8. 8. 16 8 a g8. f16 |
  g2. d8 8 | e16 8.~4 4 8 8 |
  d16 8.~4 4 8 8 | fis16 8.~4 4. 8 | g2.
}

tenor = \relative {
  \autoBeamOff
  b8 c | d16 8. e d16 8 c a b | c8 8 d8. c16 b4 g8 a |
  b16 8. c b16 8 d d d |
  d8 a8 8. 16 4\fermata 8 d | 16 8. 16 8. b4 c8 b |
  d16 8. 16 8. 4 8 8 | 16 8. 8. 16 8 8 8. 16 |
  d4 8. 16 b4 g8 8 | 16 8. 16 8. 4 8 8 |
  g16 8. 16 8. 4 b8 8 | c16 8. 16 8. d4. c8 | b2.
}

bass = \relative {
  \autoBeamOff
  g8 8 | 16 8. 8. 16 d8 8 8 8 | 8 8 8. 16 g,4 g'8 8 |
  g16 8. 8. 16 g8 g8 fis g |
  a8 8 a,8. 16 d4\fermata 8 fis | g16 8. 16 8. 4 8 8 |
  g16 8. 16 8. 4 fis8 g | d16 8. 8. 16 8 8 8. 16 |
  d4 8. 16 b4 g8 8 | 16 8. 16 8. 4 8 8 |
  g16 8. 16 8. 4 b8 8 | c16 8. 16 8. d4. c8 | b2.
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  We are com -- ing home,
  we are com -- ing __ home,
  We are com -- ing from the dark -- ness to the light; __
  We are com -- ing __ home,
  we are com -- ing __ home,
  We are com -- ing __ home to -- night.
}

chorusMen = \lyricmode {
  _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _
  _ _ com -- ing, com -- ing,
  _ _ _ com -- ing, com -- ing, _
  _ _ _ _ _ _ _ _ _ _ light, to the light;
  _ _ com -- ing, com -- ing _
  _ _ com -- ing, com -- ing, _
  _ _ com -- ing, com -- ing _ _ _
}

verses = 3

wordsOne = \lyricmode {
  \set stanza = "1."
  We are com -- ing home to Je -- sus,
  We have heard His wel -- come voice;
  We are trust -- ing in His good -- ness,
  In His mer -- cy we re -- joice.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  We are com -- ing home to Je -- sus,
  For He died that we might live:
  He is will -- ing to re -- ceive us,
  He is wait -- ing to for -- give.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  We are com -- ing home to Je -- sus,
  By the cross our on -- ly way;
  There He fin -- ished our re -- demp -- tion,
  And we can no more de -- lay.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "We " "are " com "ing " "home " "to " Je "sus, "
  "\nWe " "have " "heard " "His " wel "come " "voice; "
  "\nWe " "are " trust "ing " "in " "His " good "ness, "
  "\nIn " "His " mer "cy " "we " re "joice. "
  "\nWe " "are " com "ing " "home, "
  "\nwe " "are " com "ing "  "home, "
  "\nWe " "are " com "ing " "from " "the " dark "ness " "to " "the " "light; " 
  "\nWe " "are " com "ing "  "home, "
  "\nwe " "are " com "ing "  "home, "
  "\nWe " "are " com "ing "  "home " to "night.\n"

  \set stanza = "2."
  "\nWe " "are " com "ing " "home " "to " Je "sus, "
  "\nFor " "He " "died " "that " "we " "might " "live: "
  "\nHe " "is " will "ing " "to " re "ceive " "us, "
  "\nHe " "is " wait "ing " "to " for "give. "
  "\nWe " "are " com "ing " "home, "
  "\nwe " "are " com "ing "  "home, "
  "\nWe " "are " com "ing " "from " "the " dark "ness " "to " "the " "light; " 
  "\nWe " "are " com "ing "  "home, "
  "\nwe " "are " com "ing "  "home, "
  "\nWe " "are " com "ing "  "home " to "night.\n"

  \set stanza = "3."
  "\nWe " "are " com "ing " "home " "to " Je "sus, "
  "\nBy " "the " "cross " "our " on "ly " "way; "
  "\nThere " "He " fin "ished " "our " re demp "tion, "
  "\nAnd " "we " "can " "no " "more " de "lay. "
  "\nWe " "are " com "ing " "home, "
  "\nwe " "are " com "ing "  "home, "
  "\nWe " "are " com "ing " "from " "the " dark "ness " "to " "the " "light; " 
  "\nWe " "are " com "ing "  "home, "
  "\nwe " "are " com "ing "  "home, "
  "\nWe " "are " com "ing "  "home " to "night. "
}

wordsMidiMen = \lyricmode {
  \set stanza = "1."
  "We " "are " com "ing " "home " "to " Je "sus, "
  "\nWe " "have " "heard " "His " wel "come " "voice; "
  "\nWe " "are " trust "ing " "in " "His " good "ness, "
  "\nIn " "His " mer "cy " "we " re "joice. "
  "\nWe " "are " com "ing, " com "ing " "home, "
  "\nwe " "are " com "ing, " com "ing " "home, "
  "\nWe " "are " com "ing " "from " "the " dark "ness " "to " "the " "light; "
  "\nto " "the " "light; "
  "\nWe " "are " com "ing, " com "ing " "home, "
  "\nwe " "are " com "ing, " com "ing " "home, "
  "\nWe " "are " com "ing, " com "ing " "home " to "night.\n"

  \set stanza = "2."
  "\nWe " "are " com "ing " "home " "to " Je "sus, "
  "\nFor " "He " "died " "that " "we " "might " "live: "
  "\nHe " "is " will "ing " "to " re "ceive " "us, "
  "\nHe " "is " wait "ing " "to " for "give. "
  "\nWe " "are " com "ing, " com "ing " "home, "
  "\nwe " "are " com "ing, " com "ing " "home, "
  "\nWe " "are " com "ing " "from " "the " dark "ness " "to " "the " "light; "
  "\nto " "the " "light; "
  "\nWe " "are " com "ing, " com "ing " "home, "
  "\nwe " "are " com "ing, " com "ing " "home, "
  "\nWe " "are " com "ing, " com "ing " "home " to "night.\n"

  \set stanza = "3."
  "\nWe " "are " com "ing " "home " "to " Je "sus, "
  "\nBy " "the " "cross " "our " on "ly " "way; "
  "\nThere " "He " fin "ished " "our " re demp "tion, "
  "\nAnd " "we " "can " "no " "more " de "lay. "
  "\nWe " "are " com "ing, " com "ing " "home, "
  "\nwe " "are " com "ing, " com "ing " "home, "
  "\nWe " "are " com "ing " "from " "the " dark "ness " "to " "the " "light; "
  "\nto " "the " "light; "
  "\nWe " "are " com "ing, " com "ing " "home, "
  "\nwe " "are " com "ing, " com "ing " "home, "
  "\nWe " "are " com "ing, " com "ing " "home " to "night. "
}

\book {
  \bookOutputSuffix "midi-women"
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
          \new Lyrics \lyricsto alignerT \chorusMen
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
          \new Lyrics \lyricsto alignerT { \repeat unfold \verses \chorusMen }
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
