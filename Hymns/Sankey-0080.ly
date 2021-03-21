\version "2.22.0"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "He Came to Bethany."
  subtitle    = "Sankey No. 80"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "James McGranahan."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "P. P. Bliss."

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

#(set-global-staff-size 19)

global = {
  \key f \major
  \time 4/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
% \mark \markup { \circle "1a" }
  \mark \markup { \box "A" } s4 s1*2 s2
  \mark \markup { \box "B" } s2 s1*2 s2.
  \mark \markup { \box "C" } s4 s1*3
  \mark \markup { \box "D" } s1*3 s2
  \mark \markup { \box "E" } s2 s1*2 s2.
  \mark \markup { \box "F" } s4 s1 s2.
  \mark \markup { \box "G" } s4 s1*2 s2
  \mark \markup { \box "H" } s2 s1*2
  \mark \markup { \box "I" } s1*3 s2
  \mark \markup { \box "J" } s2 s1*2
  \mark \markup { \box "K" } s1*2 s2.
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
  s4
  s1*29
  s2 \tempo 4=40 s4 \tempo 4=120 s4
  s1
  s2.
}

soprano = \relative {
  c''8. bes16
  a4 4 4 g8 f
  bes4 4 4 8 8
  a4. 8 \bar "|" \break \partial 2 a8 g f4
  g2. c8. bes16 % B
  a4 a a g8 f
  bes4 4 4 \bar "|" \break \partial 4 d8 d
  c4. 8 8 bes g4 % C
  f2. c'8. bes16
  a4 4 4 g8 f \break
  bes4 4 4 8 8 % D
  a4. 8 8 g f4
  g2. c8. bes16
  a4 4 \bar "|" \break \partial 2 a4 g8 f
  bes4 4 4 d8 8 % E
  c4. 8 8 bes g4
  f2. \bar "|" \break \partial 4 c'8^\markup\smallCaps Chorus. c
  d8 8 8 8 4 f8. d16 % F
  c4. a8 f4 \bar "|" \break \partial 4 a8 a
  g4. 8 c c bes4 % G
  a2(c4) 8 8
  d4 d \bar "|" \break \partial 2 d4 f8. d16
  c4. a8 f4 a8 a % H
  g4. a8 g f e(d) \break
  c2. c4 % I
  a'4 4 8 g f4
  bes2. 4
  a4 a \bar "|" \break \partial 2 a8 g f4
  g2. c8. bes16 % J
  a4 a a g8 f \break
  bes4 c d\fermata f8. d16 % K
  c4. 8 8 bes g4
  f2.
}

alto = \relative {
  a'8. g16
  f4 4 4 8 8
  f4 4 4 8 8
  f4. 8 8 8 4
  e2. 8. g16 % B
  f4 4 4 8 8
  f4 4 4 8 8
  f4. 8 e8 8 4 % C
  f2. a8. g16
  f4 4 4 8 8
  f4 4 4 8 8 % D
  f4. 8 8 8 4
  e2. 8. g16
  f4 4 4 8 8
  f4 4 4 8 8
  f4. 8 e8 8 4
  f2. 8 8
  f8 8 8 8 4 8. 16 % F
  f4. 8 4 8 8
  e4. 8 8 8 g4 % G
  f2(a4) f8 f
  f4 4 4 8. 16
  f4. 8 4 8 8 % H
  e4. f8 e d c(b)
  c2. 4
  f4 4 8 8 4 % I
  f8 8 4 4 4
  f4 4 8 8 4
  e8 8 4 4 8. g16 % J
  f4 4 4 8 8
  f4 4 4\fermata 8. 16 % K
  f4. 8 e e e4
  f2.
}

tenor = \relative {
  c'8. 16
  c4 4 4 bes8 a
  d4 4 4 8 8
  c4. 8 8 bes a4
  c2. 8. 16 % B
  c4 4 4 bes8 a
  d4 4 4 bes8 8
  a4. 8 g8 8 bes4 % C
  a2. c8. 16
  c4 4 4 bes8 a
  d4 4 4 8 8 % D
  c4. 8 8 bes a4
  c2. 8. 16
  c4 4 4 bes8 a
  d4 4 4 bes8 8 % E
  a4. 8 g8 8 bes4
  a2. 8 8
  bes8 8 8 8 4 d8. bes16 % F
  a4. c8 a4 c8 8
  c4. 8 8 8 4 % G
  c2(a4) 8 8
  bes4 4 4 d8. bes16
  a4. c8 a4 c8 8 % H
  g4. 8 8 8 8(f)
  e2. g4 % I
  f4 c'4 8 bes a4
  d2. 4
  c4 4 8 bes a4
  c2. 8. 16 % J
  c4 4 4 8 8
  bes4 a bes\fermata d8. bes16 % K
  a4. 8 g g bes4
  a2.
}

bass= \relative {
  f8. 16
  f4 4 4 8 8
  bes,4 4 4 8 8
  f'4. 8 8 8 4
  c2. 8. 16 % B
  f4 4 4 8 8
  bes,4 4 4 8 8
  c4. 8 8 8 4 % C
  f2. 8. 16
  f4 4 4 8 8
  bes,4 4 4 8 8 % D
  f'4. 8 8 8 4
  c2. 8. 16
  f4 4 4 8 8
  bes,4 4 4 8 8 % E
  c4. 8 8 8 4
  f2. 8 8
  bes,8 8 8 8 4 8. 16 % F
  f'4. 8 4 8 8
  c4. 8 8 8 4 % % G
  f2. 8 8
  bes,4 4 4 8. 16
  f'4. 8 4 8 8 % H
  g4. 8 8 8 g,4
  c2. e4 % I
  f4 4 8 8 4
  f8 8 4 4 4
  f4 4 8 8 4
  c8 8 4 4 8. 16 % J
  f4 4 4 ees8 8
  d4 c bes\fermata 8. 16 % K
  c4. 8 8 8 4
  f2.
}

chorus = \lyricmode {
  Twas a hap -- py, hap -- py day in the old -- en time
  When the Lord to Beth -- a -- ny came;
  O -- pen wide the door, let Him en -- ter now,
  For His love is ev -- er the same!
  His love is ev -- er the same! __
  His love is ev -- er the same!
  O -- pen wide the door, let Him en -- ter now,
  For His love is ev -- er the same!
}

altchorus = \lyricmode {
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _
  is ev -- er the same!
  _ _ _ _ _
  is ev -- er the same!
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _
}

wordsOne = \lyricmode {
  \set stanza = "1."
  There is love, true love, and the heart grow warm,
  When the Lord to Beth -- a -- ny comes;
  And the Word of Life has a won -- drous charm,
  When the Lord to Beth -- a -- ny comes.
  There is joy, glad joy, and a feast is spread,
  When the Lord to Beth -- a -- ny comes;
  For His heav'n -- ly voice brings to life the dead,
  When the Lord to Beth -- a -- ny comes.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  There is peace, sweet [eace, and the life grows calm,
  When the Lord to Beth -- a -- ny comes;
  And the trust -- ing soul sings a sweet, soft psalm,
  When the Lord to Beth -- a -- ny comes.
  There is faith, strong faith, and our home seems near,
  When the Lord to Beth -- a -- ny comes;
  And the crown more bright, and the cross more dear,
  When the Lord to Beth -- a -- ny comes.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "There " "is " "love, " "true " "love, " "and " "the " "heart " "grow " "warm, "
  "\nWhen " "the " "Lord " "to " Beth a "ny " "comes; "
  "\nAnd " "the " "Word " "of " "Life " "has " "a " won "drous " "charm, "
  "\nWhen " "the " "Lord " "to " Beth a "ny " "comes. "
  "\nThere " "is " "joy, " "glad " "joy, " "and " "a " "feast " "is " "spread, "
  "\nWhen " "the " "Lord " "to " Beth a "ny " "comes; "
  "\nFor " "His " heav'n "ly " "voice " "brings " "to " "life " "the " "dead, "
  "\nWhen " "the " "Lord " "to " Beth a "ny " "comes. "
  "\nTwas " "a " hap "py, " hap "py " "day " "in " "the " old "en " "time "
  "\nWhen " "the " "Lord " "to " Beth a "ny " "came; "
  "\nO" "pen " "wide " "the " "door, " "let " "Him " en "ter " "now, "
  "\nFor " "His " "love " "is " ev "er " "the " "same! "
  "\nHis " "love " "is " ev "er " "the " "same! " 
  "\nHis " "love " "is " ev "er " "the " "same! "
  "\nO" "pen " "wide " "the " "door, " "let " "Him " en "ter " "now, "
  "\nFor " "His " "love " "is " ev "er " "the " "same! "

  \set stanza = "2."
  "\nThere " "is " "peace, " "sweet " "[eace, " "and " "the " "life " "grows " "calm, "
  "\nWhen " "the " "Lord " "to " Beth a "ny " "comes; "
  "\nAnd " "the " trust "ing " "soul " "sings " "a " "sweet, " "soft " "psalm, "
  "\nWhen " "the " "Lord " "to " Beth a "ny " "comes. "
  "\nThere " "is " "faith, " "strong " "faith, " "and " "our " "home " "seems " "near, "
  "\nWhen " "the " "Lord " "to " Beth a "ny " "comes; "
  "\nAnd " "the " "crown " "more " "bright, " "and " "the " "cross " "more " "dear, "
  "\nWhen " "the " "Lord " "to " Beth a "ny " "comes. "
  "\nTwas " "a " hap "py, " hap "py " "day " "in " "the " old "en " "time "
  "\nWhen " "the " "Lord " "to " Beth a "ny " "came; "
  "\nO" "pen " "wide " "the " "door, " "let " "Him " en "ter " "now, "
  "\nFor " "His " "love " "is " ev "er " "the " "same! "
  "\nHis " "love " "is " ev "er " "the " "same! " 
  "\nHis " "love " "is " ev "er " "the " "same! "
  "\nO" "pen " "wide " "the " "door, " "let " "Him " en "ter " "now, "
  "\nFor " "His " "love " "is " ev "er " "the " "same! "
}
  
wordsMidiMid = \lyricmode {
  \set stanza = "1."
  "There " "is " "love, " "true " "love, " "and " "the " "heart " "grow " "warm, "
  "\nWhen " "the " "Lord " "to " Beth a "ny " "comes; "
  "\nAnd " "the " "Word " "of " "Life " "has " "a " won "drous " "charm, "
  "\nWhen " "the " "Lord " "to " Beth a "ny " "comes. "
  "\nThere " "is " "joy, " "glad " "joy, " "and " "a " "feast " "is " "spread, "
  "\nWhen " "the " "Lord " "to " Beth a "ny " "comes; "
  "\nFor " "His " heav'n "ly " "voice " "brings " "to " "life " "the " "dead, "
  "\nWhen " "the " "Lord " "to " Beth a "ny " "comes. "
  "\nTwas " "a " hap "py, " hap "py " "day " "in " "the " old "en " "time "
  "\nWhen " "the " "Lord " "to " Beth a "ny " "came; "
  "\nO" "pen " "wide " "the " "door, " "let " "Him " en "ter " "now, "
  "\nFor " "His " "love " "is " ev "er " "the " "same! "
  "\nHis " "love " "is " ev "er " "is " ev "er " "the " "same! " 
  "\nHis " "love " "is " ev "er " "is " ev "er " "the " "same! "
  "\nO" "pen " "wide " "the " "door, " "let " "Him " en "ter " "now, "
  "\nFor " "His " "love " "is " ev "er " "the " "same! "

  \set stanza = "2."
  "\nThere " "is " "peace, " "sweet " "[eace, " "and " "the " "life " "grows " "calm, "
  "\nWhen " "the " "Lord " "to " Beth a "ny " "comes; "
  "\nAnd " "the " trust "ing " "soul " "sings " "a " "sweet, " "soft " "psalm, "
  "\nWhen " "the " "Lord " "to " Beth a "ny " "comes. "
  "\nThere " "is " "faith, " "strong " "faith, " "and " "our " "home " "seems " "near, "
  "\nWhen " "the " "Lord " "to " Beth a "ny " "comes; "
  "\nAnd " "the " "crown " "more " "bright, " "and " "the " "cross " "more " "dear, "
  "\nWhen " "the " "Lord " "to " Beth a "ny " "comes. "
  "\nTwas " "a " hap "py, " hap "py " "day " "in " "the " old "en " "time "
  "\nWhen " "the " "Lord " "to " Beth a "ny " "came; "
  "\nO" "pen " "wide " "the " "door, " "let " "Him " en "ter " "now, "
  "\nFor " "His " "love " "is " ev "er " "the " "same! "
  "\nHis " "love " "is " ev "er " "is " ev "er " "the " "same! " 
  "\nHis " "love " "is " ev "er " "is " ev "er " "the " "same! "
  "\nO" "pen " "wide " "the " "door, " "let " "Him " en "ter " "now, "
  "\nFor " "His " "love " "is " ev "er " "the " "same! "
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
            \new NullVoice = "alignerA" \alto
            \new Voice = "women" \partCombine { \global \soprano \bar "|." } { \global \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne \chorus }
            \new Lyrics \lyricsto "aligner"   \wordsTwo
            \new Lyrics \lyricsto "alignerA"  \altchorus
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
            }
            \new Voice {
              \TempoTrack
              \TempoTrack
            }
            \new NullVoice = "aligner" { \soprano \soprano }
            \new NullVoice = "alignerA" { \alto \alto }
            \new Voice = "women" \partCombine { \global \soprano \soprano \bar "|." }
                                               { \global \alto \nl \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                            }
            \new Lyrics \lyricsto "alignerA" { \altchorus \altchorus }
%            \new Lyrics \lyricsto "aligner" \wordsMidi
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \tenor \tenor }
                                            { \global \bass  \bass  }
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
  \bookOutputSuffix "midi-hilo"
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
            }
            \new Voice {
              \TempoTrack
              \TempoTrack
            }
            \new NullVoice = "aligner" { \soprano \soprano }
            \new NullVoice = "alignerA" { \alto \alto }
            \new Voice = "women" \partCombine { \global \soprano \soprano \bar "|." }
                                               { \global \alto \nl \alto }
            \new Lyrics \lyricsto "aligner" \wordsMidi
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \tenor \tenor }
                                            { \global \bass  \bass  }
          >>
        >>
      >>
    >>
    \midi {}
  }
}

\book {
  \bookOutputSuffix "midi-mid"
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
            }
            \new Voice {
              \TempoTrack
              \TempoTrack
            }
            \new NullVoice = "aligner" { \alto \alto }
            \new Voice = "women" \partCombine { \global \soprano \soprano \bar "|." }
                                               { \global \alto \nl \alto }
            \new Lyrics \lyricsto "aligner" \wordsMidiMid
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \tenor \tenor }
                                            { \global \bass  \bass  }
          >>
        >>
      >>
    >>
    \midi {}
  }
}
