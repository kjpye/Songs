\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Salvation."
  subtitle    = "Sankey No. 355"
  subsubtitle = "Sankey 880 No. 205"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "P. P. Bliss"
%  arranger    = "arranger"
%  opus        = "opus"

%  poet        = \markup\smallCaps "poet"
  meter       = \markup\smallCaps "C. M."
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
  \autoBeamOff
  g'4
  c4 c b c
  d4 c b a
  g4 g a b
  c2. \bar "|" \break g4
  c4 c b c % B
  d4 c b a
  g4 g a b
  c2. \bar "|" \break 4^\markup\smallCaps Chorus.
  d2 4 4 % C
  e2 c4 4
  b4 b c c
  d2. \bar "|" \break 4
  e2 d4 c % D
  c2 a4 4
  g4 g a b
  c2.
}

alto = \relative {
  \autoBeamOff
  e'4
  e4 4 f g
  a4 a g f
  e4 g f f
  e2. 4
  e4 e f g % B
  a4 a g f
  e4 g f f
  e2. 4
  g2 4 4 % C
  g2 e4 e
  g4 g g e
  g2. 4
  g2 f4 e % D
  a2 f4 f
  e4 g f f
  e2.
}

tenor = \relative {
  \autoBeamOff
  c'4
  c4 g g c
  a4 a c c
  c4 c c g
  g2. c4
  c4 g g c % B
  a4 a c c
  c4 c c g
  g2. c4
  b2 4 4 % C
  c2 g4 c
  d4 d c c
  b2. 4
  c2 b4 c % D
  c2 4 4
  c4 4 4 g
  g2.
}

bass = \relative {
  \autoBeamOff
  c4
  c4 4 d e
  f4 f f f
  g4 e f g
  c,2. 4
  c4 c d e % B
  f4 f f f
  g4 e f g
  c,2. 4
  g'2 4 4 % C
  c2 c,4 c
  g'4 f e c
  g'2. 4
  c2 g4 a % D
  f2 4 4
  g4 e f g
  c,2.
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  Sal -- va -- tion, Sal -- va -- tion,
  The grace of God doth bring;
  Sal -- va -- tion, Sal -- va -- tion,
  Thro' Christ our Lord and King.
}

verses = 3

wordsOne = \lyricmode {
  \set stanza = "1."
  Come, sing the gos -- pel's joy -- ful sound,
  Sal -- va -- tion full and free;
  Pro -- claim to all the world a -- round
  The year of ju -- bi -- lee!
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Ye mourn -- ing souls, a -- loud re -- joice!
  Ye blind, your Sa -- viour see!
  Ye pris -- 'ners, sing with thank -- ful voice:
  The Lord hath made you free!
  
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  With rap -- ture swell the song a -- gain,
  Of Je -- sus' dy -- ing love;
  'Tis peace on earth, good -- will to men,
  And praise to God a -- bove!
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Come, " "sing " "the " gos "pel's " joy "ful " "sound, "
  "\nSal" va "tion " "full " "and " "free; "
  "\nPro" "claim " "to " "all " "the " "world " a "round "
  "\nThe " "year " "of " ju bi "lee! "
  "\nSal" va "tion, " Sal va "tion, "
  "\nThe " "grace " "of " "God " "doth " "bring; "
  "\nSal" va "tion, " Sal va "tion, "
  "\nThro' " "Christ " "our " "Lord " "and " "King. "

  \set stanza = "2."
  "\nYe " mourn "ing " "souls, " a "loud " re "joice! "
  "\nYe " "blind, " "your " Sa "viour " "see! "
  "\nYe " pris "'ners, " "sing " "with " thank "ful " "voice: "
  "\nThe " "Lord " "hath " "made " "you " "free! "
  "\nSal" va "tion, " Sal va "tion, "
  "\nThe " "grace " "of " "God " "doth " "bring; "
  "\nSal" va "tion, " Sal va "tion, "
  "\nThro' " "Christ " "our " "Lord " "and " "King. "
  
  \set stanza = "3."
  "\nWith " rap "ture " "swell " "the " "song " a "gain, "
  "\nOf " Je "sus' " dy "ing " "love; "
  "\n'Tis " "peace " "on " "earth, " good "will " "to " "men, "
  "\nAnd " "praise " "to " "God " a "bove! "
  "\nSal" va "tion, " Sal va "tion, "
  "\nThe " "grace " "of " "God " "doth " "bring; "
  "\nSal" va "tion, " Sal va "tion, "
  "\nThro' " "Christ " "our " "Lord " "and " "King. "
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
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \new Voice \RehearsalTrack
            \new Voice \TempoTrack
            \new NullVoice = "aligner" \soprano
            \new Voice = "women" \partCombine { \global \soprano \bar "|." } { \global \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne \chorus }
            \new Lyrics \lyricsto "aligner"   \wordsTwo
            \new Lyrics \lyricsto "aligner"   \wordsThree
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
      \pointAndClickOff
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
            \new Voice { \repeat unfold \verses \RehearsalTrack }
            \new Voice { \repeat unfold \verses \TempoTrack }
            \new NullVoice = "aligner" { \repeat unfold \verses \soprano }
            \new Voice = "women" \partCombine { \global \repeat unfold \verses \soprano \bar "|." }
                                               { \global \repeat unfold \verses { \alto \nl } \bar "|." }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \repeat unfold \verses \tenor }
                                            { \global \repeat unfold \verses \bass }
          >>
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
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \new Voice { \repeat unfold \verses \RehearsalTrack }
            \new Voice { \repeat unfold \verses \TempoTrack }
            \new NullVoice = "aligner" { \repeat unfold \verses \soprano }
            \new Voice = "women" \partCombine { \global \repeat unfold \verses \soprano \bar "|." }
                                               { \global \repeat unfold \verses { \alto \nl } \bar "|." }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \repeat unfold \verses \tenor }
                                            { \global \repeat unfold \verses \bass }
          >>
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
