\version "2.25.0"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "When our Heads are Bowed with Woe."
  subtitle    = "Sankey No. 726"
  subsubtitle = "Sankey 880 No. 687"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "R. Redhead."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "H. H. Milman, D.D."
  meter       = \markup\smallCaps "7s."
  piece       = \markup\smallCaps "Redhead, 47."

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key ees \major
  \time 2/4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s2*8
  \textMark \markup { \box \bold "B" } s2*8
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  g'4 4 | f g | aes4. 8 | g2 | bes4 4 | ees c a4. 8 | bes2 | \break
  bes4 4 | 4 aes | f4. 8 | g2 | 4 4 | f g | aes4. 8 | g2 |
}

alto = \relative {
  \autoBeamOff
  ees'4 4 | d ees | 4. 8 | 2 | g4 4 | 4 4 | f4. 8 | 2 |
  e4 f | g f | d4. 8 | ees2 | 4 4 | d ees | 4. 8 | 2 |
}

tenor = \relative {
  \autoBeamOff
  bes4 4 | 4 4 | c4. 8 bes2 | ees4 4 | 4 4 | c4. 8 | d2 |
  des4 4 | 4 c | bes4. 8 | 2 | 4 4 | 4 4 | c4. 8 | bes2 |
}

bass = \relative {
  \autoBeamOff
  ees4 4 | bes ees | aes,4. 8 | ees'2 4. d8 | c4 ees | f4. 8 | bes,2 |
  g'4 f | e f | bes,4. 8 | ees2 | 4 4 | bes ees | aes,4. 8 | ees'2 |
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
}

chorusMen = \lyricmode {
}

verses = 6

wordsOne = \lyricmode {
  \set stanza = "1."
  When our heads are bowed with woe;
  When our bit -- ter tears o'er flow;
  When we mourn the lost, the dear—
  Je -- sus, Son of Da -- vid, hear!
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Thou our fee -- ble flesh hast worn!
  Thou our mor -- tal griefs hast borne;
  Thou hast shed the hu -- man tear:
  Je -- sus, Son of Da -- vid, hear!
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  When the heart is sad with -- in
  With the thought of all its sin;
  When the spi -- rit shrinks with fear:
  Je -- sus, Son of Da -- vid, hear!
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Thou the shame, the grief, hast known;
  Though the sins were not Thine own,
  Thou hast deigned their load to bear:
  Je -- sus, Son of Da -- vid, hear!
}
  
wordsFive = \lyricmode {
  \set stanza = "5."
  When our eyes grow dim in death;
  When we heave the part -- ing breath;
  When our sol -- emn doom is near—
  Je -- sus, Son of Da -- vid, hear!
}
  
wordsSix = \lyricmode {
  \set stanza = "6."
  Thou hast bowed the dy -- ing head;
  Thou the blood of life hast shed;
  Thou hast filled a mor -- tal bier:
  Je -- sus, Son of Da -- vid, hear!
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "When " "our " "heads " "are " "bowed " "with " "woe; "
  "\nWhen " "our " bit "ter " "tears " "o'er " "flow; "
  "\nWhen " "we " "mourn " "the " "lost, " "the " "dear— "
  "\nJe" "sus, " "Son " "of " Da "vid, " "hear!\n"

  \set stanza = "2."
  "\nThou " "our " fee "ble " "flesh " "hast " "worn! "
  "\nThou " "our " mor "tal " "griefs " "hast " "borne; "
  "\nThou " "hast " "shed " "the " hu "man " "tear: "
  "\nJe" "sus, " "Son " "of " Da "vid, " "hear!\n"

  \set stanza = "3."
  "\nWhen " "the " "heart " "is " "sad " with "in "
  "\nWith " "the " "thought " "of " "all " "its " "sin; "
  "\nWhen " "the " spi "rit " "shrinks " "with " "fear: "
  "\nJe" "sus, " "Son " "of " Da "vid, " "hear!\n"

  \set stanza = "4."
  "\nThou " "the " "shame, " "the " "grief, " "hast " "known; "
  "\nThough " "the " "sins " "were " "not " "Thine " "own, "
  "\nThou " "hast " "deigned " "their " "load " "to " "bear: "
  "\nJe" "sus, " "Son " "of " Da "vid, " "hear!\n"

  \set stanza = "5."
  "\nWhen " "our " "eyes " "grow " "dim " "in " "death; "
  "\nWhen " "we " "heave " "the " part "ing " "breath; "
  "\nWhen " "our " sol "emn " "doom " "is " "near— "
  "\nJe" "sus, " "Son " "of " Da "vid, " "hear!\n"

  \set stanza = "6."
  "\nThou " "hast " "bowed " "the " dy "ing " "head; "
  "\nThou " "the " "blood " "of " "life " "hast " "shed; "
  "\nThou " "hast " "filled " "a " mor "tal " "bier: "
  "\nJe" "sus, " "Son " "of " Da "vid, " "hear! "
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

#(set-global-staff-size 18)

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
            \new Lyrics \lyricsto "aligner"   \wordsFive
            \new Lyrics \lyricsto "aligner"   \wordsSix
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
                                              \wordsFive  \chorus
                                              \wordsSix   \chorus
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
