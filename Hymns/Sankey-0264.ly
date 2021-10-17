\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Oh, Wonderful Word!"
  subtitle    = "Sankey No. 264"
  subsubtitle = "Sankey 880 No. 537"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Ira D. Sankey."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Julia Sterling."
%  meter       = \markup\smallCaps "meter"
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key g \major
  \time 6/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s4 s1.*2
  \mark \markup { \box "B" }    s1.*3
  \mark \markup { \box "C" }    s1.*2 s2. s2
  \mark \markup { \box "D" } s4 s1.*2
  \mark \markup { \box "E" }    s1.*3
  \mark \markup { \box "F" }    s1.*2  s2. s2
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  d''4
  d4. c8 b4 4 c d
  c4. b8 a4 2 c4
  b4. a8 g4 d' c b % B
  a2.(d4) r d
  d4. c8 b4 4 c d
  c4. b8 a4 4(b) c % C
  b4. a8 g4 a g fis
  g2.~4 r \bar "|" \break b
  a4. b8 c4 4 b a % D
  b4. c8 d4 2 b4
  a4. d8 4 cis d e % E
  d2.~4 r d8 8
  d4. c8 b4 4 c d
  c4. b8 a4 4(b) c % F
  b4. a8 g4 a g fis
  g2.~4 r
}

alto = \relative {
  \autoBeamOff
  g'4
  g4. d8 4 g4 a b
  a4. g8 fis4 2 a4
  g4. 8 4 a a g % B
  fis2.~4 r fis
  g4. d8 4 g4 a b
  a4. g8 fis4 4(g) a % C
  g4. fis8 g4 e d d
  d2.~4 r g
  fis4. g8 a4 a g fis % D
  g4. a8 b4 2 g4
  fis4. 8 4 e fis g % E
  fis2.~4 r fis8 8
  g4. d8 4 g a b
  a4. g8 fis4 4(g)a % F
  g4. fis8 g4 e d d
  d2.~4 r
}

tenor = \relative {
  \autoBeamOff
  b4
  b4. a8 g4 d'4 4 4
  d4. 8 4 2 4
  d4. c8 b4 d d d % B
  d2.(a4) r c
  b4. a8 g4 d' d d
  d4. 8 4 2 4 % C
  d4. 8 4 c b a
  b2.~4 r d
  d4. 8 4 4 4 4 % D
  d4. 8 4 2 4
  d4. a8 4 4 4 4 % E
  a2.~4 r a8 c
  b4. a8 g4 d' d d
  d4. 8 4 2 4 % F
  d4. 8 4 c b a
  b2.~4 r
}

bass = \relative {
  \autoBeamOff
  g4
  g4. 8 4 4 4 4
  d4. 8 4 2 4
  g4. 8 4 fis fis g % B
  d2.~4 r d
  g4. 8 4 4 4 4
  d4. 8 4 2 4 % C
  g,4. a8 b4 c d d
  g,2.~4 r g'
  d4. 8 4 4 4 4 % D
  g4. 8 4 2 4
  a4. 8 4 a, a a % E
  d2.~4 r d8 8
  g4. 8 4 4 4 4
  d4. 8 4 2 4 % F
  g,4. a8 b4 c d d
  g,2.~4 r
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  world pass a -- way,
  God's Word shall for ev -- er en -- dure.
}

verses = 4

wordsOne = \lyricmode {
  \set stanza = "1."
  Oh, won -- der -- ful, won -- der -- ful Word of the Lord!
  True wis -- dom its pa -- ges un -- fold;
  And though we may read them a thou -- sand times o'er,
  They nev -- er, no nev -- er, grow old!
  Each line hath a trea -- sure, each prom -- ise a pearl,
  That all if they will may se -- cure;
  And we know that when time and the
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Oh, won -- der -- ful, won -- der -- ful Word of the Lord!
  The lamp that our Fa -- ther a -- bove,
  So kind -- ly has light -- ed to teach us the way
  That leads to the arms of Hia love!
  Its warn -- ings, its coun -- sels, are faith -- ful and just;
  Its judg -- ments are per -- fect and pure;
  And we know that when time and the
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Oh, won -- der -- ful, won -- der -- ful Word of the Lord!
  Our on -- ly sal -- va -- tion is there;
  It car -- ries con -- vic -- tion down deep in the heart,
  And shows us our -- selves as we are.
  It tells of a Sa -- viour, and points to the cross,
  Where par -- don we now may se -- cure;
  For we know that when time and the 
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Oh, won -- der -- ful, won -- der -- ful Word of the Lord!
  The hope of our friends in the past;
  Its truth where so firm -- ly they an -- chored their trust,
  Thro' a -- ges e -- ter -- nal shall last.
  Oh, won -- der -- ful, won -- der -- ful Word of the Lord!
  Un -- chang -- ing, a -- bid -- ing and sure;
  For we know that when time and the
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Oh, " won der "ful, " won der "ful " "Word " "of " "the " "Lord! "
  "\nTrue " wis "dom " "its " pa "ges " un "fold; "
  "\nAnd " "though " "we " "may " "read " "them " "a " thou "sand " "times " "o'er, "
  "\nThey " nev "er, " "no " nev "er, " "grow " "old! "
  "\nEach " "line " "hath " "a " trea "sure, " "each " prom "ise " "a " "pearl, "
  "\nThat " "all " "if " "they " "will " "may " se "cure; "
  "\nAnd " "we " "know " "that " "when " "time " "and " "the " "world " "pass " a "way, "
  "\nGod's " "Word " "shall " "for " ev "er " en "dure. "

  \set stanza = "2."
  "\nOh, " won der "ful, " won der "ful " "Word " "of " "the " "Lord! "
  "\nThe " "lamp " "that " "our " Fa "ther " a "bove, "
  "\nSo " kind "ly " "has " light "ed " "to " "teach " "us " "the " "way "
  "\nThat " "leads " "to " "the " "arms " "of " "Hia " "love! "
  "\nIts " warn "ings, " "its " coun "sels, " "are " faith "ful " "and " "just; "
  "\nIts " judg "ments " "are " per "fect " "and " "pure; "
  "\nAnd " "we " "know " "that " "when " "time " "and " "the " "world " "pass " a "way, "
  "\nGod's " "Word " "shall " "for " ev "er " en "dure. "

  \set stanza = "3."
  "\nOh, " won der "ful, " won der "ful " "Word " "of " "the " "Lord! "
  "\nOur " on "ly " sal va "tion " "is " "there; "
  "\nIt " car "ries " con vic "tion " "down " "deep " "in " "the " "heart, "
  "\nAnd " "shows " "us " our "selves " "as " "we " "are. "
  "\nIt " "tells " "of " "a " Sa "viour, " "and " "points " "to " "the " "cross, "
  "\nWhere " par "don " "we " "now " "may " se "cure; "
  "\nFor " "we " "know " "that " "when " "time " "and " "the " "world " "pass " a "way, "
  "\nGod's " "Word " "shall " "for " ev "er " en "dure. "

  \set stanza = "4."
  "\nOh, " won der "ful, " won der "ful " "Word " "of " "the " "Lord! "
  "\nThe " "hope " "of " "our " "friends " "in " "the " "past; "
  "\nIts " "truth " "where " "so " firm "ly " "they " an "chored " "their " "trust, "
  "\nThro' " a "ges " e ter "nal " "shall " "last. "
  "\nOh, " won der "ful, " won der "ful " "Word " "of " "the " "Lord! "
  "\nUn" chang "ing, " a bid "ing " "and " "sure; "
  "\nFor " "we " "know " "that " "when " "time " "and " "the " "world " "pass " a "way, "
  "\nGod's " "Word " "shall " "for " ev "er " en "dure. "
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
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \new Voice { \repeat unfold \verses \RehearsalTrack }
            \new Voice { \repeat unfold \verses \TempoTrack }
            \new NullVoice = "aligner" { \repeat unfold \verses \soprano }
            \new Voice = "women" \partCombine { \global \repeat unfold \verses \soprano \bar "|." }
                                               { \global \repeat unfold \verses { \alto \nl } \bar "|." }
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
            \new Voice = "men" \partCombine { \global \repeat unfold \verses \tenor }
                                            { \global \repeat unfold \verses \bass }
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
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \new Voice { \repeat unfold \verses \RehearsalTrack }
            \new Voice { \repeat unfold \verses \TempoTrack }
            \new NullVoice = "aligner" { \repeat unfold \verses \soprano }
            \new Voice = "women" \partCombine { \global \repeat unfold \verses \soprano \bar "|." }
                                               { \global \repeat unfold \verses { \alto \nl } \bar "|." }
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
            \new Voice = "men" \partCombine { \global \repeat unfold \verses \tenor }
                                            { \global \repeat unfold \verses \bass }
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
