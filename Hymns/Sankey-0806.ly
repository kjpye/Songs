\version "2.25.12"

\include "../kjp.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "More to be Gathered in."
  subtitle    = "Sankey No. 806"
%  subsubtitle = "Sankey 880 No. Y"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "J. Mountain."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "John Telfer."
  meter       = \markup\smallCaps "7s."
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key g \major
  \time 4/4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s1*4
  \textMark \markup { \box \bold "B" } s1*4
  \textMark \markup { \box \bold "C" } s1*4
  \textMark \markup { \box \bold "D" } s1*4
  \textMark \markup { \box \bold "E" } s1*4
  \textMark \markup { \box \bold "F" } s1*4
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  g'4. a8 b4 g | 4 fis a2 | 4. b8 c4 fis, | a4 g b2 |
  b4. c8 d4 b | b a g2 | 4. a8 fis4 g8[fis] | fis4 e d2 |
  d4. e8 fis4 4 | g g a2 | fis4. g8 a4 a | b b c2 |
  b4. c8 d4 b | e d cis2 | d4. c8 b4 c8[b] | a4 4 g2 |
  \section \sectionLabel \markup\smallCaps Chorus.
  d4. e8 fis4 4 | g g a2 | fis4. g8 a4 a | b b c2 |
  b4. c8 d4 b | e d cis2 | d4. c8 b4 c8[b] | a4 4 g2 |
}

alto = \relative {
  \autoBeamOff
  g'4. 8 4 d | 4 4 2 | fis4. 8 4 d | d d g2 |
  g4. 8 4 4 | fis4 4 e2 | 4. 8 d4 4 | d cis d2 |
  c4. 8 4 4 | b4 cis d2 | 4. 8 4 fis | g f e(fis) |
  g4. fis8 g4 4 | g gis a2 | 4. 8 g4 g | g fis g2 \section
  c,4. 8 4 4 | b cis d2 | 4. 8 4 fis | g f e(fis) |
  g4. fis8 g4 g | g gis a2 | 4. 8 g4 g | g fis g2 |
}

tenor = \relative {
  \autoBeamOff
  b4. c8 d4 b | c4 4 2 | 4. b8 a4 c | c b d2 |
  d4. 8 4 4 | 4 b4 2 | a4. 8 4 b | a g fis2 |
  fis4. g8 a4 4 | g g g(fis) | a4. 8 4 d | d d c2 |
  d4. 8 4 f | e4 4 2 | d4. 8 4 e | a,8[b] c4 b2 \section |
  fis4. g8 a4 4 | g g g(fis) | a4. 8 4 d | d d c2 |
  d4. 8 4 f | e4 4 2 | d4. 8 4 e | a,8[b] c4 b2 |
}

bass = \relative {
  \autoBeamOff
  g4. 8 4 4 | a a fis2 | d4. 8 4 4 | g4 4 2 |
  g4. a8 b4 g | d dis e(d) | cis4. 8 d4 g, | a a d2 |
  d4. 8 4 dis | e e d2 | 4. e8 fis4 d | g gis a2 |
  g4. a8 b4 g | c b a(g) | fis4. 8 g4 c, | d d g,2 \section
  d'4. 8 4 dis | e e d2 | 4. e8 fis4 d | g gis a2 |
  g4. a8 b4 g | c b a(g) | fis4. 8 g4 c, | d d g,2 |
}

chorus = \lyricmode {
  Saved from death's e -- ter -- nal loss
  By the power of Je -- sus' cross;
  From their sor -- row, shame, and sin,
  More must yet be ga -- thered in.
}

chorusMen = \lyricmode {
}

verses = 4

wordsOne = \lyricmode {
  \set stanza = "1."
  Some have crossed the swell -- ing flood,
  Some are now at home with God,
  Well  be -- yond the reach of care,
  Free from ev -- 'ry hurt -- ful snare;
  Gone thro' death to glo -- ry bright,
  Pres -- ent with the Lord in light;
  But ere per -- fect joy be -- gin,
  More must yet be ga -- thered in.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Some of ev -- 'ry land and race,
  Souls re -- deemed by Je -- sus' grace,
  Now are in the Shep -- herd's fold,
  Bought with nei -- ther gems nor gold;
  Saved from end -- less death and shame,
  Saved to grace the Sa -- viour's name;
  O -- ther souls are still to win
  More must yet be ga -- thered in.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Some have drift -- ed far from God,
  Tram -- pling on the Sa -- viour's blood,
  By the world -- ling's glit -- ter caught,
  Sell -- ing life and soul for naught;
  Fash -- ion's form for ev -- 'ry hour,
  Chris -- tian name with -- out the power;
  Dead in tres -- pass -- es and sin—
  Oh that they were ga -- thered in!
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Some are sunk in vice and shame,
  Heed -- less of the Sa -- viour's name;
  Some, in su -- per -- sti -- tion's sway,
  Hate the light of Gos -- pel- day;
  Thou thy tes -- ti -- mo -- ny give—
  They may yet be -- lieve and live;
  For, from 'mong the  ranks of sin,
  More must yet be ga -- thered in.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Some " "have " "crossed " "the " swell "ing " "flood, "
  "\nSome " "are " "now " "at " "home " "with " "God, "
  "\nWell "  be "yond " "the " "reach " "of " "care, "
  "\nFree " "from " ev "'ry " hurt "ful " "snare; "
  "\nGone " "thro' " "death " "to " glo "ry " "bright, "
  "\nPres" "ent " "with " "the " "Lord " "in " "light; "
  "\nBut " "ere " per "fect " "joy " be "gin, "
  "\nMore " "must " "yet " "be " ga "thered " "in. "
  "\nSaved " "from " "death's " e ter "nal " "loss "
  "\nBy " "the " "power " "of " Je "sus' " "cross; "
  "\nFrom " "their " sor "row, " "shame, " "and " "sin, "
  "\nMore " "must " "yet " "be " ga "thered " "in.\n"

  \set stanza = "2."
  "\nSome " "of " ev "'ry " "land " "and " "race, "
  "\nSouls " re "deemed " "by " Je "sus' " "grace, "
  "\nNow " "are " "in " "the " Shep "herd's " "fold, "
  "\nBought " "with " nei "ther " "gems " "nor " "gold; "
  "\nSaved " "from " end "less " "death " "and " "shame, "
  "\nSaved " "to " "grace " "the " Sa "viour's " "name; "
  "\nO" "ther " "souls " "are " "still " "to " "win "
  "\nMore " "must " "yet " "be " ga "thered " "in. "
  "\nSaved " "from " "death's " e ter "nal " "loss "
  "\nBy " "the " "power " "of " Je "sus' " "cross; "
  "\nFrom " "their " sor "row, " "shame, " "and " "sin, "
  "\nMore " "must " "yet " "be " ga "thered " "in.\n"

  \set stanza = "3."
  "\nSome " "have " drift "ed " "far " "from " "God, "
  "\nTram" "pling " "on " "the " Sa "viour's " "blood, "
  "\nBy " "the " world "ling's " glit "ter " "caught, "
  "\nSell" "ing " "life " "and " "soul " "for " "naught; "
  "\nFash" "ion's " "form " "for " ev "'ry " "hour, "
  "\nChris" "tian " "name " with "out " "the " "power; "
  "\nDead " "in " tres pass "es " "and " "sin— "
  "\nOh " "that " "they " "were " ga "thered " "in! "
  "\nSaved " "from " "death's " e ter "nal " "loss "
  "\nBy " "the " "power " "of " Je "sus' " "cross; "
  "\nFrom " "their " sor "row, " "shame, " "and " "sin, "
  "\nMore " "must " "yet " "be " ga "thered " "in.\n"

  \set stanza = "4."
  "\nSome " "are " "sunk " "in " "vice " "and " "shame, "
  "\nHeed" "less " "of " "the " Sa "viour's " "name; "
  "\nSome, " "in " su per sti "tion's " "sway, "
  "\nHate " "the " "light " "of " Gos pel "day; "
  "\nThou " "thy " tes ti mo "ny " "give— "
  "\nThey " "may " "yet " be "lieve " "and " "live; "
  "\nFor, " "from " "'mong " "the "  "ranks " "of " "sin, "
  "\nMore " "must " "yet " "be " ga "thered " "in. "
  "\nSaved " "from " "death's " e ter "nal " "loss "
  "\nBy " "the " "power " "of " Je "sus' " "cross; "
  "\nFrom " "their " sor "row, " "shame, " "and " "sin, "
  "\nMore " "must " "yet " "be " ga "thered " "in. "
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
