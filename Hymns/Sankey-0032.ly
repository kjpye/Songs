\version "2.20.2"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Once in Royal David's City."
  subtitle    = "Sankey No. 23"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Dr Gauntlett"
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = "Mrs C. F. Alexander"
  meter       = "8.7.8.7.7.7"
  piece       = \markup \smallCaps Irby

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

#(set-global-staff-size 19)

verses = 6

global = {
  \key g \major
  \time 4/4
  \tempo 4=120
  \partial 2
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \repeat volta \verses {
    \mark \markup { \box "A" } s2 s1*3 s2 \bar "|" \break
    \mark \markup { \box "B" } s2 s1*3 s2 \bar "|" \break
    \mark \markup { \box "C" } s2 s1*3 s2 \bar "|" \break
  }
}

soprano = \relative {
  \autoBeamOff
  \global
  \repeat volta \verses {
    d'4 fis
    g4. 8 8[fis] g[a]
    a4 g g b
    d4. b8 b[a] g[fis]
    g2 d4 fis
    g4. 8 g[fis] g[a] % B
    a4 g g b
    d4. b8 b[a] g[fis]
    g2 e'4 e
    d4. g,8 c4 c % C
    \slurDashed b4(b) \slurSolid e e
    d4. b8 b[a] g[fis]
    \slurDotted g4(g) \slurSolid
  }
}

alto = \relative {
  \autoBeamOff
  \global
  \repeat volta \verses {
    d'4 c
    d4. 8 4 8[fis]
    fis4 g d g
    g4. g8 e4 d
    d2 d4 c
    d4. d8 cis4 cis % B
    d8[c] b4 d g
    g4. g8 e4 d
    d2 g4 g
    g8[fis g] g g4 fis % C
    \slurDashed g4(g) e8[fis] g[a]
    d,8[ fis g] d e4 d
    d4(d)
  }
}

tenor = \relative {
  \autoBeamOff
  \global
  \repeat volta \verses {
    b4 a
    g4. b8 b[a] b[c]
    c4 b b g
    g4. d'8 d[c] b[a]
    b2 b4 a
    g4. b8 g4 g % B
    fis4 g b g
    g4. d'8 d[c] b[a]
    b2 c4 c
    b8[ c d] b e4 d % C
    \slurDashed d4(d) c c
    c8[a b] d d[c] b[a]
    b4(b)
  }
}

bass= \relative {
  \autoBeamOff
  \global
  \repeat volta \verses {
    g,4 a
    b4. g8 d'4 d
    d4 g g e
    b4. g8 c4 d
    g,2 g4 a
    b4. g8 e'4 a, % B
    d4 g g e
    b4. g8 c4 d
    g,2 c8[d] e[fis]
    g8[a b] g d4 d % C
    \slurDashed g4(g) c,8[d] e[fis]
    g4. g8 c,4 d
    g,4(g)
  }
}

chorus = \lyricmode {
}

wordsOne = \lyricmode {
  \set stanza = "1."
  Once in Roy -- al Dav -- id's ci -- ty
  Stood a low -- ly cat -- tle shed,
  Where a mo -- ther laid her Ba -- by,
  In a man -- ger for His bed.
  Ma -- ry was that mo -- ther mild,
  Je -- sus Christ her lit -- tle Child.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  He came down to earth from hea -- ven,
  Who is God and Lord of all,
  And His shel -- ter was a sta -- ble,
  And His cra -- dle was a stall.
  \set ignoreMelismata = ##t
  With the poor, and mean, and low -- ly,
  \unset ignoreMelismata
  Lived on earth our Sav -- iour
  \set ignoreMelismata = ##t
  ho -- ly.
}

wordsThree = \lyricmode {
  \set stanza = "3."
  And through all his won -- drous child -- hood
  He would hon -- our and o -- bey,
  Love and watch the low -- ly mo -- ther
  In whose gen -- tle arms He lay.
  Christ -- ian child -- ren, all must be
  Mild, o -- bed -- ient, good as He.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  For He is our child -- hood's Pat -- tern,
  Day by day like us He grew;
  He was lit -- tle. weak, and help -- less,
  Tears and smiles like us He knew;
  And He feel -- eth for our
  \set ignoreMelismata = ##t
  sad -- ness,
  \unset ignoreMelismata
  And He shar -- eth in our
  \set ignoreMelismata = ##t
  glad -- ness.
}
  
wordsFive = \lyricmode {
  \set stanza = "5."
  And our eyes at last shall see Him
  Through His own re -- deem -- ing love,
  For that Child so dear and gen -- tle
  Is our Lord in heaven a -- bove;
  And He leads His chil -- dren on
  To the place where He is gone.
}
  
wordsSix = \lyricmode {
  \set stanza = "6."
  Not in that poor low -- ly stab -- le,
  With the ox -- en stand -- ing by,
  We shall see Him― but in heav -- en,
  Set at God's right hand on high;
  When like stars His child -- ren crowned,
  All in white shall wait a -- round.
}
  
wordsMidi = \lyricmode {
  "Once " "in " Roy "al " Dav "id's " ci "ty "
  "\nStood " "a " low "ly " cat "tle " "shed, "
  "\nWhere " "a " mo "ther " "laid " "her " Ba "by, "
  "\nIn " "a " man "ger " "for " "His " "bed. "
  "\nMa" "ry " "was " "that " mo "ther " "mild, "
  "\nJe" "sus " "Christ " "her " lit "tle " "Child. "

  "\nHe " "came " "down " "to " "earth " "from " hea "ven, "
  "\nWho " "is " "God " "and " "Lord " "of " "all, "
  "\nAnd " "His " shel "ter " "was " "a " sta "ble, "
  "\nAnd " "His " cra "dle " "was " "a " "stall. "
  \set ignoreMelismata = ##t
  "\nWith " "the " "poor, " "and " "mean, " "and " low "ly, "
  \unset ignoreMelismata
  "\nLived " "on " "earth " "our " Sav "iour "
  \set ignoreMelismata = ##t
  "ho" "ly. "
  \unset ignoreMelismata % Why does this have no effect?

  "\nAnd " "through " "all " "his " won "drous " child "hood "
  "\nHe " "would " hon "our " "and " o "bey, "
  "\nLove " "and " "watch " "the " low "ly " mo "ther "
  "\nIn " "whose " gen "tle " "arms " "He " "lay. "
  "\nChrist" "ian " child "ren, " "all " "must " "be "
  "\nMild, " o bed "ient, " "good " "as " "He. "
  \set stanza = "4."
  "\nFor " "He " "is " "our " child "hood's " Pat "tern, "
  "\nDay " "by " "day " "like " "us " "He " "grew; "
  "\nHe " "was " lit "tle. " "weak, " "and " help "less, "
  "\nTears " "and " "smiles " "like " "us " "He " "knew; "
  "\nAnd " "He " feel "eth " "for " "our " \set ignoreMelismata = ##t "\nsad" "ness, " \unset ignoreMelismata
  "\nAnd " "He " shar "eth " "in " "our "
  \set ignoreMelismata = ##t
  "\nglad" "ness. "
  \set stanza = "5."
  "\nAnd " "our " "eyes " "at " "last " "shall " "see " "Him "
  "\nThrough " "His " "own " re deem "ing " "love, "
  "\nFor " "that " "Child " "so " "dear " "and " gen "tle "
  "\nIs " "our " "Lord " "in " "heaven " a "bove; "
  "\nAnd " "He " "leads " "His " chil "dren " "on "
  "\nTo " "the " "place " "where " "He " "is " "gone. "
  \set stanza = "6."
  "\nNot " "in " "that " "poor " low "ly " stab "le, "
  "\nWith " "the " ox "en " stand "ing " "by, "
  "\nWe " "shall " "see " "Him― " "but " "in " heav "en, "
  "\nSet " "at " "God's " "right " "hand " "on " "high; "
  "\nWhen " "like " "stars " "His " child "ren " "crowned, "
  "\nAll " "in " "white " "shall " "wait " a "round. "
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
            \new Lyrics \lyricsto "soprano"   \wordsFour
            \new Lyrics \lyricsto "soprano"   \wordsFive
            \new Lyrics \lyricsto "soprano"   \wordsSix
          >>
                                  % Joint tenor/bass staff
          \new Staff <<
            \clef "bass"
            \new Voice = "tenor" { \voiceOne \tenor }
            \new Voice = "bass"  { \voiceTwo \bass  }
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
          \new Staff <<
            \new Voice \RehearsalTrack
            \new Voice = "soprano" { \voiceOne \soprano }
            \new Voice = "alto"    { \voiceTwo \alto    }
            \new Lyrics \lyricsto "soprano" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                              \wordsFour  \chorus
                                              \wordsFive  \chorus
                                              \wordsSix   \chorus
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Staff <<
            \clef "bass"
            \new Voice = "tenor" { \voiceOne \tenor }
            \new Voice = "bass"  { \voiceTwo \bass  }
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
%    \articulate
    \context GrandStaff <<
      <<
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff <<
            \new Voice \RehearsalTrack
            \new Voice = "soprano" { \voiceOne \soprano }
            \new Voice = "alto"    { \voiceTwo \alto    }
            \new Lyrics \lyricsto "soprano" \wordsMidi
          >>
                                  % Joint tenor/bass staff
          \new Staff <<
            \clef "bass"
            \new Voice = "tenor" { \voiceOne \tenor }
            \new Voice = "bass"  { \voiceTwo \bass  }
          >>
        >>
      >>
    >>
    \midi {}
  }
}
