\version "2.25.16"

\include "../kjp.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Now in a Song of Grateful Praise."
  subtitle    = "Sankey No. 881"
%  subsubtitle = "Sankey 880 No. Y"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

%  composer    = \markup\smallCaps ""
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "S. Medley."
  meter       = \markup\smallCaps "L.M."
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
  \textMark \markup { \box \bold "A" } s4 s1*3 s2.
  \textMark \markup { \box \bold "B" } s4 s1*3 s2.
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

soprano = \relative {
  f'8(g) | a4 a bes4 4 | d c c a | c bes4 4 g | bes a a \bar "|" \break
  f8(g)  | a4 a bes4 4 | d c f\fermata f | e d c bes | a g f \section
  f8 g   | a4 a bes4 4 | d c c a | c bes4 4 g | bes a a \bar "|" \break
  f8 g   | a4 a bes4 4 | d c f\fermata f | e d c bes | a g f \section
}

alto = \relative {
  f'8(e) | f4 f g g | bes4 a a f | a g g e | g f f
  f8(e)  | f4 f g g | bes a a\fermata a | c bes a g | d e s \section
  f8 e   | f4 f g g | bes4 a a f | a g g e | g f f
  f8 e   | f4 f g g | bes a a\fermata a | c bes a g | d e s
}

tenor = \relative {
  a8(c) | 4 4 4 4 | bes c c c | c c c c | c c c
  a8(c) | c4 c c c | bes c c_\fermata f | f f f d | c bes a \section
  a8 c  | 4 4 4 4 | bes c c c | c c c c | c c c
  a8 c  | c4 c c c | bes c c_\fermata f | f f f d | c bes a
}

bass = \relative {
  f8(c) | f4 f c c | f f f f | c c e c | e f f
  f8(c) | f4 f c c | f f f_\fermata f | a, bes f' bes, | c c f \section
  f8 c  | f4 f c c | f f f f | c c e c | e f f
  f8 c  | f4 f c c | f f f_\fermata f | a, bes f' bes, | c c f
}

chorus = \lyricmode {
  And a -- bove the rest this note shall swell,
  This note shall swell,
  this note shall swell;
  And a -- bove the rest this note shall swell;
  My Je -- sus has done all things well!
}

chorusMen = \lyricmode {
}

verses = 4

wordsOne = \lyricmode {
  \set stanza = "1."
  Now, in a song of grate -- ful praise,
  To my dear Lord my voice I’ll raise;
  With all His saints I’ll join to tell,
  My Je -- sus has done all things well!
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  How sov -- ’reign, won -- der -- ful, and free,
  Has been His love to sin -- ful me!
  He plucked me from the jaws of hell:
  My Je -- sus has done all things well!
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Though man -- y~a fier -- y, flam -- ing dart
  The tempt -- er lev -- els at my heart—
  With this I all his rage re -- pel:
  My Je -- sus has done all things well!
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  And when to that bright world I rise,
  And claim my man -- sion in the skies,
  A -- bove the rest this note shall swell:
  My Je -- sus has done all things well!
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Now, " "in " "a " "song " "of " grate "ful " "praise, "
  "\nTo " "my " "dear " "Lord " "my " "voice " "I’ll " "raise; "
  "\nWith " "all " "His " "saints " "I’ll " "join " "to " "tell, "
  "\nMy " Je "sus " "has " "done " "all " "things " "well! "
  "\nAnd " a "bove " "the " "rest " "this " "note " "shall " "swell, "
  "\nThis " "note " "shall " "swell, "
  "\nthis " "note " "shall " "swell; "
  "\nAnd " a "bove " "the " "rest " "this " "note " "shall " "swell; "
  "\nMy " Je "sus " "has " "done " "all " "things " "well!\n"

  \set stanza = "2."
  "\nHow " sov "’reign, " won der "ful, " "and " "free, "
  "\nHas " "been " "His " "love " "to " sin "ful " "me! "
  "\nHe " "plucked " "me " "from " "the " "jaws " "of " "hell: "
  "\nMy " Je "sus " "has " "done " "all " "things " "well! "
  "\nAnd " a "bove " "the " "rest " "this " "note " "shall " "swell, "
  "\nThis " "note " "shall " "swell, "
  "\nthis " "note " "shall " "swell; "
  "\nAnd " a "bove " "the " "rest " "this " "note " "shall " "swell; "
  "\nMy " Je "sus " "has " "done " "all " "things " "well!\n"

  \set stanza = "3."
  "\nThough " man "y~a " fier "y, " flam "ing " "dart "
  "\nThe " tempt "er " lev "els " "at " "my " "heart— "
  "\nWith " "this " "I " "all " "his " "rage " re "pel: "
  "\nMy " Je "sus " "has " "done " "all " "things " "well! "
  "\nAnd " a "bove " "the " "rest " "this " "note " "shall " "swell, "
  "\nThis " "note " "shall " "swell, "
  "\nthis " "note " "shall " "swell; "
  "\nAnd " a "bove " "the " "rest " "this " "note " "shall " "swell; "
  "\nMy " Je "sus " "has " "done " "all " "things " "well!\n"

  \set stanza = "4."
  "\nAnd " "when " "to " "that " "bright " "world " "I " "rise, "
  "\nAnd " "claim " "my " man "sion " "in " "the " "skies, "
  "\nA" "bove " "the " "rest " "this " "note " "shall " "swell: "
  "\nMy " Je "sus " "has " "done " "all " "things " "well! "
  "\nAnd " a "bove " "the " "rest " "this " "note " "shall " "swell, "
  "\nThis " "note " "shall " "swell, "
  "\nthis " "note " "shall " "swell; "
  "\nAnd " a "bove " "the " "rest " "this " "note " "shall " "swell; "
  "\nMy " Je "sus " "has " "done " "all " "things " "well! "
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
    \midi { \context { \Staff autoBeaming = ##f } }
  }
}

#(set-global-staff-size 17)

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
      \context { \Staff
                 \RemoveAllEmptyStaves
                 autoBeaming = ##f
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
      \context { \Staff
                 \RemoveAllEmptyStaves
                 autoBeaming = ##f
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
      \context { \Staff
                 \RemoveAllEmptyStaves
                 autoBeaming = ##f
      }
    }
  }
}
