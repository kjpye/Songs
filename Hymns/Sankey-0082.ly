\version "2.22.0"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "All the Way to Calvary."
  subtitle    = "Sankey No. 82"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "I. H. Meredith."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Mrs. W. G. Moyer."

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

#(set-global-staff-size 18)

global = {
  \key g \major
  \time 4/4
  \tempo 4=120
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
% \mark \markup { \circle "1a" }
  \mark \markup { \box "A" } s1*3
  \mark \markup { \box "B" } s1*3
  \mark \markup { \box "C" } s1*2 s2
  \mark \markup { \box "D" } s2 s1*3
  \mark \markup { \box "E" } s1*4
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
  s1*16
}

soprano = \relative {
  d'8. 16 g8. a16 b4 g
  g8. a16 g8. e16 d4. r8
  d8. 16 g8. a16 b4 g \break
  a4 d d4. r8 % B
  e8. 16 c8. e16 d4 b
  c8. b16 c8. d16 b4. r8 \break
  a8. b16 c8. e16 d4 b % C
  b4 a g4. r8 \bar "||"
  d'8.^\markup\smallCaps Chorus  16 8. 16 \bar "|" \break \partial 2 d8. c16 b8. a16
  g4 b b4. g8 % D
  fis4 a a4. fis8
  g4 b d2
  d8. 16 8. e16 d8. c16 b8. a16 % E
  g4 b b d
  d4. c8 b4 a
  g2. r4
}

alto = \relative {
  b8. 16 8. c16 d4 d
  e8. 16 8. c16 b4. r8
  b8. 16 d8. 16 4 4
  fis4 4 g4. r8 % B
  g8. 16 e8. g16 4 4
  a8. gis16 a8. b16 g4. r8
  e8. 16 8. g16 4 4 % C
  fis4 4 e4. r8 \bar "||"
  g8. 16 8. 16 8. 16 8. d16
  d4 g g4. d8 % D
  d4 fis4 4. d8
  d4 g fis2
  g8. 16 8. 16 8. 16 8. e16 % E
  d4 g g g
  fis4. 8 4 d
  d2. r4
}

tenor = \relative {
  g8. 16 d8. 16 g4 g
  c8. 16 8. g16 4. r8
  g8. 16 8. fis16 g4 b
  d4 a b4. r8 % B
  c8. 16 g8. c16 b4 d
  d8. 16 8. 16 4. r8
  c8. 16 g8. c16 b4 d % C
  d4 c b4. r8 \bar "||"
  b8. 16 8. c16 b8. e16 b8. c16
  b4 d d4. b8 % D
  a4 c c4. a8
  b4 d d(c)
  b8. 16 8. c16 b8. e16 d8. c16 | % E
  b4 d d b
  a4. e'8 d4 c
  <g b>2. r4
}

bass= \relative {
  g,8. 16 8. 16 4 b
  c8. 16 8. 16 g4. r8
  g8. 16 b8. d16 g4 g
  d4 d g4. r8 % B
  c,8. 16 8. 16 g'4 g
  d8. 16 8. 16 g4. r8
  c,8. 16  8. 16 d4 d % C
  d4 d g,4. r8 \bar "||"
  g'8. 16 8. 16 8. 16 8. 16
  g4 g g4. g8 % D
  d4 4 4. 8
  g4 g d2
  g8. 16 8. 16 8. 16 8. 16 % E
  g4 g g g
  d4. 8 4 4
  g,2. r4
}

chorus = \lyricmode {
  All the way to Cal -- va -- ry He went for me,
  He went for me, He went for me;
  All the way to Cal -- va -- ry
  He went for me, He died to set me free.
}

wordsOne = \lyricmode {
  \set stanza = "1."
  Oh, how dark the night that wrapt my spi -- rit round!
  Oh, how deep the woe my Sa -- viour found
  When His bless -- ed sun -- shine flood -- ed all my soul,
  Bade the dark -- ness van -- ish; made me whole!
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Trem -- bling -- ly a sin -- ner bow'd be -- fore His face,
  Naught I knew of par -- don— nor His grace;
  Heard a voice so ten -- der: "\"Cease" they wild re -- gret—
  I have bought thy par -- don, paid thy "debt/\""
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Oh, 'twas won -- drous love the Sa -- viour show'd for me,
  When He left His throne for Cal -- va -- ry,
  When He trod the wine -- perss, trod it all a -- lone:
  Praise His name for ev -- er— make it known!
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Oh, " "how " "dark " "the " "night " "that " "wrapt " "my " spi "rit " "round! "
  "\nOh, " "how " "deep " "the " "woe " "my " Sa "viour " "found "
  "\nWhen " "His " bless "ed " sun "shine " flood "ed " "all " "my " "soul, "
  "\nBade " "the " dark "ness " van "ish; " "made " "me " "whole! "
  "\nAll " "the " "way " "to " Cal va "ry " "He " "went " "for " "me, "
  "\nHe " "went " "for " "me, " "He " "went " "for " "me; "
  "\nAll " "the " "way " "to " Cal va "ry "
  "\nHe " "went " "for " "me, " "He " "died " "to " "set " "me " "free. "

  \set stanza = "2."
  "\nTrem" bling "ly " "a " sin "ner " "bow'd " be "fore " "His " "face, "
  "\nNaught " "I " "knew " "of " par "don— " "nor " "His " "grace; "
  "\nHeard " "a " "voice " "so " ten "der: " "\"Cease " "they " "wild " re "gret— "
  "\nI " "have " "bought " "thy " par "don, " "paid " "thy " "debt/\" "
  "\nAll " "the " "way " "to " Cal va "ry " "He " "went " "for " "me, "
  "\nHe " "went " "for " "me, " "He " "went " "for " "me; "
  "\nAll " "the " "way " "to " Cal va "ry "
  "\nHe " "went " "for " "me, " "He " "died " "to " "set " "me " "free. "

  \set stanza = "3."
  "\nOh, " "'twas " won "drous " "love " "the " Sa "viour " "show'd " "for " "me, "
  "\nWhen " "He " "left " "His " "throne " "for " Cal va "ry, "
  "\nWhen " "He " "trod " "the " wine "perss, " "trod " "it " "all " a "lone: "
  "\nPraise " "His " "name " "for " ev "er— " "make " "it " "known! "
  "\nAll " "the " "way " "to " Cal va "ry " "He " "went " "for " "me, "
  "\nHe " "went " "for " "me, " "He " "went " "for " "me; "
  "\nAll " "the " "way " "to " Cal va "ry "
  "\nHe " "went " "for " "me, " "He " "died " "to " "set " "me " "free. "
}
  
nl = { \bar "||" \break }

\book {
  \bookOutputSuffix "repeat"
  \score {
    \context GrandStaff <<
      <<
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
%    \articulate
    \context GrandStaff <<
      <<
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \new Voice {
               \RehearsalTrack
               \RehearsalTrack
               \RehearsalTrack
            }
            \new Voice {
              \TempoTrack
              \TempoTrack
              \TempoTrack
            }
            \new NullVoice = "aligner" { \soprano \soprano \soprano }
            \new Voice = "women" \partCombine { \global \soprano \soprano \soprano \bar "|." }
                                               { \global \alto \nl \alto \nl \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \tenor \tenor \tenor }
                                            { \global \bass \bass \bass }
          >>
        >>
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
    \context GrandStaff <<
      <<
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \new Voice {
              \TempoTrack
              \TempoTrack
              \TempoTrack
            }
            \new NullVoice = "aligner" { \soprano \soprano \soprano }
            \new Voice = "women" \partCombine { \global \soprano \soprano \soprano \bar "|." }
                                               { \global \alto \nl \alto \nl \alto }
            \new Lyrics \lyricsto "aligner" \wordsMidi
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \tenor \tenor \tenor }
                                            { \global \bass \bass \bass }
          >>
        >>
      >>
    >>
    \midi {}
  }
}
