\version "2.22.0"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Blessed Redeemer"
  subtitle    = "Sankey No. 83"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Ira D. Sankey."
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
  \key d \major
  \time 9/8
  \tempo 4=120
  \partial 4.
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
% \mark \markup { \circle "1a" }
  \mark \markup { \box "A" } s4.*9
  \mark \markup { \box "B" } s4.*9
  \mark \markup { \box "C" } s4.*9
  \mark \markup { \box "D" } s4.*10
  \mark \markup { \box "E" } s4.*11
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

soprano = \relative {
  a'8 gis a
  fis4. a d8 cis b
  a4. fis g8 fis g
  e4. g \bar "|" \break \partial 4. b8 a g
  fis4.~4. a8 gis a % B
  fis4. a d8 cis d
  e4. b \bar "|" \break \partial 4. d8 cis b
  a4. d fis,8 g e % C
  d4.~4. \bar "||" \partial 4. g8^\markup\smallCaps Chorus. fis g
  e4. g \bar "|" \break \partial 4. b8 a g
  fis4. a a8 gis a % D
  b4. d cis8 d b
  a4.~4. 8 gis a \break
  fis4. a d8 cis d % E
  e4. b d8 cis b
  a4. d fis,8 g e
  d4.~4.
}

alto = \relative {
  fis'8 eis f
  d4. fis fis8 a g
  fis4. d e8 dis e
  cis4. e g8 fis e
  d4.~4. fis8 eis fis % B
  d4. fis fis8 g a
  g4. g e8 e eis
  fis4. fis d8 e cis % C
  d4.~4. e8 dis e
  cis4. e g8 fis e
  d4. fis fis8 eis fis % D
  g4. a a8 b gis
  a4.(g) fis8 eis fis
  d4. fis fis8 g a % E
  g4. g e8 e eis
  fis4. fis d8 e cis
  d4.~d
}

tenor = \relative {
  d'8 b d
  a4. d a8 b cis
  d4. a a8 a a
  a4. cis cis8 cis a
  a4.~4. d8 b d % B
  a4. d a8 a a
  b4. d b8 cis d
  d4. a a8 a g % C
  fis4.~4. a8 a a
  a4. 4. cis8 cis a
  a4. d d8 b d % D
  d4. 4. e8 e d
  cis4.~4. d8 b d
  a4. d a8 a a % E
  b4. d b8 cis d
  d4. a a8 a g
  fis4.~4.
}

bass= \relative {
  d8 d d
  d4. d4. 8 8 8
  d4. d a8 a a
  a4. a a8 a cis
  d4.~4. 8 8 8 % B
  d4. 4. 8 e fis
  g4. 4. 8 8 gis
  a4. a a,8 a a % C
  d4.~4. a8 a a
  a4. 4. 8 8 cis
  d4. d d8 d d % D
  g4. fis e8 e e
  a,4.~4. d8 d d
  d4. 4. 8 e fis % E
  g4. 4. 8 8 gis
  a4. 4. a,8 a a
  d4.~d
}

chorus = \lyricmode {
  Bles -- sed Re -- deem -- er,
  won -- der -- ful Sa -- viour,
  Foun -- tain of wis -- dom,
  An -- cient of days,
  Hope of the faith -- ful, Light of all a -- ges,
  Je -- sus my Sa -- viour,
  Thee will I praise.
}

wordsOne = \lyricmode {
  \set stanza = "1."
  Bles -- sed Re -- deem -- er, full of Com -- pas -- sion,
  Great is Thy mer -- cy, bound -- less and free;
  Now in my weak -- ness, seek -- ing Thy fa -- vour,
  Lord, I am com -- ing clo -- ser to Thee.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Bles -- sed Re -- deem -- er, Thou art my Ref -- uge,
  Un -- der Thy watch -- care, safe I shall be;
  Glad -- ly a -- dor -- ing, joy -- ful -- ly trust -- ing,
  Still I am com -- ing clo -- ser to Thee.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Bles -- sed Re -- deem -- er, gra -- cious and ten -- der,
  Now and for -- ev -- er dwell thou in me;
  Thou, my Pro -- tec -- tor, Shield, and De -- fend -- er,
  Draw me and keep me clo -- ser to Thee.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Bles" "sed " Re deem "er, " "full " "of " Com pas "sion, "
  "\nGreat " "is " "Thy " mer "cy, " bound "less " "and " "free; "
  "\nNow " "in " "my " weak "ness, " seek "ing " "Thy " fa "vour, "
  "\nLord, " "I " "am " com "ing " clo "ser " "to " "Thee. "
  "\nBles" "sed " Re deem "er, "
  "\nwon" der "ful " Sa "viour, "
  "\nFoun" "tain " "of " wis "dom, "
  "\nAn" "cient " "of " "days, "
  "\nHope " "of " "the " faith "ful, " "Light " "of " "all " a "ges, "
  "\nJe" "sus " "my " Sa "viour, "
  "\nThee " "will " "I " "praise. "

  \set stanza = "2."
  "\nBles" "sed " Re deem "er, " "Thou " "art " "my " Ref "uge, "
  "\nUn" "der " "Thy " watch "care, " "safe " "I " "shall " "be; "
  "\nGlad" "ly " a dor "ing, " joy ful "ly " trust "ing, "
  "\nStill " "I " "am " com "ing " clo "ser " "to " "Thee. "
  "\nBles" "sed " Re deem "er, "
  "\nwon" der "ful " Sa "viour, "
  "\nFoun" "tain " "of " wis "dom, "
  "\nAn" "cient " "of " "days, "
  "\nHope " "of " "the " faith "ful, " "Light " "of " "all " a "ges, "
  "\nJe" "sus " "my " Sa "viour, "
  "\nThee " "will " "I " "praise. "

  \set stanza = "3."
  "\nBles" "sed " Re deem "er, " gra "cious " "and " ten "der, "
  "\nNow " "and " for ev "er " "dwell " "thou " "in " "me; "
  "\nThou, " "my " Pro tec "tor, " "Shield, " "and " De fend "er, "
  "\nDraw " "me " "and " "keep " "me " clo "ser " "to " "Thee. "
  "\nBles" "sed " Re deem "er, "
  "\nwon" der "ful " Sa "viour, "
  "\nFoun" "tain " "of " wis "dom, "
  "\nAn" "cient " "of " "days, "
  "\nHope " "of " "the " faith "ful, " "Light " "of " "all " a "ges, "
  "\nJe" "sus " "my " Sa "viour, "
  "\nThee " "will " "I " "praise. "
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





















