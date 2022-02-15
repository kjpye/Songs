\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "The Gospel Bells."
  subtitle    = "Sankey No. 356"
  subsubtitle = "Sankey 880 No. 381"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "S. Wesley Martin."
%  arranger    = "arranger"
%  opus        = "opus"

%  poet        = \markup\smallCaps "poet"
%  meter       = \markup\smallCaps "meter"
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key f \major
  \time 4/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s4 s1*3 s2.
  \mark \markup { \box "B" } s4 s1*3 s2.
  \mark \markup { \box "C" } s4 s1*3 s2.
  \mark \markup { \box "D" } s4 s1*3 s2.
  \mark \markup { \box "E" } s4 s1*4
  \mark \markup { \box "F" }    s1*3 s2.
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
  s4 s1*21
  s2 \tempo 4=40 s4 \tempo 4=120 s4
  s1 s2.
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  c'4
  f4 f f a
  d4 c2 8 8
  d4 c f, g
  a2. \bar "|" \break 8 c
  bes4 g a f % B
  g4 c2 8 8
  e4 d c bes
  c2. \bar "|" \break c,4
  f4 f f f % C
  f2. 8 a
  g4 4 4 4
  g2. \bar "|" \break a8 g
  f4 f f f % D
  f4 2 8 g
  a4 bes a g
  f2. \bar "|" \break a8.^\markup\smallCaps Chorus. f16
  c'2. bes8. g16 % E
  c2. 8 8
  d4 c f, g
  a2. 8. f16
  c'2. 8. a16 % F
  f'2. f,8 g
  a4 c8[bes] a4 g
  f2.
}

alto = \relative {
  \autoBeamOff
  c'4
  c4 c c f
  f4 2 8 8
  f4 4 4 e
  f2. 8 a
  g4 e f c % B
  e4 2 8 8
  g4 f e d
  e2. c4
  c4 c d d % C
  c2. f8 8
  e4 4 d d
  e2. 8 8
  d4 d ees ees % D
  d4 2 8 f
  f4 g f e
  f2. \partCombineApart r4
  r4 e8. f16 g4 r % E
  r4 f8. g16 a4 \partCombineAutomatic f8 8
  f4 4 4 e
  f2. \partCombineApart r4
  r4 e8. f16 g4 r % F
  r4 f8. g16 a4\fermata \partCombineAutomatic f8 e
  f4 g f e
  f2.
}

tenor = \relative {
  \autoBeamOff
  c4
  a'4 a a c
  bes4 a2 8 8
  bes4 a a c
  c2. 8 8
  c4 c c a % B
  c4 g2 c8 8
  c4 a g g
  g2. c4
  a4 a bes bes % C
  a2. c8 8
  c4 4 b b
  c2. 8 bes
  a4 4 4 4 % D
  bes4 2 8 d
  c4 d c bes
  a2. r4
  r4 g8. a16 bes4 r % E
  r4 a8. bes16 c4 a8 8
  bes4 a a c
  c2. r4
  r4 g8. a16 bes4 r % F
  r4 a8. bes16 c4\fermata 8 8
  c4 d c bes
  a2.
}

bass = \relative {
  \autoBeamOff
  c4
  f4 f f f
  f4 2 8 8
  f4 4 d c
  f2. 8 8
  c4 c f f % B
  c4 2 8 8
  c4 f g g,
  c2. 4
  f4 f bes, bes % C
  f'2. a8 f
  c4 c g g
  c2. 8 8
  d4 d c c
  b4 2 8 8
  f'4 bes, c c
  f2. r4
  r4 c8. 16 4 r % E
  r4 f8. 16 4 8 8
  f4 f d c
  f2. r4
  r4 c8. 16 4 r % F
  r4 f8. 16 4\fermata a,8 c
  f4 bes, c c
  f2.
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  Gos -- pel bells, how they ring!
  O -- ver land, from sea to sea;
  Gos -- pel bells, free -- ly bring
  Bless -- ed news to you and me.
}

chorusSop = \lyricmode {
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _
  Gos -- pel bells, how they ring!
  _ _ _ _ _ _ _
  Gos -- pel bells, free -- ly bring!
  _ _ _ _ _ _ _
}

verses = 4

wordsOne = \lyricmode {
  \set stanza = "1."
  The Gos -- pel bells are ring -- ing,
  O -- ver land, from sea to sea;
  Bless -- ed news of free sal -- va -- tion
  Do they of -- fer you and me.
  "\"For" God so loved the world
  That His on -- ly Son He gave;
  Who -- so -- e'er be -- liev -- eth in Him
  Ev -- er -- last -- ing life shall "have.\""
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  The Gos -- pel bells in -- vite us
  To a feast pre -- pared for all;
  Do not slight the in -- vi -- ta -- tion,
  Not re -- ject the gra -- cious call,
  "\"I" am the Bread of Life;
  Eat of Me, thou hun -- gry soul;
  Tho' your sins be red as crim -- son,
  They shall be as white as "wool.\""
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  The Gos -- pel bells give warn -- ing,
  As they sound from day to day,
  Of the fate which doth a -- wait them
  Who for ev -- er will de -- lay.
  "\"Es" -- cape thou for thy life,
  Tar -- ry not in all the plain;
  Nor be -- hind thee look— oh nev -- er,
  Lest thou be con -- sumed in "pain.\""
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  The Gos -- pel bells are joy -- ful,
  As they e -- cho far and wide,
  Bear -- ing notes of per -- fect par -- don,
  Thro' a Sa -- viour cru -- ci -- fied.
  "\"Good" ti -- dings of great joy
  To all peo -- ple do I bring;
  Un -- to you is born a Sa -- viour,
  Which is Christ the "Lord\"" and King.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "The " Gos "pel " "bells " "are " ring "ing, "
  "\nO" "ver " "land, " "from " "sea " "to " "sea; "
  "\nBless" "ed " "news " "of " "free " sal va "tion "
  "\nDo " "they " of "fer " "you " "and " "me. "
  "\n\"For " "God " "so " "loved " "the " "world "
  "\nThat " "His " on "ly " "Son " "He " "gave; "
  "\nWho" so "e'er " be liev "eth " "in " "Him "
  "\nEv" er last "ing " "life " "shall " "have.\" "
  "\nGos" "pel " "bells, " "how " "they " "ring! "
  "\nO" "ver " "land, " "from " "sea " "to " "sea; "
  "\nGos" "pel " "bells, " free "ly " "bring "
  "\nBless" "ed " "news " "to " "you " "and " "me. "

  \set stanza = "2."
  "\nThe " Gos "pel " "bells " in "vite " "us "
  "\nTo " "a " "feast " pre "pared " "for " "all; "
  "\nDo " "not " "slight " "the " in vi ta "tion, "
  "\nNot " re "ject " "the " gra "cious " "call, "
  "\n\"I " "am " "the " "Bread " "of " "Life; "
  "\nEat " "of " "Me, " "thou " hun "gry " "soul; "
  "\nTho' " "your " "sins " "be " "red " "as " crim "son, "
  "\nThey " "shall " "be " "as " "white " "as " "wool.\" "
  "\nGos" "pel " "bells, " "how " "they " "ring! "
  "\nO" "ver " "land, " "from " "sea " "to " "sea; "
  "\nGos" "pel " "bells, " free "ly " "bring "
  "\nBless" "ed " "news " "to " "you " "and " "me. "

  \set stanza = "3."
  "\nThe " Gos "pel " "bells " "give " warn "ing, "
  "\nAs " "they " "sound " "from " "day " "to " "day, "
  "\nOf " "the " "fate " "which " "doth " a "wait " "them "
  "\nWho " "for " ev "er " "will " de "lay. "
  "\n\"Es" "cape " "thou " "for " "thy " "life, "
  "\nTar" "ry " "not " "in " "all " "the " "plain; "
  "\nNor " be "hind " "thee " "look— " "oh " nev "er, "
  "\nLest " "thou " "be " con "sumed " "in " "pain.\" "
  "\nGos" "pel " "bells, " "how " "they " "ring! "
  "\nO" "ver " "land, " "from " "sea " "to " "sea; "
  "\nGos" "pel " "bells, " free "ly " "bring "
  "\nBless" "ed " "news " "to " "you " "and " "me. "

  \set stanza = "4."
  "\nThe " Gos "pel " "bells " "are " joy "ful, "
  "\nAs " "they " e "cho " "far " "and " "wide, "
  "\nBear" "ing " "notes " "of " per "fect " par "don, "
  "\nThro' " "a " Sa "viour " cru ci "fied. "
  "\n\"Good " ti "dings " "of " "great " "joy "
  "\nTo " "all " peo "ple " "do " "I " "bring; "
  "\nUn" "to " "you " "is " "born " "a " Sa "viour, "
  "\nWhich " "is " "Christ " "the " "Lord\" " "and " "King. "
  "\nGos" "pel " "bells, " "how " "they " "ring! "
  "\nO" "ver " "land, " "from " "sea " "to " "sea; "
  "\nGos" "pel " "bells, " free "ly " "bring "
  "\nBless" "ed " "news " "to " "you " "and " "me. "
}

\book {
  \bookOutputSuffix "midi"
  \score {
%    \articulate
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano
          <<
            \new Voice { \repeat unfold \verses \TempoTrack     }
            \new Voice { \global \repeat unfold \verses \soprano \bar "|." }
          >>
                                % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global \repeat unfold \verses { \alto \nl } \bar "|." }
            \addlyrics \wordsMidi
          >>
                                % Tenor staff
          \new Staff = tenor
          <<
            \clef "treble_8"
            \new Voice { \global \repeat unfold \verses \tenor }
          >>
                                % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Voice { \global \repeat unfold \verses \bass }
          >>
        >>
    \midi {}
  }
}

\book {
  \bookOutputSuffix "midi-sop"
  \score {
%    \articulate
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano
          <<
            \new Voice { \repeat unfold \verses \TempoTrack     }
            \new Voice { \global \repeat unfold \verses \soprano \bar "|." }
            \addlyrics \wordsMidi
          >>
                                % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global \repeat unfold \verses { \alto \nl } \bar "|." }
          >>
                                % Tenor staff
          \new Staff = tenor
          <<
            \clef "treble_8"
            \new Voice { \global \repeat unfold \verses \tenor }
          >>
                                % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Voice { \global \repeat unfold \verses \bass }
          >>
        >>
    \midi {}
  }
}

\book {
  \bookOutputSuffix "repeat"
  \score {
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff = women \with { printPartCombineTexts = ##f }
          <<
            \new Voice \RehearsalTrack
            \new Voice \TempoTrack
            \new NullVoice = "alignerS" \soprano
            \new NullVoice = "aligner" \alto
            \new Voice \partCombine { \global \soprano \bar "|." } { \global \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne \chorus }
            \new Lyrics \lyricsto "aligner"   \wordsTwo
            \new Lyrics \lyricsto "aligner"   \wordsThree
            \new Lyrics \lyricsto "aligner"   \wordsFour
            \new Lyrics \with {alignAboveContext = women} \lyricsto alignerS \chorusSop
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \tenor } { \global \bass }
            \new NullVoice = alignerT \tenor
          >>
        >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}

\book {
  \bookOutputSuffix "single"
  \score {
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff = women \with { printPartCombineTexts = ##f }
          <<
            \new Voice { \repeat unfold \verses \RehearsalTrack }
            \new Voice { \repeat unfold \verses \TempoTrack }
            \new NullVoice = "alignerS" { \repeat unfold \verses \soprano }
            \new NullVoice = "aligner" { \repeat unfold \verses \alto }
            \new Voice \partCombine { \global \repeat unfold \verses \soprano \bar "|." }
                                               { \global \repeat unfold \verses { \alto \nl } \bar "|." }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                              \wordsFour  \chorus
                                            }
            \new Lyrics \with {alignAboveContext = women} \lyricsto alignerS {\repeat unfold \verses \chorusSop}
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \repeat unfold \verses \tenor }
                                            { \global \repeat unfold \verses \bass }
          >>
        >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
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
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #15
    system-separator-markup = \slashSeparator
  }
  \score {
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff = women \with { printPartCombineTexts = ##f }
          <<
            \new Voice { \repeat unfold \verses \RehearsalTrack }
            \new Voice { \repeat unfold \verses \TempoTrack }
            \new NullVoice = "alignerS" { \repeat unfold \verses \soprano }
            \new NullVoice = "aligner"  { \repeat unfold \verses \alto    }
            \new Voice \partCombine { \global \repeat unfold \verses \soprano \bar "|." }
                                               { \global \repeat unfold \verses { \alto \nl } \bar "|." }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                              \wordsFour  \chorus
                                            }
            \new Lyrics \with {alignAboveContext = women} \lyricsto alignerS {\repeat unfold \verses \chorusSop}
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \repeat unfold \verses \tenor }
                                            { \global \repeat unfold \verses \bass }
          >>
        >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}
