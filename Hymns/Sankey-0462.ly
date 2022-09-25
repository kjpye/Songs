\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Come, Great Deliverer, Come!"
  subtitle    = "Sankey No. 462"
  subsubtitle = "Sankey 880 No. 304"
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
%  meter       = \markup\smallCaps "meter"
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key c \major
  \time 4/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s4 s1*3 s2.
  \mark \markup { \box "B" } s4 s1*3 s2.
  \mark \markup { \box "C" } s4 s1*3 s2.
  \mark \markup { \box "D" } s4 s1*3 s2.
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff \partial 4
  g'8.\omit\mf [f16] | e4 g c4. 8 | d c b a8 2 | g4^\f b8. c16 b4 c8[d] | c2. \bar "|" \break g8.\omit\mf[f16] |
  e4 g c4. 8 | d c b a8 2 | g4^\f b8. c16 b4 c8[d] | c2. \bar "|" \break 4\omit\mf^\markup\smallCaps Chorus. |
  b8. a16 b8. c16 d4 b | a g c c | c8. b16 c8. d16 e4 c | e2(d4\fermata) \bar "|" \break g,8.[f16] |
  e4 g c4. 8 | d c b a8 2 | g4^\ff b8. c16 b4 c8[d] | c2.
}

alto = \relative {
  \autoBeamOff \partial 4
  e'8.\omit\mf[d16] | c4 e e4. 8 |f8 8 8 8 2 | e4^\f g8. 16 4 4 | 2. e8.\omit\mf[d16] |
  c4 e4 4. 8 | f8 8 8 8 2 | g4^\f g8. 16 4 4 | g2. e4\omit\mf |
  f8. 16 8. e16 f4 4 | f4 e e e | 8. d16 e8. f16 g4 4 | 2.\fermata d4 |
  c4 e4 4. 8 | f8 8 8 8 2 | e4^\ff g8. 16 4 4 | 2.
}

tenor = \relative {
  \autoBeamOff \partial 4
  g4\omit\mf | 4 c g4. 8 | a a b c8 2 | c4 d8. e16 d4 e8[f] | e2. g,4 |
  g4 c g4. 8 | a8 8 b c8 2 | 4\omit\f d8. e16 d4 e8[f] | e2. c4\omit\mf |
  d8. c16 d8. c16 b4 d | c4 4 g g | 8. 16 8. 16 c4 4 | c2(b4\fermata) 4 |
  c4 4 g4. 8 | a8 8 b c8 2 | c4\omit\ff d8. e16 d4 e8[f] | e2.
}

bass = \relative {
  \autoBeamOff \partial 4
  c4\omit\mf | c4 4 4. 8 | f8 8 8 8 2 | g4 8. 16 4 4 | c,2. 4 |
  c4 4 4. 8 | f8 8 8 8 2 | g4\omit\f 8. 16 4 4 | c,2. 4\omit\mf |
  g'8. 16 8. 16 4 4 | c,4 4 4 4 | 8. 16 8. 16 4 e | g2.\fermata 4 |
  c,4 4 4. 8 | f8 8 8 8 2 | g4 8. 16 4 4 | c,2.
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  I've wan -- dered far a -- way o'er moun -- tains cold,
  I'ev wan -- dered far a -- way from home;
  Oh, take me now, and bring me to Thy fold!
  Come, Great De -- liv -- 'rer, come!
}

chorusMen = \lyricmode {
}

verses = 4

wordsOne = \lyricmode {
  \set stanza = "1."
  Oh, hear my cry, be gra -- cious now to me,
  Come, Great De -- liv -- 'rer, come!
  My soul bowed down is oong -- ing now for Thee,
  Come, Great De -- liv -- 'rer, come!
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  I have no place, no shel -- ter from the night,
  Come, Great De -- liv -- 'rer, come!
  One look from Thee would give me life and light,
  Come, Great De -- liv -- 'rer, come!
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  My path is lone, and wae -- ry are my feet,
  Come, Great De -- liv -- 'rer, come!
  Mine eyes look up Thy lov -- ing smile to meet,
  Come, Great De -- liv -- 'rer, come!
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Thou wilt not spurn con -- trit -- ion's bro -- ken sigh,
  Come, Great De -- liv -- 'rer, come!
  Re -- gard my prayer, and hear my hum -- ble cry,
  Come, Great De -- liv -- 'rer, come!
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Oh, " "hear " "my " "cry, " "be " gra "cious " "now " "to " "me, "
  "\nCome, " "Great " De liv "'rer, " "come! "
  "\nMy " "soul " "bowed " "down " "is " oong "ing " "now " "for " "Thee, "
  "\nCome, " "Great " De liv "'rer, " "come! "
  "\nI've " wan "dered " "far " a "way " "o'er " moun "tains " "cold, "
  "\nI'ev " wan "dered " "far " a "way " "from " "home; "
  "\nOh, " "take " "me " "now, " "and " "bring " "me " "to " "Thy " "fold! "
  "\nCome, " "Great " De liv "'rer, " "come!\n"

  \set stanza = "2."
  "\nI " "have " "no " "place, " "no " shel "ter " "from " "the " "night, "
  "\nCome, " "Great " De liv "'rer, " "come! "
  "\nOne " "look " "from " "Thee " "would " "give " "me " "life " "and " "light, "
  "\nCome, " "Great " De liv "'rer, " "come! "
  "\nI've " wan "dered " "far " a "way " "o'er " moun "tains " "cold, "
  "\nI'ev " wan "dered " "far " a "way " "from " "home; "
  "\nOh, " "take " "me " "now, " "and " "bring " "me " "to " "Thy " "fold! "
  "\nCome, " "Great " De liv "'rer, " "come!\n"

  \set stanza = "3."
  "\nMy " "path " "is " "lone, " "and " wae "ry " "are " "my " "feet, "
  "\nCome, " "Great " De liv "'rer, " "come! "
  "\nMine " "eyes " "look " "up " "Thy " lov "ing " "smile " "to " "meet, "
  "\nCome, " "Great " De liv "'rer, " "come! "
  "\nI've " wan "dered " "far " a "way " "o'er " moun "tains " "cold, "
  "\nI'ev " wan "dered " "far " a "way " "from " "home; "
  "\nOh, " "take " "me " "now, " "and " "bring " "me " "to " "Thy " "fold! "
  "\nCome, " "Great " De liv "'rer, " "come!\n"

  \set stanza = "4."
  "\nThou " "wilt " "not " "spurn " con trit "ion's " bro "ken " "sigh, "
  "\nCome, " "Great " De liv "'rer, " "come! "
  "\nRe" "gard " "my " "prayer, " "and " "hear " "my " hum "ble " "cry, "
  "\nCome, " "Great " De liv "'rer, " "come! "
  "\nI've " wan "dered " "far " a "way " "o'er " moun "tains " "cold, "
  "\nI'ev " wan "dered " "far " a "way " "from " "home; "
  "\nOh, " "take " "me " "now, " "and " "bring " "me " "to " "Thy " "fold! "
  "\nCome, " "Great " De liv "'rer, " "come! "
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
