\version "2.20.2"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "The Angels' Song"
  subtitle    = "Sankey No. 28"
  subsubtitle = "Sankey 880 No. 488"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Arr. R. Lowry"
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = "R. L."

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

verses = 3

global = {
  \key aes \major
  \time 12/8
  \tempo 4=120
  \partial 4.
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
% \mark \markup { \circle "1a" }
  \repeat volta \verses {
    \mark \markup { \box "A" } s4. s1. s1. s2.     \bar "" \break
    \mark \markup { \box "B" } s2. s1. s1. s4. s2. \bar "" \break
    \mark \markup { \box "C" } s4. s1. s1.         \bar "" \break
    \mark \markup { \box "D" } s1. s1. \bar "" \break
    \mark \markup { \box "E" } s1. s1. s4. s2. \bar "" \break
    \mark \markup { \box "F" } s4. s1. s1. s2. s4.
  }
}

soprano = \relative {
  \global
  \repeat volta \verses {
    ees'8^\markup \bold \italic {With energy.} (f) g
    aes4. 2. 8 (c) ees,
    aes4. 2. ees8 (aes) bes
    c4. ees ees4 c8 c (bes) aes
    bes2.~4. ees,8(f) g % B
    aes4. 2. 8 (c) ees,
    aes4. 2. 8(bes) c
    bes4. c4. bes4 g8 aes(g) f % C
    ees2.~4. \bar "||" ees8(g) bes
    des4. 2. 8(c) bes % D
    c4. 2. 8(bes) aes
    bes4. bes bes4 aes8 g4 aes8 % E
    bes2.~4. ees,8(f) g
    aes4. 2. aes8(bes) c
    des4. 2. 8(ees) f % F
    ees4. c c4.~4 bes8
    aes2.~4.
  }
}

alto = \relative {
  \global
  \repeat volta \verses {
    c'4 c8
    c4. 2. 8 ees c
    ees4. 2. c8 ees ees
    ees4. ees ees4 ees8 d4 d8
    ees2.~4. des4 8 % B
    c4. 2. 8(ees) c
    ees4. 2. c8(des) ees
    ees4. ees ees4 ees8 f8(ees) d % C
    ees2.~4. \bar "||" ees8(g) ees
    ees4. 2. 4 8 % D
    ees4. 2. 8(des) c
    ees4. ees des4 c8 des4 c8 % E
    ees2.~4. des4 8
    c4. 2. c8(des) ees
    f4. 2. 8(ges) aes % F
    aes4. 4. g4.~4 ees8
    ees2.~4.
  }
}

tenor = \relative {
  \global
  \repeat volta \verses {
    aes4 aes8
    aes4. 2. 4 8
    c4. 2. aes4 g8
    aes4. c c4 aes8 aes4 bes8
    g2.~4. g8(aes) bes % B
    aes4. 2. 4 8
    c4. 2. aes4 8
    g4. aes g4 bes8 4 aes8 % C
    g2.~4. \bar "||" g8(bes) g
    bes4 8 4 8 4 8 bes(aes) g % D
    aes4. 2. 4 8
    g4. g4. 4 aes8 bes4 aes8 % E
    g2.~4. g8(aes) bes
    aes4 8 4 8 4 8 4 8
    aes4. 2. 4 des8 % F
    c4. ees ees~4 des8
    c2.~4.
  }
}

bass= \relative {
  \global
  \repeat volta \verses {
    aes,4 aes8
    aes4. 2. 4 8
    aes4. 2. 8 c ees
    aes4. aes aes4 8 f4 f8
    ees2.~4. 4 8 % B
    aes,4. 2. 4 8
    aes4. 2. 4 8
    ees'4. 4. 4 8 bes4 8 % C
    ees2.~4. \bar "||" 4 8
    ees4 8 4 8 4 8 4 8 % D
    aes4. 2. 4 8
    ees4. 4. 4 8 4 8 % E
    ees2.~4. 4 8
    aes,4 8 4 8 4 8 aes'4 8
    des,4. 2. 4 8 % F
    ees4. 4. 4.~4 8
    aes,2.~4.
  }
}

chorus = \lyricmode {
  "\"Glo" -- ry!
  glo -- ry in the high -- est!
  On the earth good will and peace to "men!\""
  Down the a -- ges send the e -- cho;
  Let the glad earth shout a -- gain! __
}

wordsOne = \lyricmode {
  \set stanza = "1."
  Roll -- ing down -- ward thro' the mid -- night,
  Comes a glo -- rious burst of heav'n -- ly song;
  'Tis a cho -- rus full of sweet -- ness—
  And the sing -- ers are an an -- gel throng __
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Won -- d'ring shep -- herds see the glo -- ry,
  Hear the word the shi -- ning ones de -- clare;
  At the man -- ger fall in wor -- ship,
  While the mu -- sic fills the quiv -- 'ring air. __
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Christ the Sa -- viour, God's A -- noint -- ed,
  Comes to earth our fear -- ful debt to pay—
  Man of Sor -- rows, and re -- ject -- ed,
  Lamb of God, that takes our sins a -- way. __
}
  
wordsMen = \lyricmode {
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _
  "\"Glo" -- ry! glo -- ry! glo -- ry!
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _
  a -- ges down the a -- ges
  _ _ _ _ _ _ _ _ _ _
  _
}

wordsMidi = \lyricmode {
  \set stanza = "1."
  "\nRoll" "ing " down "ward " "thro' " "the " mid "night, "
  "\nComes " "a " glo "rious " "burst " "of " heav'n "ly " "song; "
  "\n'Tis " "a " cho "rus " "full " "of " sweet "ness— "
  "\nAnd " "the " sing "ers " "are " "an " an "gel " "throng " 
  "\n\"Glo" "ry! "
  "\nglo" "ry " "in " "the " high "est! "
  "\nOn " "the " "earth " "good " "will " "and " "peace " "to " "men!\" "
  "\nDown " "the " a "ges " "send " "the " e "cho; "
  "\nLet " "the " "glad " "earth " "shout " a "gain! " 
  \set stanza = "2."
  "\nWon" "d'ring " shep "herds " "see " "the " glo "ry, "
  "\nHear " "the " "word " "the " shi "ning " "ones " de "clare; "
  "\nAt " "the " man "ger " "fall " "in " wor "ship, "
  "\nWhile " "the " mu "sic " "fills " "the " quiv "'ring " "air. " 
  "\n\"Glo" "ry! "
  "\nglo" "ry " "in " "the " high "est! "
  "\nOn " "the " "earth " "good " "will " "and " "peace " "to " "men!\" "
  "\nDown " "the " a "ges " "send " "the " e "cho; "
  "\nLet " "the " "glad " "earth " "shout " a "gain! " 
  \set stanza = "3."
  "\nChrist " "the " Sa "viour, " "God's " A noint "ed, "
  "\nComes " "to " "earth " "our " fear "ful " "debt " "to " "pay— "
  "\nMan " "of " Sor "rows, " "and " re ject "ed, "
  "\nLamb " "of " "God, " "that " "takes " "our " "sins " a "way. " 
  "\n\"Glo" "ry! "
  "\nglo" "ry " "in " "the " high "est! "
  "\nOn " "the " "earth " "good " "will " "and " "peace " "to " "men!\" "
  "\nDown " "the " a "ges " "send " "the " e "cho; "
  "\nLet " "the " "glad " "earth " "shout " a "gain! " 
}
  
wordsMidiMen = \lyricmode {
  \set stanza = "1."
  "\nRoll" "ing " down "ward " "thro' " "the " mid "night, "
  "\nComes " "a " glo "rious " "burst " "of " heav'n "ly " "song; "
  "\n'Tis " "a " cho "rus " "full " "of " sweet "ness— "
  "\nAnd " "the " sing "ers " "are " "an " an "gel " "throng " 
  "\n\"Glo" "ry! " glo "ry! " glo "ry! "
  "\nglo" "ry " "in " "the " high "est! "
  "\nOn " "the " "earth " "good " "will " "and " "peace " "to " "men!\" "
  "\nDown " "the " a "ges "
  "\ndown " "the " a "ges " "send " "the " e "cho; "
  "\nLet " "the " "glad " "earth " "shout " a "gain! " 
  \set stanza = "2."
  "\nWon" "d'ring " shep "herds " "see " "the " glo "ry, "
  "\nHear " "the " "word " "the " shi "ning " "ones " de "clare; "
  "\nAt " "the " man "ger " "fall " "in " wor "ship, "
  "\nWhile " "the " mu "sic " "fills " "the " quiv "'ring " "air. " 
  "\n\"Glo" "ry! " glo "ry! " glo "ry! "
  "\nglo" "ry " "in " "the " high "est! "
  "\nOn " "the " "earth " "good " "will " "and " "peace " "to " "men!\" "
  "\nDown " "the " a "ges "
  "\ndown " "the " a "ges " "send " "the " e "cho; "
  "\nLet " "the " "glad " "earth " "shout " a "gain! " 
  \set stanza = "3."
  "\nChrist " "the " Sa "viour, " "God's " A noint "ed, "
  "\nComes " "to " "earth " "our " fear "ful " "debt " "to " "pay— "
  "\nMan " "of " Sor "rows, " "and " re ject "ed, "
  "\nLamb " "of " "God, " "that " "takes " "our " "sins " a "way. " 
  "\n\"Glo" "ry! " glo "ry! " glo "ry! "
  "\nglo" "ry " "in " "the " high "est! "
  "\nOn " "the " "earth " "good " "will " "and " "peace " "to " "men!\" "
  "\nDown " "the " a "ges "
  "\ndown " "the " a "ges " "send " "the " e "cho; "
  "\nLet " "the " "glad " "earth " "shout " a "gain! " 
}
  
\book {
  \bookOutputSuffix "repeat"
  \score {
    \context GrandStaff <<
      <<
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff <<
            \new Voice \RehearsalTrack
            \new Voice = "soprano" { \voiceOne \soprano }
            \new Voice = "alto"    { \voiceTwo \alto    }
            \new Lyrics \lyricsto "soprano" { \wordsOne \chorus }
            \new Lyrics \lyricsto "soprano"   \wordsTwo
            \new Lyrics \lyricsto "soprano"   \wordsThree
          >>
                                  % Joint tenor/bass staff
          \new Staff <<
            \clef "bass"
            \new Voice = "tenor" { \voiceOne \tenor }
            \new Voice = "bass"  { \voiceTwo \bass  }
            \new Lyrics \lyricsto "tenor"   \wordsMen
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
%    \articulate
    \context GrandStaff <<
      <<
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff <<
            \new Voice \RehearsalTrack
            \new Voice = "soprano" { \voiceOne \soprano \bar "|." }
            \new Voice = "alto"    { \voiceTwo \alto    }
            \new Lyrics \lyricsto "soprano" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                            }
%            \new Lyrics \lyricsto "soprano" \wordsMidi
          >>
                                  % Joint tenor/bass staff
          \new Staff <<
            \clef "bass"
            \new Voice = "tenor" { \voiceOne \tenor }
            \new Voice = "bass"  { \voiceTwo \bass  }
            \new Lyrics \lyricsto "tenor" { \wordsMen \wordsMen \wordsMen }
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
  \bookOutputSuffix "midi-women"
  \score {
    \unfoldRepeats
%    \articulate
    \context GrandStaff <<
      <<
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff <<
            \new Voice \RehearsalTrack
            \new Voice = "soprano" { \voiceOne \soprano \bar "|." }
            \new Voice = "alto"    { \voiceTwo \alto    }
            \new Lyrics \lyricsto "soprano" \wordsMidi
          >>
                                  % Joint tenor/bass staff
          \new Staff <<
            \clef "bass"
            \new Voice = "tenor" { \voiceOne \tenor }
            \new Voice = "bass"  { \voiceTwo \bass  }
%            \new Lyrics \lyricsto "tenor" \wordsMidiMen
          >>
        >>
      >>
    >>
    \midi {}
  }
}
  
\book {
  \bookOutputSuffix "midi-men"
  \score {
    \unfoldRepeats
%    \articulate
    \context GrandStaff <<
      <<
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff <<
            \new Voice \RehearsalTrack
            \new Voice = "soprano" { \voiceOne \soprano \bar "|." }
            \new Voice = "alto"    { \voiceTwo \alto    }
          >>
                                  % Joint tenor/bass staff
          \new Staff <<
            \clef "bass"
            \new Voice = "tenor" { \voiceOne \tenor }
            \new Voice = "bass"  { \voiceTwo \bass  }
            \new Lyrics \lyricsto "tenor" \wordsMidiMen
          >>
        >>
      >>
    >>
    \midi {}
  }
}
