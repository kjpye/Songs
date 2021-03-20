\version "2.22.0"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Once I was Dead in Sin."
  subtitle    = "Sankey No. 78"
  subsubtitle = "Sankey 880 No. 115"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = ""
%  arranger    = \markup\smallCaps "P. P. Bliss."
%  opus        = "opus"

  poet        = \markup\smallCaps "Rev. A. T. Pierson, D. D."

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key c \major
  \time 6/8
  \partial 8
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
% \mark \markup { \circle "1a" }
  \mark \markup { \box "A" } s8 s2.*3 s4. s4
  \mark \markup { \box "B" } s8 s2.*3 s4. s4
  \mark \markup { \box "C" } s8 s2.*3 s4. s4
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

soprano = \relative {
  g'8\omit\mf
  g4 8 e4 g8
  a4.(c8 b) a
  g4 8 f4 g8
  e4.~4 \bar "|" \break \partial 8 g8
  g4 8 e4 g8 % B
  a4.(c8 b) a
  g4 8 b(a) b
  c4.~4  \bar "|" \break \partial 8 c8^\f^\markup\smallCaps Refrain.
  d4 8 8(c) b
  c4 8 g4 c8^\p
  b4 8 8(a) b
  c4.~4
}

alto = \relative {
  e'8\omit\mf
  e4 8 c4 e8
  f4.(a8 g) f
  e4 8 d4 b8
  c4.~4 e8
  e4 8 c4 e8 % B
  f4.(a8 g) f
  e4 g8 f4 f8
  e4.~4 8\omit\f
  f4 8 8 e d % C
  e4 8 4 8\omit\p
  r4 8 4 8
  e4.~4
}

tenor = \relative {
  c'8\omit\mf
  c4 8 g4 c8
  c4.~4 8
  c4 8 b4 g8
  g4.~4 c8
  c4 8 g4 c8 % B
  c4.~4 c8
  c4 e8 d4 8
  c4.~4 8\omit\f
  b4 8 8 c d % C
  c4 8 4 8\omit\p
  d4 8 4 g,8
  g4.~4
}

bass= \relative {
  c8\omit\mf
  c4 8 4 8
  f4.~4 8
  g4 8 4 8
  c,4.~4 8
  c4 8 4 8
  f4.~4 8 % B
  g4 8 4 8
  c,4.~4 8\omit\f
  g'4 8 4 8 % C
  c,4 8 4 8\omit\p
  g'4 8 4 8
  c,4.~4
}

chorus = \lyricmode {
  And can it be that "\"He" loved me,
  And gave Him -- self for "me\"?"
}

wordsOne = \lyricmode {
  \set stanza = "1."
  Once I was dead in sin, __
  And hope with -- in me died;
  But now I'm dead to sin __
  With Je -- sus cru -- ci -- fied.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  O height I can -- not reach! __
  O depth I can -- not sound!
  O love, O bound -- less love, __
  In my Re -- deem -- er found!
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  O cold, un -- grate -- ful heart,
  That can from Je -- sus turn,
  When liv -- ing fires of love
  Shoul on his al -- tar burn.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  I live— and yet not I,
  But Christ that lives in me.
  Who from the law of sin
  And death hath made me free.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Once " "I " "was " "dead " "in " "sin, " 
  "\nAnd " "hope " with "in " "me " "died; "
  "\nBut " "now " "I'm " "dead " "to " "sin " 
  "\nWith " Je "sus " cru ci "fied. "
  "\nAnd " "can " "it " "be " "that " "\"He " "loved " "me, "
  "\nAnd " "gave " Him "self " "for " "me\"? "

  \set stanza = "2."
  "\nO " "height " "I " can "not " "reach! " 
  "\nO " "depth " "I " can "not " "sound! "
  "\nO " "love, " "O " bound "less " "love, " 
  "\nIn " "my " Re deem "er " "found! "
  "\nAnd " "can " "it " "be " "that " "\"He " "loved " "me, "
  "\nAnd " "gave " Him "self " "for " "me\"? "

  \set stanza = "3."
  "\nO " "cold, " un grate "ful " "heart, "
  "\nThat " "can " "from " Je "sus " "turn, "
  "\nWhen " liv "ing " "fires " "of " "love "
  "\nShoul " "on " "his " al "tar " "burn. "
  "\nAnd " "can " "it " "be " "that " "\"He " "loved " "me, "
  "\nAnd " "gave " Him "self " "for " "me\"? "

  \set stanza = "4."
  "\nI " "live— " "and " "yet " "not " "I, "
  "\nBut " "Christ " "that " "lives " "in " "me. "
  "\nWho " "from " "the " "law " "of " "sin "
  "\nAnd " "death " "hath " "made " "me " "free. "
  "\nAnd " "can " "it " "be " "that " "\"He " "loved " "me, "
  "\nAnd " "gave " Him "self " "for " "me\"? "
}
  
nl = { \bar "||" \break }

\book {
  \bookOutputSuffix "repeat"
  \score {
%    \articulate
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
            \new Lyrics \lyricsto "aligner"   \wordsFour
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
            }
            \new NullVoice = "aligner" { \soprano \soprano \soprano \soprano }
            \new Voice = "women" \partCombine { \global \soprano \soprano \soprano \soprano \bar "|." }
                                               { \global \alto \nl \alto \nl \alto \nl \alto }
            \new Lyrics \lyricsto "aligner" \wordsMidi
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \tenor \tenor \tenor \tenor }
                                            { \global \bass \bass \bass \bass }
          >>
        >>
      >>
    >>
    \midi {}
  }
}
