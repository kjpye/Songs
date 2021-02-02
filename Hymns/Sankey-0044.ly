\version "2.20.2"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "They Crucified Him."
  subtitle    = "Sankey No. 44"
  subsubtitle = "N. H.  No. 29"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Geo. F. Root"
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = "Mrs. M. B. C. Slade"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key bes \major
  \time 4/4
  \tempo 4=120
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
% \mark \markup { \circle "1a" }
  \mark \markup { \box "A" } s1*5
  \mark \markup { \box "B" } s1*5
  \mark \markup { \box "C" } s1*6
}

TempoTrack = {
}

soprano = \relative {
  \global
  g'4. a8 bes4 g
  a4 fis g2
  bes4. c8 d4 bes
  c4 a bes2
  d4. d8 c4 a
  bes4 g a2 % B
  d4. c8 bes4 a
  g4 fis g2 \bar "||"
  f2^\markup \smallCaps Chorus f4 f
  f4 d' c bes
  g2 bes % C
  f2. r4
  bes2 bes4 bes
  d4 c bes a
  g2 fis
  g2. r4
}

alto = \relative {
  \global
  d'4. d8 d4 d
  d4 d d2
  d4. ees8 f4 d
  ees4 c d2
  f4. f8 ees4 ees
  d4 bes d2 % B
  d4. d8 d4 ees
  d4 d d2 \bar "||"
  d2 d4 d
  d4 f ees d
  ees2 ees % C
  d2. r4
  g2 g4 g
  bes4 a g ees
  d2 c
  bes2. r4
}

tenor = \relative {
  \global
  bes4. c8 d4 bes
  c4 a bes2
  bes4. bes8 bes4 bes
  a4 c bes2
  bes4. bes8 a4 c
  bes4 g fis2 % B
  bes4. fis8 g4 c
  bes4 a bes2 \bar "||"
  bes2 bes4 bes
  bes4 bes bes bes
  bes2 bes % C
  bes2. r4
  d2 d4 d
  d4 ees d c
  bes2 a
  g2. r4
}

bass= \relative {
  \global
  g4. g8 g4 g
  d4 d g2
  g4. g8 f4 f
  f4 f bes,2
  bes4. bes8 f'4 f
  g4 g d2 % B
  g,4. a8 bes4 c
  d4 d g,2 \bar "||"
  bes2 bes4 bes
  bes4 bes bes bes
  ees2 g % C
  bes2. r4
  g2 g4 g
  g,4 a bes c
  d2 d
  g,2. r4
}

chorus = \lyricmode {
  Sweet tones of love come down the a -- ges through:
  "\"Fa" -- ther, for -- give!
  they know not what they "do!\""
}

wordsOne = \lyricmode {
  \set stanza = "1."
  From the Beth -- lehem man -- ger- -- home,
  Walk -- ing His dear form be -- side,
  We to Cal -- v'ry's mount have come,
  Where our Lord was cru -- ci -- fied.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Scorn -- ful words the sol --diers fling.
  Wick -- ed ru -- lers Him de -- ride,
  Say -- ing, "\"If" Thou be the King,
  Save Tyh -- self, Thou Cru -- ci -- "fied!\""
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Wond -- rous love for sin -- ful men,
  Of the sin -- less One that died!
  May we wound Thee bot a -- gain,
  Thou, O Christ, the cru -- ci -- fied!
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "\nFrom " "the " Beth "lehem " man ger- "home, "
  "\nWalk" "ing " "His " "dear " "form " be "side, "
  "\nWe " "to " Cal "v'ry's " "mount " "have " "come, "
  "\nWhere " "our " "Lord " "was " cru ci "fied. "
  "\nSweet " "tones " "of " "love " "come " "down " "the " a "ges " "through: "
  "\n"\"Fa"" "ther, " for "give! "
  "\nthey " "know " "not " "what " "they " "do!\" "

  \set stanza = "2."
  "\nScorn" "ful " "words " "the " sol"diers " "fling. "
  "\nWick" "ed " ru "lers " "Him " de "ride, "
  "\nSay" "ing, " "\"If " "Thou " "be " "the " "King, "
  "\nSave " Tyh "self, " "Thou " Cru ci "fied!\" "
  "\nSweet " "tones " "of " "love " "come " "down " "the " a "ges " "through: "
  "\n"\"Fa"" "ther, " for "give! "
  "\nthey " "know " "not " "what " "they " "do!\" "

  \set stanza = "3."
  "\nWond" "rous " "love " "for " sin "ful " "men, "
  "\nOf " "the " sin "less " "One " "that " "died! "
  "\nMay " "we " "wound " "Thee " "bot " a "gain, "
  "\nThou, " "O " "Christ, " "the " cru ci "fied! "
  "\nSweet " "tones " "of " "love " "come " "down " "the " a "ges " "through: "
  "\n"\"Fa"" "ther, " for "give! "
  "\nthey " "know " "not " "what " "they " "do!\" "
}
  
\book {
  \bookOutputSuffix "repeat"
  \score {
    \context GrandStaff <<
      <<
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff <<
            \set Staff.soloText   = #""
            \set Staff.soloIIText = #""
            \set Staff.aDueText   = #""
            \new Voice \RehearsalTrack
            \new NullVoice = "aligner" \soprano
            \new Voice = "women" \partCombine { \soprano \bar "|." } \alto
%                                               { \alto \alto \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne \chorus }
            \new Lyrics \lyricsto "aligner"   \wordsTwo
            \new Lyrics \lyricsto "aligner"   \wordsThree
          >>
                                  % Joint tenor/bass staff
          \new Staff <<
            \set Staff.soloText   = #""
            \set Staff.soloIIText = #""
            \set Staff.aDueText   = #""
            \clef "bass"
            \new Voice = "men" \partCombine \tenor \bass
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
          \new Staff <<
            \set Staff.soloText   = #""
            \set Staff.soloIIText = #""
            \set Staff.aDueText   = #""
            \new Voice {
               \RehearsalTrack
               \RehearsalTrack
               \RehearsalTrack
            }
            \new NullVoice = "aligner" { \soprano \soprano \soprano }
            \new Voice = "women" \partCombine { \soprano \soprano \soprano \bar "|." }
                                               { \alto \bar "||" \alto \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Staff <<
            \set Staff.soloText   = #""
            \set Staff.soloIIText = #""
            \set Staff.aDueText   = #""
            \clef "bass"
            \new Voice = "men" \partCombine { \tenor \tenor \tenor }
                                            { \bass \bass \bass }
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
          \new Staff <<
            \new Voice {
               \RehearsalTrack
               \RehearsalTrack
               \RehearsalTrack
            }
            \new NullVoice = "aligner" { \soprano \soprano \soprano }
            \new Voice = "women" \partCombine { \soprano \soprano \soprano \bar "|." }
                                               { \alto \bar "||" \alto \alto }
            \new Lyrics \lyricsto "aligner" \wordsMidi
          >>
                                  % Joint tenor/bass staff
          \new Staff <<
            \clef "bass"
            \new Voice = "men" \partCombine { \tenor \tenor \tenor }
                                            { \bass \bass \bass }
          >>
        >>
      >>
    >>
    \midi {}
  }
}
