\version "2.20.2"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Bethlehem"
  subtitle    = "Sankey No. 26"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Lewis H. Redner"
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = "Phillips Brooks"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

verses = 4

global = {
  \key g \major
  \time 4/4
  \tempo 4=120
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \repeat volta \verses {
    \mark \markup { \box "A" } s4 s1*3 s2.
    \mark \markup { \box "B" } s4 s1*3 s2.
    \mark \markup { \box "C" } s4 s1*3 s2.
    \mark \markup { \box "D" } s4 s1*3 s2.
  }
}

TempoTrack = {
  \repeat volta \verses {
  }
}

soprano = \relative {
  \global
  \repeat volta \verses {
    b'4
    b4 b ais b
    d4 c e, a
    g4 fis8([g]) a4 d,
    b'2. \bar "||" \break b4
    b4 b e b % B
    d4 c e, a
    g4 fis8([g]) b4 a
    g2. \bar "||" \break b4
    b4 b a g % C
    fis2 fis4 fis
    e4 fis g a
    b2. \bar "||" \break b4
    b4 b ais b % D
    d4 c e, e'
    d4 g, b4. a8
    g2.
  }
}

alto = \relative {
  \global
  \repeat volta \verses {
    d'4
    d4 d cis d
    f4 e c e
    d4 c8([b]) c4 c
    b2. d4
    d4 g e gis % B
    a4 e c e
    d4 c8([b]) d4 c
    b2. g'4
    g4 g fis e % C
    dis2 dis4 dis
    e4 fis g e
    dis2. d4
    d4 d cis d % D
    e4 e c e
    g4 b, d4. c8
    b2.
  }
}

tenor = \relative {
  \global
  \repeat volta \verses {
    g4
    g4 g g g gis4 a a c
    b4 a8(g) fis4 fis
    g2. g4
    g4 d' b e % B
    e4 e e c
    b4 a8 g fis4 fis
    g2. d'4
    d4 d c cis % C
    dis2 dis4 b
    e,4 fis g e
    fis2. g4
    d'4 b g g % D
    e4 a a c
    b4 b g4. fis8
    g2.
  }
}

bass= \relative {
  \global
  \repeat volta \verses {
    g4
    g4 g g g
    c,4 c c c
    d4 d d d
    g2. g4
    g4 g gis e % B
    a4 a a, c
    d4 d d d
    g,2. g'4
    g4 g a ais % C
    b2 b4 b,
    e4 fis g c,
    b2. g'4
    g4 g g g % D
    c,4 c c a
    d4 d d4. d8
    g,2.
  }
}

chorus = \lyricmode {
}

wordsOne = \lyricmode {
  \set stanza = "1."
  O lit -- tle town of Beth -- le -- hem,
  How still we see thee lie!
  A -- bove thy deep and dream -- less sleep
  The si -- lent stars go by;
  Yet in they dark streetas shin -- eth
  The ev -- er -- last -- ing Light;
  The hopes and fears of all the years
  Are met in thee to -- night!
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  For Christ is born of Ma _ -- ry;
  And gath -- er'd all a -- bove,
  While mor -- tals sleep, the an -- gels keep
  Their watch of won -- d'ring love,
  O morn -- ing stars, to -- geth -- er
  Pro -- claim the ho -- ly birth,
  And prais -- es sing to God the King,
  And peace to men on Earth!
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  How si -- lent -- ly, how si -- lent -- ly,
  The wond -- rous gift is given!
  So God im -- parts to hu -- man hearts
  The bless -- ings 0f His heaven.
  No ear may hear His com -- ing;
  But in this world of sin,
  Where meek souls will re -- ceive Him, still
  The dear Christ en -- ters in.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  O ho -- ly child of Beth -- le -- hem,
  Des -- cend to us, we pray;
  Cast out our sin and en -- ter in—
  Be born in us to -- day!
  We hear the ho -- ly an -- gels
  The great glad tid -- ings tell:
  Oh, come to us, a -- bide with us,
  Our Lord E -- man -- u -- el!
}
  
wordsFive = \lyricmode {
  \set stanza = "5."
}
  
wordsSix = \lyricmode {
  \set stanza = "6."
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "\nO " lit "tle " "town " "of " Beth le "hem, "
  "\nHow " "still " "we " "see " "thee " "lie! "
  "\nA" "bove " "thy " "deep " "and " dream "less " "sleep "
  "\nThe " si "lent " "stars " "go " "by; "
  "\nYet " "in " "they " "dark " "streetas " shin "eth "
  "\nThe " ev er last "ing " "Light; "
  "\nThe " "hopes " "and " "fears " "of " "all " "the " "years "
  "\nAre " "met " "in " "thee " to "night! "

  \set stanza = "2."
  "\nFor " "Christ " "is " "born " "of " "Ma " _ "ry; "
  "\nAnd " gath "er'd " "all " a "bove, "
  "\nWhile " mor "tals " "sleep, " "the " an "gels " "keep "
  "\nTheir " "watch " "of " won "d'ring " "love, "
  "\nO " morn "ing " "stars, " to geth "er "
  "\nPro" "claim " "the " ho "ly " "birth, "
  "\nAnd " prais "es " "sing " "to " "God " "the " "King, "
  "\nAnd " "peace " "to " "men " "on " "Earth! "

  \set stanza = "3."
  "\nHow " si lent "ly, " "how " si lent "ly, "
  "\nThe " wond "rous " "gift " "is " "given! "
  "\nSo " "God " im "parts " "to " hu "man " "hearts "
  "\nThe " bless "ings " "0f " "His " "heaven. "
  "\nNo " "ear " "may " "hear " "His " com "ing; "
  "\nBut " "in " "this " "world " "of " "sin, "
  "\nWhere " "meek " "souls " "will " re "ceive " "Him, " "still "
  "\nThe " "dear " "Christ " en "ters " "in. "

  \set stanza = "4."
  "\nO " ho "ly " "child " "of " Beth le "hem, "
  "\nDes" "cend " "to " "us, " "we " "pray; "
  "\nCast " "out " "our " "sin " "and " en "ter " "in— "
  "\nBe " "born " "in " "us " to "day! "
  "\nWe " "hear " "the " ho "ly " an "gels "
  "\nThe " "great " "glad " tid "ings " "tell: "
  "\nOh, " "come " "to " "us, " a "bide " "with " "us, "
  "\nOur " "Lord " E man u "el! "
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
%    \articulate
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
                                            }
%            \new Lyrics \lyricsto "soprano" \wordsMidi
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
