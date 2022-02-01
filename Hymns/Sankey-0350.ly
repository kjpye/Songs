\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "I am Praying for You"
  subtitle    = "Sankey No. 350"
  subsubtitle = "Sankey 880 No. 106"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Ira D. Sankey."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Samuel O'M. Cluff."
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
  \time 4/4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s1*6
  \mark \markup { \box "B" } s1*6
  \mark \markup { \box "C" } s1*6
  \mark \markup { \box "D" } s1*6
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
  s1*21
  s2 \tempo 4=40 s4 \tempo 4=120 s4
  s2. \tempo 4=40 s4
  \tempo 4=60 s1
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  d'2\omit\mf 4 g
  b2g4 b
  b4(a) e fis
  g2 d4 4
  d2 g4 b
  d2 b4 4
  b2 a4 g % B
  a2. d,4
  d2 4 g
  b2 g4 b
  b4(a) e fis
  g2 d4 g
  g2 fis4 e % C
  d2 g4 a
  b2 a4 4
  g2. \bar "||" b4\omit\f^\markup{\dynamic f \smallCaps Chorus.}
  d2 4 e
  d2 b4 4
  b2^\p 4 c % D
  b2 a4 g
  g2^\f f4 e
  d2 g4\fermata 4^\pp
  g4^\markup\italic rall. (fis) e fis\fermata
  g1\fermata
}

alto = \relative {
  \autoBeamOff
  b2\omit\mf 4 4
  d2 b4 d
  c2 4 4
  b2 4 4
  b2 d4 g
  g2 4 4
  g2 a4 cis, % B
  d2. 4
  b2 4 4
  d2 b4 d
  c2 4 4
  b2 4 4
  e2 d4 c % C
  b2 cis4 4
  d2 fis4 4
  d2. g4\omit\f
  g2 4 4
  g2 4 4
  g2^\p 4 4 % D
  g2 fis4 e
  e2^\f d4 c
  b2 d4\fermata d^\pp
  c2 4 4\fermata
  b1\fermata
}

tenor = \relative {
  \autoBeamOff
  g2\omit\mf 4 4
  g2 4 4
  fis2 a4 4
  g2 4 4
  g2 b4 d
  b2 d4 4
  d2 4 a % B
  fis2. 4
  g2 4 4
  g2 4 4
  fis2 a4 4
  g2 4 4
  g2 4 4 % C
  g2 4 4
  g2 c4 4
  b2. d4\omit\f
  b2 4 c
  b2 d4 4
  d2\omit\p 4 e % D
  d2 c4 b
  c2\omit\f g4 4
  g2 b4\fermata 4\omit\pp
  a2 g4 a\fermata
  g1\fermata
}

bass = \relative {
  \autoBeamOff
  g2 4 4
  g2 4 4
  d2 4 4
  g2 4 4
  g2 4 4
  g2 4 4
  g2 fis4 e % B
  d2. 4
  g,2 4 4
  g2 4 4
  d'2 4 4
  g,2 4 4
  c2 4 4 % C
  g'2 e4 4
  d2 4 4
  g2. 4\omit\f
  g2 4 4
  g2 4 4
  g2\omit\p 4 4 % D
  g2 d4 e
  c2\omit\f 4 4
  d2 4\fermata 4\omit\pp
  d2 4 4\fermata
  g,1\fermata
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  For you I am pray -- ing,
  For you I am pray -- ing,
  For you I am pray -- ing,
  I'm pray -- ing for you.
}

verses = 5

wordsOne = \lyricmode {
  \set stanza = "1."
  I have a Sa -- viour, He's plead -- ing in glo -- ry,
  A dear lov -- ing Sa -- viour, tho' earth -- friends be few;
  And now He is watch -- ing in ten -- der -- ness o'er me,
  And oh that my Sa -- viour were your Sa -- viour too!
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  I have a Fa -- ther: to me He has giv -- en
  A hope for e -- ter -- ni -- ty, bles -- sed and true:
  And soon He will call me to meet Him in hea -- ven;
  But oh, may He lead you to go with me too!
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  I have a robe, 'tis res -- plen -- dent in white -- ness,
  A -- wait -- ing in glo -- ry my won -- der -- ing view;
  Oh, when I re -- ceive it all shin -- ing in bright -- ness,
  Dear friend, could I see you re -- ceiv -- ing ine too!
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  I have a peace: it is calm as a ri -- ver—
  A peace that the friends of this world ne -- ver knew;
  My Sa -- viour a -- lone is its Au -- thor and Giv -- er,
  And oh, could I know it was giv -- en to you!
}
  
wordsFive = \lyricmode {
  \set stanza = "5."
  "When Je" -- sus has found you, tell oth -- ers the sto -- ry,
  That my lov -- ing Sa -- viour is your Sa -- viour too;
  Then pray that your Sa -- viour may bring them to glo -- ry,
  And prayer will be ans -- wered— 'twas ans -- wered for you!
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "I " "have " "a " Sa "viour, " "He's " plead "ing " "in " glo "ry, "
  "\nA " "dear " lov "ing " Sa "viour, " "tho' " earth "friends " "be " "few; "
  "\nAnd " "now " "He " "is " watch "ing " "in " ten der "ness " "o'er " "me, "
  "\nAnd " "oh " "that " "my " Sa "viour " "were " "your " Sa "viour " "too! "
  "\nFor " "you " "I " "am " pray "ing, "
  "\nFor " "you " "I " "am " pray "ing, "
  "\nFor " "you " "I " "am " pray "ing, "
  "\nI'm " pray "ing " "for " "you. "

  \set stanza = "2."
  "\nI " "have " "a " Fa "ther: " "to " "me " "He " "has " giv "en "
  "\nA " "hope " "for " e ter ni "ty, " bles "sed " "and " "true: "
  "\nAnd " "soon " "He " "will " "call " "me " "to " "meet " "Him " "in " hea "ven; "
  "\nBut " "oh, " "may " "He " "lead " "you " "to " "go " "with " "me " "too! "
  "\nFor " "you " "I " "am " pray "ing, "
  "\nFor " "you " "I " "am " pray "ing, "
  "\nFor " "you " "I " "am " pray "ing, "
  "\nI'm " pray "ing " "for " "you. "

  \set stanza = "3."
  "\nI " "have " "a " "robe, " "'tis " res plen "dent " "in " white "ness, "
  "\nA" wait "ing " "in " glo "ry " "my " won der "ing " "view; "
  "\nOh, " "when " "I " re "ceive " "it " "all " shin "ing " "in " bright "ness, "
  "\nDear " "friend, " "could " "I " "see " "you " re ceiv "ing " "ine " "too! "
  "\nFor " "you " "I " "am " pray "ing, "
  "\nFor " "you " "I " "am " pray "ing, "
  "\nFor " "you " "I " "am " pray "ing, "
  "\nI'm " pray "ing " "for " "you. "

  \set stanza = "4."
  "\nI " "have " "a " "peace: " "it " "is " "calm " "as " "a " ri "ver— "
  "\nA " "peace " "that " "the " "friends " "of " "this " "world " ne "ver " "knew; "
  "\nMy " Sa "viour " a "lone " "is " "its " Au "thor " "and " Giv "er, "
  "\nAnd " "oh, " "could " "I " "know " "it " "was " giv "en " "to " "you! "
  "\nFor " "you " "I " "am " pray "ing, "
  "\nFor " "you " "I " "am " pray "ing, "
  "\nFor " "you " "I " "am " pray "ing, "
  "\nI'm " pray "ing " "for " "you. "

  \set stanza = "5."
  "\nWhen Je" "sus " "has " "found " "you, " "tell " oth "ers " "the " sto "ry, "
  "\nThat " "my " lov "ing " Sa "viour " "is " "your " Sa "viour " "too; "
  "\nThen " "pray " "that " "your " Sa "viour " "may " "bring " "them " "to " glo "ry, "
  "\nAnd " "prayer " "will " "be " ans "wered— " "'twas " ans "wered " "for " "you! "
  "\nFor " "you " "I " "am " pray "ing, "
  "\nFor " "you " "I " "am " pray "ing, "
  "\nFor " "you " "I " "am " pray "ing, "
  "\nI'm " pray "ing " "for " "you. "
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
            \new Lyrics \lyricsto "aligner"   \wordsFive
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
                                              \wordsFive  \chorus
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
                                              \wordsFive  \chorus
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
      \pointAndClickOff
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}
