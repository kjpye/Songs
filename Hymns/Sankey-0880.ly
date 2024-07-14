\version "2.25.17"

\include "../kjp.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "He Rolls the Sea Away."
  subtitle    = "Sankey No. 880"
%  subsubtitle = "Sankey 880 No. Y"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "D. B. Towner."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Emma Pitt."
  meter       = \markup\smallCaps "C.M."
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
  \textMark \markup { \box \bold "C" } s4 s1*2 s2
  \textMark \markup { \box \bold "D" } s2 s1*2
  \textMark \markup { \box \bold "E" }    s1*2 s2.
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

soprano = \relative {
  c'4 | f f f g | a c f, g | a4. g8 f4 e | f2. \bar "|" \break
  c4 | f f f g | a c f, g | a8.(bes16 c8.) bes16 a4 g | f2.
  \section \sectionLabel \markup\smallCaps Chorus. \break
  c'4 | 4~8. 16 4 4 | 2. bes4 | a8.(g16 a8.) bes16 \bar "|" \break
  c4 f | e4.(d8 c4) bes | a8. g16 a8. bes16 c4 a | \break
  bes8. a16 bes8. c16 d4 bes | a8.(bes16 c8.) bes16 a4 g | f2.
}

alto = \relative {
  c'4 | c c f e | f f f e | f4. d8 c4 4 | 2.
  c4 | c c f e | f f f e | f4~8. 16 4 e | f2. \section
  f4 | e8.(f16 g8.) a16 bes4 g | f4.(e8 f4) e | f8.(e16 f8.) g16
  a4 4 | bes2(a4) g | f8. 16 8
  . g16 a4 f |
  f8. 16 8. 16 4 4 | 4~8. 16 4 e | f2.
}

tenor = \relative {
  a4 | a a c c | c a c c | 4. bes8 a4 g a2.
  a4 | a a c c | c a c c | 16(f4.) d16 c4. bes8 | a2. \section
  a4 | c~8. 16 4 4 | 4.(bes8 a4) c | 4~8. 16
  c4 4 | 2. 4 | 8. 16 8. f16 4 c |
  bes8. c16 d8. 16 bes4 d | c16(f4.) d16 c4. bes8 a2.
}

bass = \relative {
  f4 | f f a, c | f f a, c | f4. bes,8 c4 4 | f2.
  f4 | f f a, c | f f c c | f8.(g16 a8.) bes16 a4 c, | f2. \section
  f4 | c8.(d16 e8.) f16 g4 bes | a4.(g8 f4) c | f4~8. 16
  f4 4 | c2. 4 | f8. 16 8. 16 4 8[ees] |
  d8. c16 bes8. 16 4 4 | f'8.(g16 a8.) bes16 c4 c, | f2.
}

chorus = \lyricmode {
  He rolls __ the sea a -- way, __
  He rolls __ the sea a -- way; __
  With Je -- sus ev -- er near,
  No foe have I to fear—
  He rolls __ the sea a -- way.
}

chorusMen = \lyricmode {
}

verses = 4

wordsOne = \lyricmode {
  \set stanza = "1."
  In an -- cient days, when Is -- rael’s host
  In dark -- est bond -- age lay.
  The migh -- ty power of God was shown—
  He rolled __ the sea a -- way.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  The waves of sin swept o’er my soul,
  Temp -- ta -- tions held their sway;
  The Lord spoke peace, and par -- don gave—
  He rolled __ the sea a -- way.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Tho’ doubts and fears ob -- scure my path,
  With Je -- sus I will stay—
  He’ll keep me enar His lov -- ing heart,
  And roll __ the sea a -- way.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Lord Je -- sus, when in my last hour
  I face t’ward realms of day,
  The pre -- sence than shall pi -- lot me,
  And roll __ the sea a -- way.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "In " an "cient " "days, " "when " Is "rael’s " "host "
  "\nIn " dark "est " bond "age " "lay. "
  "\nThe " migh "ty " "power " "of " "God " "was " "shown— "
  "\nHe " "rolled "  "the " "sea " a "way. "
  "\nHe " "rolls "  "the " "sea " a "way, " 
  "\nHe " "rolls "  "the " "sea " a "way; " 
  "\nWith " Je "sus " ev "er " "near, "
  "\nNo " "foe " "have " "I " "to " "fear— "
  "\nHe " "rolls "  "the " "sea " a "way.\n"

  \set stanza = "2."
  "\nThe " "waves " "of " "sin " "swept " "o’er " "my " "soul, "
  "\nTemp" ta "tions " "held " "their " "sway; "
  "\nThe " "Lord " "spoke " "peace, " "and " par "don " "gave— "
  "\nHe " "rolled "  "the " "sea " a "way. "
  "\nHe " "rolls "  "the " "sea " a "way, " 
  "\nHe " "rolls "  "the " "sea " a "way; " 
  "\nWith " Je "sus " ev "er " "near, "
  "\nNo " "foe " "have " "I " "to " "fear— "
  "\nHe " "rolls "  "the " "sea " a "way.\n"

  \set stanza = "3."
  "\nTho’ " "doubts " "and " "fears " ob "scure " "my " "path, "
  "\nWith " Je "sus " "I " "will " "stay— "
  "\nHe’ll " "keep " "me " "enar " "His " lov "ing " "heart, "
  "\nAnd " "roll "  "the " "sea " a "way. "
  "\nHe " "rolls "  "the " "sea " a "way, " 
  "\nHe " "rolls "  "the " "sea " a "way; " 
  "\nWith " Je "sus " ev "er " "near, "
  "\nNo " "foe " "have " "I " "to " "fear— "
  "\nHe " "rolls "  "the " "sea " a "way.\n"

  \set stanza = "4."
  "\nLord " Je "sus, " "when " "in " "my " "last " "hour "
  "\nI " "face " "t’ward " "realms " "of " "day, "
  "\nThe " pre "sence " "than " "shall " pi "lot " "me, "
  "\nAnd " "roll "  "the " "sea " a "way. "
  "\nHe " "rolls "  "the " "sea " a "way, " 
  "\nHe " "rolls "  "the " "sea " a "way; " 
  "\nWith " Je "sus " ev "er " "near, "
  "\nNo " "foe " "have " "I " "to " "fear— "
  "\nHe " "rolls "  "the " "sea " a "way."
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

#(set-global-staff-size 19)

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
