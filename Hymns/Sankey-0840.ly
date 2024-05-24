\version "2.25.16"

\include "../kjp.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "’Twill not be Long!"
  subtitle    = "Sankey No. 850"
  subsubtitle = "Sankey 880 No. 284"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "W. H. Doane."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Fanny J. Crosby."
  meter       = \markup\smallCaps "L.M."
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
  \textMark \markup { \box \bold "B" } s4 s1*3 s2.
  \textMark \markup { \box \bold "C" } s4 s1*3 s2.
  \textMark \markup { \box \bold "D" } s4 s1*3 s2.
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo \markup {\smallCaps Duet. \italic "Slow and Gliding"} 4=120
  s4 s1*7 \tempo "rit." 4=120 s1
  \tempo Allegro 4=120 s1*6 s2
  \tempo "rit." 4=120 s2 s2.
}

soprano = \relative {
  \autoBeamOff
  ees'8[f] | g4 4 4 aes | bes4. aes8 g4 f8[g] | aes4 4 4 c | 4. bes8 4 \bar "|" \break
  g8[aes] | bes4 4 4 ees | d4. c8 4 ees | 4 g, c8[bes] aes[f] | ees4 g8[f] ees4
  \section \sectionLabel \markup\smallCaps Refrain. \break
  g8[aes] | bes2. g8[aes] | bes2. 4 | ees4(d) ees c | bes2. \bar "|" \break
  aes4 | g(bes) ees g, | f(aes) c aes | g2 4.(f8) | ees2.
  \override Score.RehearsalMark.break-visibility = #begin-of-line-invisible
  \mark \markup { \musicglyph "scripts.ufermata" }
}

alto = \relative {
  \autoBeamOff
  ees'4 | 4 4 4 f | g4. f8 ees4 d8[ees] | f4 4 4 aes | 4. g8 4
  ees8[f] | g4 4 4 bes | 4. aes8 4 4 | g ees d d | ees d ees
  ees8[f] | g2. ees8[f] | g2. 4 | g(aes) bes aes | f2(ees4)
  d4 | ees(f) g ees | 2 4 f | ees2 d | ees2.
}

tenor = \relative {
  \autoBeamOff \tiny % Why do we need the following supposedly superfluos \tinys?
  g8[aes] | \tiny bes4 4 4 4 | ees4. bes8 4 4 | 4 4 4 d | ees4. 8 4
  \tiny bes4 | ees4 4 4 4 | 4. 8 4 c | bes4 4 f f8[aes] | g4 aes g \normalsize \section
  bes4 | 4 4 4 4 | 4 4 4 4 | \normalsize bes2 4 ees | d2(bes4)
  bes4 | 2 g4 bes | c2 aes4 c | bes2 4.(aes8) | g2.
}

bass = \relative {
  \autoBeamOff \tiny
  ees4 | 4 4 4 4 | 4. 8 4 bes | 4 4 4 4 | ees4. 8 4
  ees4 | 4 4 4 g | aes4. 8 4 4 | bes4 4 bes,4 4 | ees bes ees \section
  \normalsize ees4 | 4 4 4 4 | 4 4 4 4 | \normalsize 4(f) g aes | bes(aes g)
  f4 | e(d) c bes | aes2 4 4 | bes2 2 | ees2.
}

chorus = \lyricmode {
  Roll on, dark stream!
  We dread not thy foam;
  The Pil -- grim is long -- ing for Home, sweet Home.
}

chorusMen = \lyricmode {
  \repeat unfold 32 _
  Roll on, roll on, dark stream! roll on;
  \repeat unfold 15 _
}

verses = 4

wordsOne = \lyricmode {
  \set stanza = "1."
  "’T will" not be long— our jour -- ney here:
  Each bro -- ken sigh and fall -- ing tear
  Will soon be gone; and all will be
  A cloud -- less sky, a wave -- less sea.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  "’T will" not be long! the  yearn -- ing heart
  May feel its ev -- ’ry hope de -- part,
  And grief be ming -- led with its song;
  We’ll meet a -- gain, "’t will" not be long!
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Tho’ sad we mark the clos -- ing eye
  Of those we loved in days gone by,
  Yet sweet in death their la -- test song:
  “We’ll meet a -- gain, "’t will" not be long!”
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  These cheq -- uer’d  wilds, with thorns o'er -- spread,
  Thro' which our way so oft is led—
  This march of time, if faith be strongm
  Will end in bliss: "’t will" not be long!
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "’T will " "not " "be " "long— " "our " jour "ney " "here: "
  "\nEach " bro "ken " "sigh " "and " fall "ing " "tear "
  "\nWill " "soon " "be " "gone; " "and " "all " "will " "be "
  "\nA " cloud "less " "sky, " "a " wave "less " "sea. "
  "\nRoll " "on, " "dark " "stream! "
  "\nWe " "dread " "not " "thy " "foam; "
  "\nThe " Pil "grim " "is " long "ing " "for " "Home, " "sweet " "Home.\n"

  \set stanza = "2."
  "\n’T will " "not " "be " "long! " "the "  yearn "ing " "heart "
  "\nMay " "feel " "its " ev "’ry " "hope " de "part, "
  "\nAnd " "grief " "be " ming "led " "with " "its " "song; "
  "\nWe’ll " "meet " a "gain, " "’t will " "not " "be " "long! "
  "\nRoll " "on, " "dark " "stream! "
  "\nWe " "dread " "not " "thy " "foam; "
  "\nThe " Pil "grim " "is " long "ing " "for " "Home, " "sweet " "Home.\n"

  \set stanza = "3."
  "\nTho’ " "sad " "we " "mark " "the " clos "ing " "eye "
  "\nOf " "those " "we " "loved " "in " "days " "gone " "by, "
  "\nYet " "sweet " "in " "death " "their " la "test " "song: "
  "\n“We’ll " "meet " a "gain, " "’t will " "not " "be " "long!” "
  "\nRoll " "on, " "dark " "stream! "
  "\nWe " "dread " "not " "thy " "foam; "
  "\nThe " Pil "grim " "is " long "ing " "for " "Home, " "sweet " "Home.\n"

  \set stanza = "4."
  "\nThese " cheq "uer’d "  "wilds, " "with " "thorns " o'er "spread, "
  "\nThro' " "which " "our " "way " "so " "oft " "is " "led— "
  "\nThis " "march " "of " "time, " "if " "faith " "be " "strongm "
  "\nWill " "end " "in " "bliss: " "’t will " "not " "be " "long! "
  "\nRoll " "on, " "dark " "stream! "
  "\nWe " "dread " "not " "thy " "foam; "
  "\nThe " Pil "grim " "is " long "ing " "for " "Home, " "sweet " "Home. "
}

wordsMidiMen = \lyricmode {
  \set stanza = "1."
  "’T will " "not " "be " "long— " "our " jour "ney " "here: "
  "\nEach " bro "ken " "sigh " "and " fall "ing " "tear "
  "\nWill " "soon " "be " "gone; " "and " "all " "will " "be "
  "\nA " cloud "less " "sky, " "a " wave "less " "sea. "
  "\nRoll " "on, " "roll " "on, " "dark " "stream! " "roll " "on: "
  "\nWe " "dread " "not " "thy " "foam; "
  "\nThe " Pil "grim " "is " long "ing " "for " "Home, " "sweet " "Home.\n"

  \set stanza = "2."
  "\n’T will " "not " "be " "long! " "the "  yearn "ing " "heart "
  "\nMay " "feel " "its " ev "’ry " "hope " de "part, "
  "\nAnd " "grief " "be " ming "led " "with " "its " "song; "
  "\nWe’ll " "meet " a "gain, " "’t will " "not " "be " "long! "
  "\nRoll " "on, " "roll " "on, " "dark " "stream! " "roll " "on: "
  "\nWe " "dread " "not " "thy " "foam; "
  "\nThe " Pil "grim " "is " long "ing " "for " "Home, " "sweet " "Home.\n"

  \set stanza = "3."
  "\nTho’ " "sad " "we " "mark " "the " clos "ing " "eye "
  "\nOf " "those " "we " "loved " "in " "days " "gone " "by, "
  "\nYet " "sweet " "in " "death " "their " la "test " "song: "
  "\n“We’ll " "meet " a "gain, " "’t will " "not " "be " "long!” "
  "\nRoll " "on, " "roll " "on, " "dark " "stream! " "roll " "on: "
  "\nWe " "dread " "not " "thy " "foam; "
  "\nThe " Pil "grim " "is " long "ing " "for " "Home, " "sweet " "Home.\n"

  \set stanza = "4."
  "\nThese " cheq "uer’d "  "wilds, " "with " "thorns " o'er "spread, "
  "\nThro' " "which " "our " "way " "so " "oft " "is " "led— "
  "\nThis " "march " "of " "time, " "if " "faith " "be " "strongm "
  "\nWill " "end " "in " "bliss: " "’t will " "not " "be " "long! "
  "\nRoll " "on, " "roll " "on, " "dark " "stream! " "roll " "on: "
  "\nWe " "dread " "not " "thy " "foam; "
  "\nThe " Pil "grim " "is " long "ing " "for " "Home, " "sweet " "Home. "
}

\book {
  \paper {
    output-suffix = midi-women
  }
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
  \paper {
    output-suffix = midi-men
  }
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

#(set-global-staff-size 18)

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
            \new NullVoice = alignerT { \repeat unfold \verses { \tenor \nl} }
          >>
          \new Lyrics \with {alignAboveContext = men} \lyricsto alignerT { \repeat unfold \verses \chorusMen }
        >>
}

#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = single
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
