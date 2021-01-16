\version "2.22.0"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "David of the White Rock"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Welsh Air"
  arranger    = "Arr. by H. A. C."
%  opus        = "opus"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

verses = 2

global = {
  \key g \major
  \time 3/4
  \tempo 4=80
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s2.*5
  \mark \markup { \box "B" } s2.*5
  \mark \markup { \box "C" } s2.*6
}

soprano = \relative {
  \autoBeamOff
  \global
  e'8[b'] a[g] fis[e]
  e4 dis e
  b8[dis] fis[a] g[fis]
  \slurDashed g2(fis4) \slurSolid
  e4 e' d
  c4 b8[a] b4 % B
  g4 b8[a] g[fis]
  g2.
  g4 b8[g] d'[g,]
  a4 g8[fis] e[dis]
  e8[fis] g[e] a8.[g16] % C
  g4(fis) fis
  e8[g] b[g'] fis[e]
  b8[a] g[fis] g4
  fis8.[g16] e4 dis
  e2.
}

alto = \relative {
  \global
  b4 e b
  b4 b b
  b4 b dis
  \slurDashed e2(d4) \slurSolid
  c4 fis g
  a4 fis d % B
  e4 e d
  d4(b c)
  d4 d d
  d4 d b
  b4 b a % C
  b4(dis) dis
  e4 g b
  dis,4 dis e
  c4 b b
  b2.
}

tenor = \relative {
  \global
  g4 b b
  a4 a g
  fis4 fis b
  \slurDashed b2(b8[a]) \slurSolid
  g4 a d
  e4 d8[c] b4 % B
  b4 d8[c] b[a]
  b4(g a)
  b4 b g
  fis4 a fis
  e4 e e % C
  e4(b') b
  b4 b b
  b4 b b
  a4 g fis
  g2.
}

bass = \relative {
  \global
  e4 e g
  fis4 fis e
  dis4 dis b
  \slurDashed e2(b4) \slurSolid
  c4 c b
  a4 d g % B
  e4 c d
  g2.
  g4 g b,
  d4 d a
  g4 g c % C
  b2 a'4
  g4 e g
  fis4 b, e
  a,4 b b
  e2.
}

wordsOne = \lyricmode {
  \set stanza = "1."
  Bring me, said Da -- vid, the harp I a -- \set ignoreMelismata = ##t dore,
  I \unset ignoreMelismata long, ere death calls me, to play it once more
  Help me to reach my be -- lov'd strings a -- gain,
  On wid -- ow and child -- ren, God's bless -- ing re -- main.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Last night I heard a kind an -- gel thus say,
  "\"Da" -- vid, fly home on the wings of thy "lay,\""
  Harp of my youth, and thy mus -- ic, a -- dieu,
  Oh, wid -- ow and child -- ren, God's bless -- ing on you.
}
  
wordsSingle = \lyricmode {
  \set stanza = "1."
  Bring me, said Da -- vid, the harp I a -- \set ignoreMelismata = ##t dore,
  I \unset ignoreMelismata long, ere death calls me, to play it once more
  Help me to reach my be -- lov'd strings a -- gain,
  On wid -- ow and child -- ren, God's bless -- ing re -- main.
  \set stanza = "2."
  Last night I heard a kind an -- gel thus say,
  "\"Da" -- vid, fly home on the wings of thy "lay,\""
  Harp of my youth, and thy mus -- ic, a -- dieu,
  Oh, wid -- ow and child -- ren, God's bless -- ing on you.
}

wordsMidi = \lyricmode {
  \set stanza = "1."
  "\nBring " "me, " "said " Da "vid, " "the " "harp " "I " a \set ignoreMelismata = ##t "dore, "
  "\nI " \unset ignoreMelismata "long, " "ere " "death " "calls " "me, " "to " "play " "it " "once " "more "
  "\nHelp " "me " "to " "reach " "my " be "lov'd " "strings " a "gain, "
  "\nOn " wid "ow " "and " child "ren, " "God's " bless "ing " re "main. "
  \set stanza = "2."
  "\nLast " "night " "I " "heard " "a " "kind " an "gel " "thus " "say, "
  "\n\"Da" "vid, " "fly " "home " "on " "the " "wings " "of " "thy " "lay,\" "
  "\nHarp " "of " "my " "youth, " "and " "thy " mus "ic, " a "dieu, "
  "\nOh, " wid "ow " "and " child "ren, " "God's " bless "ing " "on " "you. "
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
            \new Lyrics \lyricsto "soprano"  \wordsOne
            \new Lyrics \lyricsto "soprano"  \wordsTwo
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
%    \articulate
    \context GrandStaff <<
      <<
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff <<
            \new Voice { \RehearsalTrack \RehearsalTrack }
            \new Voice = "soprano" { \voiceOne \soprano \soprano }
            \new Voice = "alto"    { \voiceTwo \alto    \alto    }
            \new Lyrics \lyricsto "soprano" \wordsSingle
%            \new Lyrics \lyricsto "soprano" \wordsMidi
          >>
                                  % Joint tenor/bass staff
          \new Staff <<
            \clef "bass"
            \new Voice = "tenor" { \voiceOne \tenor \tenor }
            \new Voice = "bass"  { \voiceTwo \bass  \bass  }
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
            \new Voice { \RehearsalTrack \RehearsalTrack }
            \new Voice = "soprano" { \voiceOne \soprano \soprano }
            \new Voice = "alto"    { \voiceTwo \alto    \alto    }
            \new Lyrics \lyricsto "soprano" \wordsMidi
          >>
                                  % Joint tenor/bass staff
          \new Staff <<
            \clef "bass"
            \new Voice = "tenor" { \voiceOne \tenor \tenor }
            \new Voice = "bass"  { \voiceTwo \bass  \bass  }
          >>
        >>
      >>
    >>
    \midi {}
  }
}
