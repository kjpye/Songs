\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "March on to Victory!"
  subtitle    = "Sankey No. 130"
  subsubtitle = "C.C. No. 224"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "H. P. Danks."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Fanny J. Crosby"

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
  \repeat volta 2 {
    \mark \markup { \box "C" } s4 s1*3 s2.
    \mark \markup { \box "D" } s4 s1*3 s2.
    \mark \markup { \box "E" } s4 s1*3 s2.
    \mark \markup { \box "F" } s4 s1*3 s2.
  }
  \mark \markup { \box "G" } s4 s1*3 s2.
  \mark \markup { \box "H" } s4 s1*3 s2.
  \mark \markup { \box "I" } s4 s1*3 s2.
  \mark \markup { \box "J" } s4 s1*3 s2.
}

TempoTrack = {
%  \set Score.tempoHideNote = ##t
  \tempo 4=120
  s4 s1*7 s2.
  \repeat volta 2 {
    s4
    s1*15
    s2 \tempo 4=40 s4 \tempo 4=120
  }
  s4 s1*15
  s2 \tempo 4=40 s4
}

soprano = \relative {
  \autoBeamOff
  d'4^\mf^\markup\italic "March movement."
  d4 e8.[fis16] g4 a
  b4. g8 d4 8. 16
  e4 c'8. 16 b4 a8[fis]
  g2 fis4 \bar "|" \break \partial 4 fis8. 16
  g4 b a fis8 8 % B
  g4 b8. 16 a4 8. 16
  b4 4 d8[cis] b[cis]
  d2 4 \bar "|" \break \partial 4
  \repeat volta 2 {
    d4
    d4 c8. b16 a4 b8. a16 % C
    g4 e d d
    e4 fis g b8.[a16]
    g2 fis4 \bar "|" \break \partial 4 d8. 16
    g4 a b cis % D
    d4 fis, g4 8. 16
    fis4 b8. a16 e4 b'8.[a16]
    d,2 4 \bar "|" \break \partial 4
    d^\markup\smallCaps Chorus.
    d4 e8.[fis16] g4 a % E
    b4. g8 d4 8. 16
    e4 c'8. 16 b4 a8[fis]
    g2 fis4 \bar "|" \break \partial 4 fis8. 16
    g4 b a fis8 8 % F
    g4 b8. 16 a4 b8 c
    d4 g, c b
    a2 g4\fermata \bar "|" \break \partial 4
  }
  d'4
  d4 c8. b16 a4 b8. a16 % G
  g4 e d d
  e4 fis g b8.[a16]
  g2 fis4 \bar "|" \break \partial 4 d8. 16
  g4 a b cis % H
  d4 fis, g4 8. 16
  fis4 b8. a16 e4 b'8.[a16]
  d2 4 \bar "|" \break \partial 4 d,4^\markup\smallCaps Chorus.
  d4 e8.[fis16] g4 a % I
  b4. g8 d4 8. 16
  e4 c'8. 16 b4 a8[e]
  g2 4 \bar "|" \break \partial 4 fis8. 16
  g4 b a fis8 8 % J
  g4 b8. 16 a4 b8 c
  d4 g, c b
  a2 g4\fermata
}

alto = \relative {
  c'4^\mf
  b4 c d d
  d4 b4 4 8. 16
  c4 e8. 16 4 4
  cis2 d4 8. 16
  d4 4 4 8 8 % B
  d4 8. 16 4 8. 16
  d4 e e e
  d2 4
  \repeat volta 2 {
    g
    fis4 8. 16 4 8. 16 % C
    g4 cis, d b
    c4 c d e
    d2 4 d8. 16
    d4 4 4 g % D
    fis4 d d4 8. 16
    d4 8. 16 cis4 4
    d2 4 c
    b4 c d d % E
    d4 b4 4 8. 16
    c4 e8. 16 d4 d
    cis2 d4 d8. 16
    e4 d4 4 8 8 % F
    d4 8. 16 4 8 8
    d4 b e d
    c2 d4\fermata
  }
  g4
  fis4 8. 16 4 8. 16 % G
  g4 cis, d b
  c4 4 d e
  d2 4 8. 16
  d4 4 4 g % H
  fis4 d4 4 8. 16
  d4 8. 16 cis4 4
  d2 4 c
  b4 c d d % I
  d4 b4 4 8. 16
  c4 e8. 16 4 4
  cis2 d4 8. 16
  e4 d4 4 8 8 % J
  d4 8. 16 4 8 8
  d4 b e d
  c2 b4\fermata
}

tenor = \relative {
  \autoBeamOff
  fis4^\mf
  g4 4 4 fis
  g4 4 4 8. 16
  g4 a8. 16 gis4 a
  a2 4 8. 16
  g4 4 fis a8 8 % B
  g4 8. 16 fis4 8. 16
  g4 4 4 4
  fis4(g) a
  \repeat volta 2 {
    b4
    c4 a8. b16 c4 d8. c16 % C
    b4 ais b g
    g4 a g gis8.[a16]
    b2 a4 fis8. 16
    g4 fis g a % D
    a4 4 g4 8. 16
    a4 fis8. 16 g4 4
    fis4(g) a fis
    g4 4 4 fis % E
    g4 4 4 8. 16
    g4 a8. 16 gis4 a
    a2 4 8. 16
    g4 4 fis a8 8 % F
    g4 8. 16 fis4 8 8
    g4 4 4 4
    fis2 4\fermata
  }
  b4
  c4 a8. b16 c4 d8. c16 % G
  b4 ais b g
  g4 a g gis8. a16
  b2 a4 fis8. 16
  g4 fis g a % H
  a4 4 g4 8. 16
  a4 fis8. 16 g4 4
  fis4(g) a fis
  g4 4 4 fis % I
  g4 4 4 8. 16
  g4 a8. 16 gis4 a
  a2 4 8. 16
  g4 4 fis a8 8 % J
  g4 8. 16 fis4 8 8
  g4 4 4 4
  fis2 g4\fermata
}

bass= \relative {
  \autoBeamOff
  d4^\mf
  a4 c b d
  g4 4 g,4 8. 16
  c4 a8. 16 b4 c
  e4(a,) d c8. 16
  b4 g d' c8 8 % B
  b4 g8. 16 d'4 8. 16
  g4 e a, a
  d4(e) f
  \repeat volta 2 {
    g
    a4 d,8. 16 4 8. 16 % C
    g4 4 4 g,
    c4 a b c
    d2 4 8. c16
    b4 d g e % D
    d4 c b bes8. 16
    a4 8. 16 4 4
    d4(e) f d
    g,4 c b d % E
    g4 4 g,4 8. 16
    c4 a8. 16 b4 c
    e4(a,) d c8. 16
    b4 g d' c8 8 % F
    b4 a8. 16 d4 8 c
    b4 e c g
    d'2 g,4\fermata
  }
  g'4
  a4 d,8. 16 4 8. 16 % G
  g4 4 4 g,
  c4 a b c
  d2 4 8. c16
  b4 d g e % H
  d4 c b bes8. 16
  a4 8. 16 4 4
  d4(e) fis d
  g,4 c b d % I
  g4 4 g,4 8. 16
  c4 a8. 16 b4 c
  e4(a,) d
  c8. 16
  b4 g d' c8 8 % J
  b4 g8. 16 d'4 8 8
  b4 e c g
  d'2 g,4\fermata
}

chorus = \lyricmode {
  March on, march on! sing joy -- ful -- ly,
  While the world, in -- to life a -- wa -- king,
  Hails the bright, bright ray of the glad Eas -- ter Day,
  O'er the hills in beau -- ty break -- ing!
}

chorusEmpty = \lyricmode {
  _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _
}

wordsOne = \lyricmode {
  \set stanza = "1."
  March on, while in praise ev -- 'ry heart we raise
  To Him, our King all -- glo -- rious,
  For He lives on high no more to die,
  And shall reign o'er the earth vc -- to -- rious!
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  March on, and pro -- claim our Re -- deem -- er's name,
  Who rent the grave a -- sun -- der,
  And the an -- gel eyes that saw Him rise,
  How they gazed on the scene with won -- der!
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  March on, and re -- joice with a tune -- ful voice,
  Ring out a grate -- ful cho -- rus;
  To His courts a -- way, oh, haste to -- day,
  Where the sa -- viour has gone be -- fore us!
}
  
wordsMidi = \lyricmode {
  "March " "on, " "march " "on! " "sing " joy ful "ly, "
  "\nWhile " "the " "world, " in "to " "life " a wa "king, "
  "\nHails " "the " "bright, " "bright " "ray " "of " "the " "glad " Eas "ter " "Day, "
  "\nO'er " "the " "hills " "in " beau "ty " break "ing! "

  \set stanza = "1."
  "\nMarch " "on, " "while " "in " "praise " ev "'ry " "heart " "we " "raise "
  "\nTo " "Him, " "our " "King " all glo "rious, "
  "\nFor " "He " "lives " "on " "high " "no " "more " "to " "die, "
  "\nAnd " "shall " "reign " "o'er " "the " "earth " vc to "rious! "
  "\nMarch " "on, " "march " "on! " "sing " joy ful "ly, "
  "\nWhile " "the " "world, " in "to " "life " a wa "king, "
  "\nHails " "the " "bright, " "bright " "ray " "of " "the " "glad " Eas "ter " "Day, "
  "\nO'er " "the " "hills " "in " beau "ty " break "ing! "

  \set stanza = "2."
  "\nMarch " "on, " "and " pro "claim " "our " Re deem "er's " "name, "
  "\nWho " "rent " "the " "grave " a sun "der, "
  "\nAnd " "the " an "gel " "eyes " "that " "saw " "Him " "rise, "
  "\nHow " "they " "gazed " "on " "the " "scene " "with " won "der! "
  "\nMarch " "on, " "march " "on! " "sing " joy ful "ly, "
  "\nWhile " "the " "world, " in "to " "life " a wa "king, "
  "\nHails " "the " "bright, " "bright " "ray " "of " "the " "glad " Eas "ter " "Day, "
  "\nO'er " "the " "hills " "in " beau "ty " break "ing! "

  \set stanza = "3."
  "\nMarch " "on, " "and " re "joice " "with " "a " tune "ful " "voice, "
  "\nRing " "out " "a " grate "ful " cho "rus; "
  "\nTo " "His " "courts " a "way, " "oh, " "haste " to "day, "
  "\nWhere " "the " sa "viour " "has " "gone " be "fore " "us! "
  "\nMarch " "on, " "march " "on! " "sing " joy ful "ly, "
  "\nWhile " "the " "world, " in "to " "life " a wa "king, "
  "\nHails " "the " "bright, " "bright " "ray " "of " "the " "glad " Eas "ter " "Day, "
  "\nO'er " "the " "hills " "in " beau "ty " break "ing! "
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
            \new Lyrics \lyricsto "aligner" {             \chorus
                                              \wordsOne   \chorus
                                              \wordsThree \chorus }
            \new Lyrics \lyricsto "aligner" { \chorusEmpty \wordsTwo }
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
    \unfoldRepeats
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
            \new Lyrics \lyricsto "aligner" {             \chorus
                                              \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus }
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
  \bookOutputSuffix "singlepage"
  \paper {
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    paper-height = 2000\mm
    ragged-bottom = true
    system-system-spacing.basic-distance = #22
    system-separator-markup = \slashSeparator
  }
  \score {
    \unfoldRepeats
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
            \new Lyrics \lyricsto "aligner" {             \chorus
                                              \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus }
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
  \bookOutputSuffix "midi"
  \score {
    \unfoldRepeats
    \context GrandStaff <<
      <<
        \new ChoirStaff <<
                                  % Soprano staff
          \new Staff = soprano
          <<
            \new Voice \TempoTrack
            \new Voice { \global \soprano \bar "|." }
            \addlyrics \wordsMidi
          >>
                                  % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global \alto }
          >>
                                  % Tenor staff
          \new Staff = tenor
          <<
            \clef "treble_8"
            \new Voice { \global \tenor }
          >>
                                  % bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Voice { \global \bass }
          >>
        >>
      >>
    >>
    \midi {}
  }
}
