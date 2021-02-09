\version "2.22.0"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "\"Neither fo I Condemn Thee!\""
  subtitle    = "Sankey No. 47"
  subsubtitle = "Sankey 880 No. 467"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "James McGranahan"
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = "El Nathan"
  meter       = "7.6."

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key g \major
  \time 6/8
  \tempo 4=120
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
% \mark \markup { \circle "1a" }
  \mark \markup { \box "A" } s2.*3 s4. s4
  \mark \markup { \box "B" } s8 s2.*4
  \mark \markup { \box "C" } s2.*4
  \mark \markup { \box "D" } s2.*4
}

TempoTrack = {
  s2.*14
  s4. s4 \tempo 4=30 s8 \tempo 4=120
  s2.
}

soprano = \relative {
  b'8 b b c4 b8
  b4. g4 g8
  fis4 g8 a4 b8
  c4.~c4 \bar "|" \break \partial 8 c8
  b4 b8 d4 b8 % B
  << b4. \new Voice { s4 \tweak font-size #-2 a8 } >> a4 d8
  d4 a8 b4 cis8
  d4.~4. \bar "||" \break
  d8^\markup\smallCaps Chorus. d d e4 d8 % C
  d4. b4 b8
  b8(e) d d(c) b
  a4.(c) \break
  b8 b b d4 b8 % D
  d4. c
  b4 g8 a r a\fermata
  g4.~4.
}

aligner = \relative {
  b'8 b b c4 b8
  b4. g4 g8
  fis4 g8 a4 b8
  c4.~c4 \bar "|" \partial 8 c8
  b4 b8 d4 b8 % B
%  << b4. \new Voice { s4 \tweak font-size #-2 a8 } >> a4 d8
  b4 a8 a4 d8
  d4 a8 b4 cis8
  d4.~4. \bar "||"
  d8^\markup\smallCaps Chorus. d d e4 d8 % C
  d4. b4 b8
  b8(e) d d(c) b
  a4.(c)
  b8 b b d4 b8 % D
  d4. c
  b4 g8 a r a\fermata
  g4.~4.
}

alto = \relative {
  d'8 d d e4 d8
  d4. b4 b8
  d4 e8 f4 g8
  <a \tweak font-size #-2 fis>4.~4 fis8
  g4 g8 b4 g8 % B
  << g4. \new Voice {s4 \tweak font-size #-2 fis8} >> fis4 fis8
  fis4 fis8 g4 g8
  fis4.~4.
  g8 g g g4 g8 % C
  g4. g4 g8
  g4 g8 g4 g8
  fis4.(a)
  g8 g g f4 f8 % D
  e4. ees
  d4 b8 c8 r c\fermata
  b4.~4.
}

tenor = \relative {
  g8 g g g4 g8
  g4. d4 g8
  a4 a8 a4 d8
  d4.~4 d8
  d4 8 4 8 % B
  << d4. \new Voice {s4 \tweak font-size #-2 d8 } >> d4 a8
  a4 d8 a4 a8
  a4.(c)
  b8 b b c4 b8 % C
  b4. d4 d8
  d8(c) b8 b8(e) d
  d4.~d
  d8 d d b4 g8 % D
  g4. g
  g4 8 fis8 r fis\fermata
  g4.~g
}

bass= \relative {
  g,8 g g8 4 8
  g4. 4 8
  d'4 8 4 8
  d4.~4 d8
  g4 8 4 8 % B
  << d4. \new Voice {s4 d8} >> d4 8
  a4 8 4 8
  d4.~d
  g8 g g8 4 8 % C
  g4. 4 8
  g4 8 4 8
  d4.~d
  g8 g g8 4 g,8 % D
  c4. c
  d4 8 8 r d\fermata
  <g, d'>4.~q
}

chorus = \lyricmode {
  "\"Nei" -- ther do I con -- demn "thee!\""
  Oh, sing it o'er and o'er;
  "\"Nei" -- ther do I con -- demn thee:
  Go, and sin no "more.\""
}

wordsOne = \lyricmode {
  \set stanza = "1."
  "\"Nei" -- ther do I con -- demn "thee!\"—"
  Oh, words of won -- drous grace!
  They sins were borne up -- on the cross:
  Be -- lieve, and go in peace.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  "\"Nei" -- ther do I con -- demn "thee!\"—"
  Oh, words of won -- drous grace!
  "\"No" con -- dem -- na -- "tion\"" for _ thee,
  As at the cross you bow.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  "\"Nei" -- ther do I con -- demn thee!—
  I came not to con -- demn;
  I came from God to save _ thee,
  And turn thee from thy "sin.\""
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  "\"Nei" -- ther do I con -- demn "thee!\"—"
  Oh, praise the God of grace!
  Oh, praise His son, our Sa -- _ viour,
  For this His word of peace!
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "\"Nei" "ther " "do " "I " con "demn " "thee!\"— "
  "\nOh, " "words " "of " won "drous " "grace! "
  "\nThey " "sins " "were " "borne " up "on " "the " "cross: "
  "\nBe" "lieve, " "and " "go " "in " "peace. "
  "\n\"Nei" "ther " "do " "I " con "demn " "thee!\" "
  "\nOh, " "sing " "it " "o'er " "and " "o'er; "
  "\n\"Nei" "ther " "do " "I " con "demn " "thee: "
  "\nGo, " "and " "sin " "no " "more.\" "

  \set stanza = "2."
  "\n\"Nei" "ther " "do " "I " con "demn " "thee!\"— "
  "\nOh, " "words " "of " won "drous " "grace! "
  "\n\"No " con dem na "tion\" " "for " "" "thee, "
  "\nAs " "at " "the " "cross " "you " "bow. "
  "\n\"Nei" "ther " "do " "I " con "demn " "thee!\" "
  "\nOh, " "sing " "it " "o'er " "and " "o'er; "
  "\n\"Nei" "ther " "do " "I " con "demn " "thee: "
  "\nGo, " "and " "sin " "no " "more.\" "

  \set stanza = "3."
  "\n\"Nei" "ther " "do " "I " con "demn " "thee!— "
  "\nI " "came " "not " "to " con "demn; "
  "\nI " "came " "from " "God " "to " "save " "thee, "
  "\nAnd " "turn " "thee " "from " "thy " "sin.\" "
  "\n\"Nei" "ther " "do " "I " con "demn " "thee!\" "
  "\nOh, " "sing " "it " "o'er " "and " "o'er; "
  "\n\"Nei" "ther " "do " "I " con "demn " "thee: "
  "\nGo, " "and " "sin " "no " "more.\" "

  \set stanza = "4."
  "\n\"Nei" "ther " "do " "I " con "demn " "thee!\"— "
  "\nOh, " "praise " "the " "God " "of " "grace! "
  "\nOh, " "praise " "His " "son, " "our " Sa "" "viour, "
  "\nFor " "this " "His " "word " "of " "peace! "
  "\n\"Nei" "ther " "do " "I " con "demn " "thee!\" "
  "\nOh, " "sing " "it " "o'er " "and " "o'er; "
  "\n"\"Nei"" "ther " "do " "I " con "demn " "thee: "
  "\nGo, " "and " "sin " "no " "more.\" "
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
            \new NullVoice = "aligner" \aligner
            \new Voice = "women" \partCombine { \global \soprano \bar "|." } { \global \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne \chorus }
            \new Lyrics \lyricsto "aligner"   \wordsTwo
            \new Lyrics \lyricsto "aligner"   \wordsThree
            \new Lyrics \lyricsto "aligner"   \wordsFour
          >>
                                  % Joint tenor/bass staff
          \new Staff <<
            \set Staff.soloText   = #""
            \set Staff.soloIIText = #""
            \set Staff.aDueText   = #""
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
  
nl = { \bar "||" \break }

\book {
  \bookOutputSuffix "single"
  \score {
%    \articulate
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
               \RehearsalTrack
            }
            \new Voice {
              \TempoTrack
              \TempoTrack
              \TempoTrack
              \TempoTrack
            }
            \new NullVoice = "aligner" { \aligner \aligner \aligner \aligner }
            \new Voice = "women" \partCombine { \global \soprano \soprano \soprano \soprano \bar "|." }
                                               { \global \alto \nl \alto \nl \alto \nl \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                              \wordsFour  \chorus
                                            }
%            \new Lyrics \lyricsto "aligner" \wordsMidi
          >>
                                  % Joint tenor/bass staff
          \new Staff <<
            \set Staff.soloText   = #""
            \set Staff.soloIIText = #""
            \set Staff.aDueText   = #""
            \clef "bass"
            \new Voice = "men" \partCombine { \global \tenor \tenor \tenor \tenor }
                                            { \global \bass \bass \bass \bass }
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
              \TempoTrack
              \TempoTrack
              \TempoTrack
              \TempoTrack
            }
            \new NullVoice = "aligner" { \aligner \aligner \aligner \aligner }
            \new Voice = "women" \partCombine { \global \soprano \soprano \soprano \soprano \bar "|." }
                                               { \global \alto \nl \alto \nl \alto \nl \alto }
            \new Lyrics \lyricsto "aligner" \wordsMidi
          >>
                                  % Joint tenor/bass staff
          \new Staff <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \tenor \tenor \tenor \tenor }
                                            { \global \bass \bass \bass \bass }
          >>
        >>
      >>
    >>
    \midi {}
  }
}
