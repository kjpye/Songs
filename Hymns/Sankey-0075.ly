\version "2.22.0"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Jesus Christ our Saviour"
  subtitle    = "Sankey No. 75"
  subsubtitle = "Sankey 880 No. 525"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "James McGranahan."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "El Nathan."

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key g \major
  \time 4/4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
% \mark \markup { \circle "1a" }
  \mark \markup { \box "A" } s1*4
  \mark \markup { \box "B" } s1*4
  \mark \markup { \box "C" } s1*4
  \mark \markup { \box "D" } s1*4
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

soprano = \relative {
  b'4^\markup\smallCaps Choir. b a g
  d4 e fis2
  g4^\markup\smallCaps All. b d b
  b2 a
  b4^\markup\smallCaps Choir. b a g % B
  d4 e fis2
  g4^\markup\smallCaps All. b d b
  a2 g
  d'4^\markup\smallCaps Chorus. d d d % C
  e4 e e2
  d4 e d b
  b4 a a2
  b4 b a g % D
  d4 e fis2
  g4 b d b
  a2 g
}

alto = \relative {
  d'4 d c b
  c4 c c2
  b4 d d g
  g2 fis
  d4 d c b % B
  c4 b c2
  b4 d d d
  c2 b
  g'4 g g g % C
  g4 g g2
  g4 4 4 4
  g4 fis fis2
  d4 d c b
  c4 c c2
  b4 d d d
  c2 b
}

tenor = \relative {
  g4 g d d
  f4 g a2
  g4 g a d
  d2 d
  g,4 g d d % B
  f4 g a2
  g4 g a g
  fis2 g
  b4 b b b % C
  c4 4 2
  b4 c b d
  d4 4 2
  g,4 g d d % D
  fis4 g a2
  g4 g a g
  fis2 g
}

bass= \relative {
  g4 g g, g
  d'4 d d2
  g4 g fis g
  d2 d
  g4 g g, g % B
  d'4 d d2
  g4 g fis g
  d2 g,
  g'4 g g g % C
  c,4 c c2
  g'4 g g g
  d4 d d2
  g4 g g, g
  d'4 d d2
  g4 g fis g
  d2 g,
}

chorus = \lyricmode {
  Sound the cho -- rus load and clear—
  He hath brought sal -- va -- tion near;
  None so pre -- cious, none so dear:
  Je -- sus Christ our Sa -- viour!
}

wordsOne = \lyricmode {
  \set stanza = "1."
  Who came down from heav'n to earth?
  Je -- sus Christ our Sa -- viour!
  Came a child of low -- ly birth?
  Je -- sus Christ our Sa -- viour!
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Who was lift -- ed on the tree?
  Je -- sus Christ our Sa -- viour!
  There to ran -- som you and me?
  Je -- sus Christ our Sa -- viour!
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Who hath pro -- ised to for -- give?
  Je -- sus Christ our Sa -- viour!
  Who hath said, "\"Be" -- lieve and "live\">"
  Je -- sus Christ our Sa -- viour!
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Who is now en -- throned a -- bove?
  Je -- sus Christ our Sa -- viour!
  Whom should we o -- ney and love?
  Je -- sus Christ our Sa -- viour!
}
  
wordsFive = \lyricmode {
  \set stanza = "5."
  Who a -- gain from heav'n shall come?
  Je -- sus Christ our Sa -- viour!
  Take to glo -- ry all His own?
  Je -- sus Christ our Sa -- viour!
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "\nWho " "came " "down " "from " "heav'n " "to " "earth? "
  "\nJe" "sus " "Christ " "our " Sa "viour! "
  "\nCame " "a " "child " "of " low "ly " "birth? "
  "\nJe" "sus " "Christ " "our " Sa "viour! "
  "\nSound " "the " cho "rus " "load " "and " "clear— "
  "\nHe " "hath " "brought " sal va "tion " "near; "
  "\nNone " "so " pre "cious, " "none " "so " "dear: "
  "\nJe" "sus " "Christ " "our " Sa "viour! "

  \set stanza = "2."
  "\nWho " "was " lift "ed " "on " "the " "tree? "
  "\nJe" "sus " "Christ " "our " Sa "viour! "
  "\nThere " "to " ran "som " "you " "and " "me? "
  "\nJe" "sus " "Christ " "our " Sa "viour! "
  "\nSound " "the " cho "rus " "load " "and " "clear— "
  "\nHe " "hath " "brought " sal va "tion " "near; "
  "\nNone " "so " pre "cious, " "none " "so " "dear: "
  "\nJe" "sus " "Christ " "our " Sa "viour! "

  \set stanza = "3."
  "\nWho " "hath " pro "ised " "to " for "give? "
  "\nJe" "sus " "Christ " "our " Sa "viour! "
  "\nWho " "hath " "said, " "\"Be" "lieve " "and " "live\"> "
  "\nJe" "sus " "Christ " "our " Sa "viour! "
  "\nSound " "the " cho "rus " "load " "and " "clear— "
  "\nHe " "hath " "brought " sal va "tion " "near; "
  "\nNone " "so " pre "cious, " "none " "so " "dear: "
  "\nJe" "sus " "Christ " "our " Sa "viour! "

  \set stanza = "4."
  "\nWho " "is " "now " en "throned " a "bove? "
  "\nJe" "sus " "Christ " "our " Sa "viour! "
  "\nWhom " "should " "we " o "ney " "and " "love? "
  "\nJe" "sus " "Christ " "our " Sa "viour! "
  "\nSound " "the " cho "rus " "load " "and " "clear— "
  "\nHe " "hath " "brought " sal va "tion " "near; "
  "\nNone " "so " pre "cious, " "none " "so " "dear: "
  "\nJe" "sus " "Christ " "our " Sa "viour! "

  \set stanza = "5."
  "\nWho " a "gain " "from " "heav'n " "shall " "come? "
  "\nJe" "sus " "Christ " "our " Sa "viour! "
  "\nTake " "to " glo "ry " "all " "His " "own? "
  "\nJe" "sus " "Christ " "our " Sa "viour! "
  "\nSound " "the " cho "rus " "load " "and " "clear— "
  "\nHe " "hath " "brought " sal va "tion " "near; "
  "\nNone " "so " pre "cious, " "none " "so " "dear: "
  "\nJe" "sus " "Christ " "our " Sa "viour! "
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
            \new NullVoice = "aligner" \soprano
            \new Voice = "women" \partCombine { \global \soprano \bar "|." } { \global \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne \chorus }
            \new Lyrics \lyricsto "aligner"   \wordsTwo
            \new Lyrics \lyricsto "aligner"   \wordsThree
            \new Lyrics \lyricsto "aligner"   \wordsFour
            \new Lyrics \lyricsto "aligner"   \wordsFive
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
               \RehearsalTrack
               \RehearsalTrack
            }
            \new Voice {
              \TempoTrack
              \TempoTrack
              \TempoTrack
              \TempoTrack
              \TempoTrack
            }
            \new NullVoice = "aligner" { \soprano \soprano \soprano \soprano \soprano }
            \new Voice = "women" \partCombine { \global \soprano \soprano \soprano \soprano \soprano \bar "|." }
                                               { \global \alto \nl \alto \nl \alto \nl \alto \nl \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                              \wordsFour  \chorus
                                              \wordsFive  \chorus
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \tenor \tenor \tenor \tenor \tenor }
                                            { \global \bass \bass \bass \bass \bass }
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
              \TempoTrack
              \TempoTrack
            }
            \new NullVoice = "aligner" { \soprano \soprano \soprano \soprano \soprano }
            \new Voice = "women" \partCombine { \global \soprano \soprano \soprano \soprano \soprano \bar "|." }
                                               { \global \alto \nl \alto \nl \alto \nl \alto \nl \alto }
            \new Lyrics \lyricsto "aligner" \wordsMidi
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \tenor \tenor \tenor \tenor \tenor }
                                            { \global \bass \bass \bass \bass \bass }
          >>
        >>
      >>
    >>
    \midi {}
  }
}
