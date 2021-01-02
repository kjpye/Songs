\version "2.20.2"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Room for Thee"
  subtitle    = "Sankey No. 35"
  subsubtitle = "Sankey 880 No. ???"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Ira D. Sankey"
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = "Anon"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

verses = 5

global = {
  \key f \major
  \time 4/4
  \tempo 4=120
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \repeat volta \verses {
    \mark \markup { \box "A" } s4 s1*2 \break
    \mark \markup { \box "B" } s1*3 \break
    \mark \markup { \box "C" } s1*3 s2 \bar "|" \break
    \mark \markup { \box "D" } s2 s1*3 \break
    \mark \markup { \box "E" } s1*3 s2. \break
  }
}

soprano = \relative {
  \global
  \repeat volta \verses {
    \slurDashed f'8(a)
    c8(c) c4 c f,8 a
    \slurSolid a8(g) \slurDashed f[(e)] f4 f8(f)
    bes4 c8(d) c4 a8(f) % B
    g2. f8(a)
    c4 c8(c) c4 f,8 a
    a8[g] f(e) f4 bes8(d) % C
    c4 a8(f) a4 g
    f2. \bar "||" c'8.\fermata^\markup \smallCaps Refrain bes16
    a4 a8 a g4 a
    bes4 d2 d8(d) % D
    c4 c8 d c4 bes8(a)
    g2. c8.\fermata (bes16)
    a4 a8 a g4 a % E
    bes4(d) c\fermata f,8(a)
    c4 a8 f a(a) g4
    f2.
  }
}

alto = \relative {
  \global
  \repeat volta \verses {
    \slurDashed f'8(f)
    a8(a) g4 f f8 f
  }
}

tenor = \relative {
  \global
  \repeat volta \verses {
    \slurDashed a8(c)
    f8(f) e4 f a,8 c
    bes4 a8(g) a4 a8(a)
    d4 a8(bes) a4 c8(a) % B
    c2. a8(c)
    f4 e8(e) f4 a,8 c
    bes4 a8(g) a4 bes8(bes) % C
    a4 f8(a) c4 bes
    a2. c8.\fermata(c16)
    c4 c8 c c4 c
    bes4 bes2 bes8(bes) % D
    a4 a8 b a4 c8(c)
    c2. c8.\fermata(c16)
    c4 c8 c c4 c % E
    bes4(bes) a\fermata a8(c)
    a4 f8 a c(c)
    bes4
    a2.
  }
}

bass= \relative {
  \global
  \repeat volta \verses {
    \slurDashed f8(f)
    f8(f) g4 a f8 f
    bes,4 c8(c) f4 f8(f)
    f4 f8(f) f4 f8(f) % B
    c2. f8(f)
    f4 f8(f) a4 f8 f
    bes,4 c8(c) f4 bes,8(bes) % C
    c4 c8(c) c4 c
    f2. \bar "||" f8.(16)
    f4 f8 f c4 f
    bes,4 bes2 bes8(bes) % D
    f'4 f8 f f4 g8(f)
    c2. c8.\fermata c16
    f4 f8 f c4 f % E
    bes,4(bes) f'\fermata f8(f)
    f4 f8 d c(c) c4
    f2.
  }
}

chorus = \lyricmode {
  Oh, _ come to my
  \set stanza = "1,2,3"
  heart, Lord Je -- sus!
  There is room in my heart for _ Thee;
  Oh, _
  \set stanza = "1,2,3"
  come to my heart, Lord Je -- sus, come,
  There is room in my heart _ for Thee;
}

wordsOne = \lyricmode {
  \set ignoreMelismata = ##t
  \set stanza = "1."
  Thou did'st leave _ Thy throne and Thy King _ -- ly _ crown,
  when they cam -- est to earth for _ me;
  But in Beth -- le -- hem's home
  was there found _ no _ room
  For they hol -- y Na -- ti -- vi -- ty:
}
  
wordsTwo = \lyricmode {
  \set ignoreMelismata = ##t
  \set stanza = "2."
  Heaven's _ arch _ -- es rang when the an -- _ gels _ sang.
  Pro -- _ claim -- ing They Roy -- al de -- gree;
  But of low -- ly _ birth cam'st Thou,
  Lord _ on _ earth,
  And in great hu -- _ mi -- li -- ty:
}
  
wordsThree = \lyricmode {
  \set ignoreMelismata = ##t
  \set stanza = "3."
  The _ fox -- es found rest, and the birds _ had their nest
  In the shade of the for -- est _ tree;
  But Thy couch was the sod, O Thou Son _ of _ God,
  In the de -- serts of Gal -- i -- lee:
}
  
wordsFour = \lyricmode {
  \set ignoreMelismata = ##t
  \set stanza = "4."
  Thou _ cam -- est, O Lord, with the liv -- _ ing _ Word
  That should set Thy _ peo -- ple _ free;
  But with mock _ ing _ scorn, and with crown _ of _ thorn,
  They+ bore Thee to Cal -- va -- ry:
  Oh, _ come to my
  \set stanza = "4."
  heart, Lord Je -- sus!
  Thy _ cross is my on -- ly _ plea;
  Oh, _
  \set stanza = "4."
  come. to my heart, Lord Je -- sus come.
  Thy _ cross is my on -- _ ly plea.
}
  
wordsFive = \lyricmode {
  \set ignoreMelismata = ##t
  \set stanza = "5."
  When heaven's arch -- es shall ring, and her choirs _ shall _ sing
  At The com -- ing to vic -- to -- _ ry;
  Let Thy voice call me home, say -- ing,
  "\"Yet" _ there is room, There is room at My side for "thee!\""
  And my heart shall re --
  \set stanza = "5."
  joice, Lord Je -- sus!
  When Thou com -- est and call -est for mel
  And my
  \set stanza = "5."
  heart shall re -- joice, Lord Je -- _ sus,
  When Thou com -- est and call -- est for me.
}
  
wordsSix = \lyricmode {
  \set stanza = "6."
}
  
wordsMidi = \lyricmode {
}
  
\book {
  \bookOutputSuffix "repeat"
  \score {
%    \unfoldRepeats
%    \articulate
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
%            \new Lyrics \lyricsto "soprano" { \wordsOne   \chorus
%                                              \wordsTwo   \chorus
%                                              \wordsThree \chorus
%                                              \wordsFour  \chorus
%                                              \wordsFive  \chorus
%                                              \wordsSix   \chorus
%                                            }
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
    \midi {}
  }
}
