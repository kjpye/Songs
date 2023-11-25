\version "2.25.0"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Silver Lining"
  subtitle    = "Sankey No. 742"
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

  poet        = \markup\smallCaps "Edith Gilling Cherry."
  meter       = \markup\smallCaps "C.M.D."
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key aes \major
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
  aes'4 | 4 4 bes c | 4. bes8 4 4 | des g, aes bes | c2. \bar "|" \break
  c4 | c c ees bes | aes4. bes8 g4 g | g f4 4. g8 | ees2. \bar "|" \break
  ees4 | ees g c bes | 4. aes8 ees4 4 | e f des' c | bes2. \bar "|" \break
  bes4 | 4 4 c des | ees4. c8 aes4 bes | c aes c4. bes8 | aes2.
}

alto = \relative {
  \autoBeamOff
  c'4 | c ees4 4 4 | f4. 8 4 4 | des4 4 c ees | 2.
  ees4 | 4 4 4 4 | 4. d8 ees4 des | c c d4. 8 | ees2.
  ees4 | 4 4 4 4 | 4. 8 4 c | c c des e | ees2.
  ees4 | 4 4 4 4 | 4. 8 c4 f | ees aes g4. 8 | aes2.
}

tenor = \relative {
  \autoBeamOff
  aes4 | 4 c bes ees | 4. des8 4 bes | g bes aes g | aes2.
  aes4 | 4 4 bes4 4 | c4. bes8 4 4 | 4 aes4 4. bes8 | g2.
  g4 | g bes ees, f | g4. aes8 4 c | bes aes4 4 4 | g2.
  g4 | 4 4 aes g | aes4. 8 4 4 | 4 c ees4. des8 c2.
}

bass = \relative {
  \autoBeamOff
  aes4 | 4 4 g aes | des,4. 8 4 4 | ees4 4 f ees | aes2.
  aes4 | 4 4 g g | f4. bes,8 ees4 4 | aes,4 4 bes4. 8 | ees2.
  ees4 | 4 4 4 4 | des4. c8 4 aes' | g f bes, c8[des] | ees2.
  ees4 | 4 4 4 des | c4. 8 f4 des | ees4 4 4. 8 | aes,2.
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
}

chorusMen = \lyricmode {
}

verses = 3

wordsOne = \lyricmode {
  \set stanza = "1."
  I see God's sun be -- hind earth's clouds,
  Heav'n's blue be -- yond earth's grey;
  The gleam -- ing of the jas -- per walls
  A -- cross earth's dus -- ty way:
  God's light a -- bove the dark -- 'ning mists,
  God's calm a -- midst the strife;
  Bright cur -- rents of God's sweet -- est peace
  In dark -- est seas of life.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  I see my Fa -- ther's smile of love
  Light up earth's drear -- iest frowns;
  Fair stars for hea -- ven -- di -- a -- dems
  Shine round earth's thorn -- iest crowns:
  Be -- twixt my heart and aught of harm
  That sin or sor -- row brings,
  I see the Ev -- er -- last -- ing Arms—
  The sha -- dow of His wings.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  I see the glo -- ry from the cross,
  Like morn -- ings crim -- son ray,
  Touch from a -- far earth's night of sin,
  And bright -- 'ning in -- to day:
  I see, like sun -- shine ev -- 'ry -- where,
  God's good -- ness, mer -- cy, grace;
  And for the rest, I trust His love
  Un -- til I see His face.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "I " "see " "God's " "sun " be "hind " "earth's " "clouds, "
  "\nHeav'n's " "blue " be "yond " "earth's " "grey; "
  "\nThe " gleam "ing " "of " "the " jas "per " "walls "
  "\nA" "cross " "earth's " dus "ty " "way: "
  "\nGod's " "light " a "bove " "the " dark "'ning " "mists, "
  "\nGod's " "calm " a "midst " "the " "strife; "
  "\nBright " cur "rents " "of " "God's " sweet "est " "peace "
  "\nIn " dark "est " "seas " "of " "life.\n"

  \set stanza = "2."
  "\nI " "see " "my " Fa "ther's " "smile " "of " "love "
  "\nLight " "up " "earth's " drear "iest " "frowns; "
  "\nFair " "stars " "for " hea ven di a "dems "
  "\nShine " "round " "earth's " thorn "iest " "crowns: "
  "\nBe" "twixt " "my " "heart " "and " "aught " "of " "harm "
  "\nThat " "sin " "or " sor "row " "brings, "
  "\nI " "see " "the " Ev er last "ing " "Arms— "
  "\nThe " sha "dow " "of " "His " "wings.\n"

  \set stanza = "3."
  "\nI " "see " "the " glo "ry " "from " "the " "cross, "
  "\nLike " morn "ings " crim "son " "ray, "
  "\nTouch " "from " a "far " "earth's " "night " "of " "sin, "
  "\nAnd " bright "'ning " in "to " "day: "
  "\nI " "see, " "like " sun "shine " ev 'ry "where, "
  "\nGod's " good "ness, " mer "cy, " "grace; "
  "\nAnd " "for " "the " "rest, " "I " "trust " "His " "love "
  "\nUn" "til " "I " "see " "His " "face. "
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
