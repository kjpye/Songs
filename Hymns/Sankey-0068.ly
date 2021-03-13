\version "2.22.0"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Dis Christ o'er Sinners weep?"
  subtitle    = "Sankey No. 68"
  subsubtitle = "Sankey 880 No. 159"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "J. S. Bach"
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "B. Beddome."
  meter       = \markup\smallCaps "s.m."
  piece       = \markup\smallCaps "Augustine."

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
% \mark \markup { \circle "1a" }
  \mark \markup { \box "A" } s4 s1*3 s2.
  \mark \markup { \box "B" } s4 s1*3 s2.
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

soprano = \relative {
  d'4
  g4 a b a
  g2. b4
  d4 d c b
  a2. \bar "|" \break \partial 4 b4
  g4 c b a % B
  g4 g a a
  b4 c b a
  g2.
}

alto = \relative {
  b4
  e4 fis g fis
  g2. g4
  g4 g a g
  fis2. fis4
  e4 g g fis % B
  e4 cis d fis
  g4 g g fis
  g2.
}

tenor = \relative {
  g4
  b4 d d d8(c)
  b2. d4
  d4 d e d
  d2. b4
  b4 e d c % B
  b4 g f d'
  d4 c d4. c8 b2.
}

bass= \relative {
  g4
  e4 d8(c) b(c) d4
  g,2. g'4
  b4 b, c g'
  d2. dis4
  e4 c g' d % B
  e4 e d d
  g4 c, d d
  g,2.
}

chorus = \lyricmode {
}

wordsOne = \lyricmode {
  \set stanza = "1."
  Did Christ o'er sin -- ners weep?
  And shall our tears be dry?
  Let floods of pen -- i -- ten -- tial grief
  Burst forth from ev -- 'ry eye.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  The Son of God in tears
  The won -- d'ring an -- gels see:
  Be thou as -- ton -- ish'd, O my soul!
  He shed those tears for thee.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  He wept that we might weep;
  Each sin de -- mands a tear:
  In heav'n a -- lone no sin is found,
  And there's no weep -- ing there.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "\nDid " "Christ " "o'er " sin "ners " "weep? "
  "\nAnd " "shall " "our " "tears " "be " "dry? "
  "\nLet " "floods " "of " pen i ten "tial " "grief "
  "\nBurst " "forth " "from " ev "'ry " "eye. "

  \set stanza = "2."
  "\nThe " "Son " "of " "God " "in " "tears "
  "\nThe " won "d'ring " an "gels " "see: "
  "\nBe " "thou " as ton "ish'd, " "O " "my " "soul! "
  "\nHe " "shed " "those " "tears " "for " "thee. "

  \set stanza = "3."
  "\nHe " "wept " "that " "we " "might " "weep; "
  "\nEach " "sin " de "mands " "a " "tear: "
  "\nIn " "heav'n " a "lone " "no " "sin " "is " "found, "
  "\nAnd " "there's " "no " weep "ing " "there. "
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
            \new Voice \TempoTrack
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
               \RehearsalTrack
               \RehearsalTrack
               \RehearsalTrack
            }
            \new Voice \TempoTrack
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
