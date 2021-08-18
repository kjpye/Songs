\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Come, Holy Ghost, our Hearts inspire."
  subtitle    = "Sankey No. 189"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "R. Farrant."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "C. Wesley."
  meter       = \markup\smallCaps "c.m."
  piece       = \markup\smallCaps "Farrant."

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
  \mark \markup { \box "A" } s4 s1*3 s2.
  \mark \markup { \box "B" } s4 s1*3 s2.
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  g'4
  g4. a8 b4 a
  g4 c a a
  b4 d d cis
  d2. \bar "|" \break g,4
  c4 c b a % B
  g4 a fis b
  e,8[fis] g4 4 fis
  g2.
}

alto = \relative {
  \autoBeamOff
  d'4
  e4. fis8 g4 fis
  e4 g fis fis
  g4 fis a4. g8
  fis2. g4
  e4 d d fis % B
  e4 4 d d
  c4 b8[c] d4 4
  d2.
}

tenor = \relative {
  \autoBeamOff
  b4
  b4. d8 4 4
  b4 e d d
  d4 4 e e
  d2. b4
  a4 4 g d' % B
  b4 c a g
  g4 4 a a
  b2.
}

bass = \relative {
  \autoBeamOff
  g4
  e4. d8 g4 d
  e4 c d d
  g4 b a a
  d,2. g4
  g4 fis g d % B
  e4 a, d g,
  c4 e d d
  g,2.
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
}

wordsOne = \lyricmode {
  \set stanza = "1."
  Come, Ho -- ly Ghost, our hearts in -- spire;
  Let us Thine in -- fluence prove,
  Source of the old pro -- phet -- ic fire,
  Foun -- tain of light and love.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Come, Ho -- ly Ghost, for, moved by Thee,
  The pro -- phets wrote and spoke:
  Un -- lock the truth, Thy -- self the Key,
  Un -- seal the sac -- red book.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Ex -- pand Thy wings, cel -- est -- ial Dove,
  Brood o'er our nat -- ure's night;
  On our dis -- ord -- ered spi -- rits move,
  And let there now be light.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  God, through Him -- self, we then shall know
  If Thou with -- in us shine;
  And sound, with all Thy saints be -- low,
  The depths of love Di -- vine.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Come, " Ho "ly " "Ghost, " "our " "hearts " in "spire; "
  "\nLet " "us " "Thine " in "fluence " "prove, "
  "\nSource " "of " "the " "old " pro phet "ic " "fire, "
  "\nFoun" "tain " "of " "light " "and " "love. "

  \set stanza = "2."
  "\nCome, " Ho "ly " "Ghost, " "for, " "moved " "by " "Thee, "
  "\nThe " pro "phets " "wrote " "and " "spoke: "
  "\nUn" "lock " "the " "truth, " Thy "self " "the " "Key, "
  "\nUn" "seal " "the " sac "red " "book. "

  \set stanza = "3."
  "\nEx" "pand " "Thy " "wings, " cel est "ial " "Dove, "
  "\nBrood " "o'er " "our " nat "ure's " "night; "
  "\nOn " "our " dis ord "ered " spi "rits " "move, "
  "\nAnd " "let " "there " "now " "be " "light. "

  \set stanza = "4."
  "\nGod, " "through " Him "self, " "we " "then " "shall " "know "
  "\nIf " "Thou " with "in " "us " "shine; "
  "\nAnd " "sound, " "with " "all " "Thy " "saints " be "low, "
  "\nThe " "depths " "of " "love " Di "vine. "
}

\book {
  \bookOutputSuffix "repeat"
  \score {
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \new Voice \RehearsalTrack
            \new Voice \TempoTrack
            \new NullVoice = "aligner" \soprano
            \new Voice = "women" \partCombine { \global \soprano \bar "|." } { \global \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne \chorus }
            \new Lyrics \lyricsto "aligner"   \wordsTwo
            \new Lyrics \lyricsto "aligner"   \wordsThree
            \new Lyrics \lyricsto "aligner"   \wordsFour
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \tenor } { \global \bass }
          >>
        >>
    \layout {
      indent = 1.5\cm
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}

\book {
  \bookOutputSuffix "single"
  \score {
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \new Voice {
               \RehearsalTrack
               \RehearsalTrack
               \RehearsalTrack
               \RehearsalTrack
            }
            \new Voice {
              \TempoTrack
              \TempoTrack
              \TempoTrack
              \TempoTrack
            }
            \new NullVoice = "aligner" { \soprano \soprano \soprano \soprano }
            \new Voice = "women" \partCombine { \global \soprano \soprano \soprano \soprano \bar "|." }
                                               { \global \alto \nl \alto \nl \alto \nl \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                              \wordsFour  \chorus
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \tenor \tenor \tenor \tenor }
                                            { \global \bass \bass \bass \bass }
          >>
        >>
    \layout {
      indent = 1.5\cm
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
    paper-height = 2000\mm
    ragged-bottom = true
    system-system-spacing.basic-distance = #15
    system-separator-markup = \slashSeparator
  }
  \score {
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \new Voice {
               \RehearsalTrack
               \RehearsalTrack
               \RehearsalTrack
               \RehearsalTrack
            }
            \new Voice {
              \TempoTrack
              \TempoTrack
              \TempoTrack
              \TempoTrack
            }
            \new NullVoice = "aligner" { \soprano \soprano \soprano \soprano }
            \new Voice = "women" \partCombine { \global \soprano \soprano \soprano \soprano \bar "|." }
                                               { \global \alto \nl \alto \nl \alto \nl \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                              \wordsFour  \chorus
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \tenor \tenor \tenor \tenor }
                                            { \global \bass \bass \bass \bass }
          >>
        >>
    \layout {
      indent = 1.5\cm
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}

\book {
  \bookOutputSuffix "midi"
  \score {
%    \articulate
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano
          <<
            \new Voice {
              \TempoTrack
              \TempoTrack
              \TempoTrack
              \TempoTrack
            }
            \new Voice { \global \soprano \soprano \soprano \soprano \bar "|." }
            \addlyrics \wordsMidi
          >>
                                % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global \alto \nl \alto \nl \alto \nl \alto }
          >>
                                % Tenor staff
          \new Staff = tenor
          <<
            \clef "treble_8"
            \new Voice { \global \tenor \tenor \tenor \tenor }
          >>
                                % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Voice { \global \bass \bass \bass \bass }
          >>
        >>
    \midi {}
  }
}
