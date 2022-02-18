\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Verily! Verily!"
  subtitle    = "Sankey No. 359"
  subsubtitle = "Sankey 880 No. 299"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "james McGranahan."
%  arranger    = "arranger"
%  opus        = "opus"

%  poet        = \markup\smallCaps ""
  meter       = \markup\smallCaps "10.6."
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
  \mark \markup { \box "A" }    s1*2 s2
  \mark \markup { \box "B" } s2 s1*2
  \mark \markup { \box "C" }    s1*4
  \mark \markup { \box "D" }    s1*3
  \mark \markup { \box "E" }    s1*4
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  g'4 8. a16 g8 fis e d
  g4 a b2
  a4 8 b \bar "|" \break a g fis g
  a4 b c2 % B
  \tag #'dash       {b4 \slurDashed d8.(16) \slurSolid c8 b a g}
  \tag #'(v1 v2 v4) {b4             d8. 16             c8 b a g}
  \tag #'v3         {b4             d4                 c8 b a g}
  fis4 e c'2 % C
  e4 d8 c b4 a
  g1
  b8.^\markup\smallCaps Chorus. c16 d4 b8. c16 d4
  e8 d c b c2 % D
  a8. b16 c4 a8. b16 c4
  d8 c b a b2
  b4 d8. 16 c8 b a g % E
  fis4 e c'2
  e4 d8 c b4 a
  g1
}

alto = \relative {
  \autoBeamOff
  d'4 8. 16 8 8 c b
  d4 4 2
  d4 8 8 8 8 8 8
  d4 4 2 % B
  \tag #'dash       {d4 \slurDashed f8.(16) \slurSolid e8 d c b}
  \tag #'(v1 v2 v4) {d4             f8. 16             e8 d c b}
  \tag #'v3         {d4             f4                 e8 d c b}
  c4 c e2 % C
  g4 8 e d4 4
  d1
  g8. a16 b4 g8. a16 b4
  c8 b a g a2 % D
  fis8. g16 a4 fis8. g16 a4
  g8 fis g d8 2
  d4 f8. 16 e8 d d e % E
  c4 4 e2
  g4 8 e d4 4
  d1
}

tenor = \relative {
  \autoBeamOff
  b4 8. c16 b8 a g g
  g4 fis g2
  fis4 8 g c b a g
  fis4 g a2 % B
  \tag #'dash       {g4 \slurDashed b8.(16) \slurSolid g8 8 fis g}
  \tag #'(v1 v2 v4) {g4             b8. 16             g8 8 fis g}
  \tag #'v3         {g4             b4                 g8 8 fis g}
  g4 4 2 % C
  g4 8 8 4 c
  b1
  g8. 16 4 8. 16 4
  fis8 g fis g fis2 % D
  d'8. 16 4 8. 16 4
  b8 a g fis g2
  g4 b8. 16 a8 g fis g % E
  g4 4 2
  g4 8 8 4 c
  b1
}

bass = \relative {
  \autoBeamOff
  g,4 8. 16 8 8 8 8
  b4 d g2
  d4 8 8 8 8 8 8
  d4 g d2 % B
  \tag #'dash       {g4 \slurDashed 8.(16) \slurSolid 8 8 d e}
  \tag #'(v1 v2 v4) {g4             8. 16             8 8 d e}
  \tag #'v3         {g4             4                 8 8 d e}
  c4 4 2 % C
  c4 b8 c d4 4
  g,1
  g'8. 16 4 8. 16 4
  d8 8 8 8 2 % D
  d8. 16 4 8. 16 4
  d8 8 8 8 g,2
  g4 8. 16 8 8 a b % E
  c4 4 2
  c4 b8 c d4 4
  g,1
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  "\"Ver" -- i -- ly, ver -- i -- ly, I say un -- to "you;\""
  "\"Ver" -- i -- ly, ver -- i -- "ly,\"" mes -- sage e -- ver new!
  "\"He" that be -- liev -- eth on the "Son\"—" 'tis true!—
  \markup\italic Hath e -- ver -- last -- ing "life!\""
}

verses = 4

wordsOne = \lyricmode {
  \set stanza = "1."
  Oh, what a Sa -- viour that He died for me!
  From con -- dem -- na -- tion He hath made me free;
  "\"He" \nom that be -- liev -- eth \yesm on the "Son\"" saith He,
  \markup\italic "\"Hath" e -- ver -- last -- ing "life.\""
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  All my in -- i -- qui -- ties on Him were laid,
  All my in -- debt -- ed -- ness by Him was paid;
  All \nom who be -- lieve \yesm on Him, the Lord hath said,
  \markup\italic "\"Have" e -- ver -- last -- ing "life'\""
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Tho' poor and nee -- dy I can trust my Lord,
  Tho' weak and sin -- ful I be -- lieve His word;
  O glad mes -- sage! ev -- 'ry child of God,
  \markup\italic "\"Hath" e -- ver -- last -- ing "life.\""
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Tho' all un -- wor -- thy, yet I will not doubt;
  For him that com -- eth He will not cast out;
  "\"He" \nom that be -- liev -- "eth,\"" \yesm oh the good news shout!
  \markup\smallCaps "\"Hath" e -- ver -- last -- ing "\"life.\""
}
  
wordsSingle = \lyricmode {
  \set stanza = "1."
  Oh, what a Sa -- viour that He died for me!
  From con -- dem -- na -- tion He hath made me free;
  "\"He" that be -- liev -- eth on the "Son\"" saith He,
  \markup\italic "\"Hath" e -- ver -- last -- ing "life.\""
  "\"Ver" -- i -- ly, ver -- i -- ly, I say un -- to "you;\""
  "\"Ver" -- i -- ly, ver -- i -- "ly,\"" mes -- sage e -- ver new!
  "\"He" that be -- liev -- eth on the "Son\"—" 'tis true!—
  \markup\italic Hath e -- ver -- last -- ing "life!\""

  \set stanza = "2."
  All my in -- i -- qui -- ties on Him were laid,
  All my in -- debt -- ed -- ness by Him was paid;
  All who be -- lieve on Him, the Lord hath said,
  \markup\italic "\"Have" e -- ver -- last -- ing "life'\""
  "\"Ver" -- i -- ly, ver -- i -- ly, I say un -- to "you;\""
  "\"Ver" -- i -- ly, ver -- i -- "ly,\"" mes -- sage e -- ver new!
  "\"He" that be -- liev -- eth on the "Son\"—" 'tis true!—
  \markup\italic Hath e -- ver -- last -- ing "life!\""

  \set stanza = "3."
  Tho' poor and nee -- dy I can trust my Lord,
  Tho' weak and sin -- ful I be -- lieve His word;
  O glad mes -- sage! ev -- 'ry child of God,
  \markup\italic "\"Hath" e -- ver -- last -- ing "life.\""
  "\"Ver" -- i -- ly, ver -- i -- ly, I say un -- to "you;\""
  "\"Ver" -- i -- ly, ver -- i -- "ly,\"" mes -- sage e -- ver new!
  "\"He" that be -- liev -- eth on the "Son\"—" 'tis true!—
  \markup\italic Hath e -- ver -- last -- ing "life!\""

  \set stanza = "4."
  Tho' all un -- wor -- thy, yet I will not doubt;
  For him that com -- eth He will not cast out;
  "\"He" that be -- liev -- "eth,\"" oh the good news shout!
  \markup\smallCaps "\"Hath" e -- ver -- last -- ing "\"life.\""
  "\"Ver" -- i -- ly, ver -- i -- ly, I say un -- to "you;\""
  "\"Ver" -- i -- ly, ver -- i -- "ly,\"" mes -- sage e -- ver new!
  "\"He" that be -- liev -- eth on the "Son\"—" 'tis true!—
  \markup\italic Hath e -- ver -- last -- ing "life!\""
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  Oh, what a Sa -- viour that He died for me!
  From con -- dem -- na -- tion He hath made me free;
  "\"He" that be -- liev -- eth on the "Son\"" saith He,
  "\"Hath" e -- ver -- last -- ing "life.\""
  "\"Ver" -- i -- ly, ver -- i -- ly, I say un -- to "you;\""
  "\"Ver" -- i -- ly, ver -- i -- "ly,\"" mes -- sage e -- ver new!
  "\"He" that be -- liev -- eth on the "Son\"—" 'tis true!—
  Hath e -- ver -- last -- ing "life!\""

  \set stanza = "2."
  All my in -- i -- qui -- ties on Him were laid,
  All my in -- debt -- ed -- ness by Him was paid;
  All who be -- lieve on Him, the Lord hath said,
  "\"Have" e -- ver -- last -- ing "life'\""
  "\"Ver" -- i -- ly, ver -- i -- ly, I say un -- to "you;\""
  "\"Ver" -- i -- ly, ver -- i -- "ly,\"" mes -- sage e -- ver new!
  "\"He" that be -- liev -- eth on the "Son\"—" 'tis true!—
  Hath e -- ver -- last -- ing "life!\""

  \set stanza = "3."
  Tho' poor and nee -- dy I can trust my Lord,
  Tho' weak and sin -- ful I be -- lieve His word;
  O glad mes -- sage! ev -- 'ry child of God,
  "\"Hath" e -- ver -- last -- ing "life.\""
  "\"Ver" -- i -- ly, ver -- i -- ly, I say un -- to "you;\""
  "\"Ver" -- i -- ly, ver -- i -- "ly,\"" mes -- sage e -- ver new!
  "\"He" that be -- liev -- eth on the "Son\"—" 'tis true!—
  Hath e -- ver -- last -- ing "life!\""

  \set stanza = "4."
  Tho' all un -- wor -- thy, yet I will not doubt;
  For him that com -- eth He will not cast out;
  "\"He" that be -- liev -- "eth,\"" oh the good news shout!
  "\"Hath" e -- ver -- last -- ing "\"life.\""
  "\"Ver" -- i -- ly, ver -- i -- ly, I say un -- to "you;\""
  "\"Ver" -- i -- ly, ver -- i -- "ly,\"" mes -- sage e -- ver new!
  "\"He" that be -- liev -- eth on the "Son\"—" 'tis true!—
  Hath e -- ver -- last -- ing "life!\""
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
            \new Voice { \global
                         \keepWithTag #'v1 \soprano
                         \keepWithTag #'v2 \soprano
                         \keepWithTag #'v3 \soprano
                         \keepWithTag #'v4 \soprano
                         \bar "|." }
            \addlyrics \wordsMidi
          >>
                                % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global
                         \keepWithTag #'v1 \alto \nl
                         \keepWithTag #'v2 \alto \nl
                         \keepWithTag #'v3 \alto \nl
                         \keepWithTag #'v4 \alto \nl
                         \bar "|." }
          >>
                                % Tenor staff
          \new Staff = tenor
          <<
            \clef "treble_8"
            \new Voice { \global
                         \keepWithTag #'v1 \tenor
                         \keepWithTag #'v2 \tenor
                         \keepWithTag #'v3 \tenor
                         \keepWithTag #'v4 \tenor
                       }
          >>
                                % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Voice { \global
                         \keepWithTag #'v1 \bass
                         \keepWithTag #'v2 \bass
                         \keepWithTag #'v3 \bass
                         \keepWithTag #'v4 \bass
                       }
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
            \new NullVoice = "aligner" \keepWithTag #'dash \soprano
            \new Voice = "women" \partCombine { \global \keepWithTag #'dash \soprano \bar "|." }
            { \global \keepWithTag #'dash \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne \chorus }
            \new Lyrics \lyricsto "aligner"   \wordsTwo
            \new Lyrics \lyricsto "aligner"   \wordsThree
            \new Lyrics \lyricsto "aligner"   \wordsFour
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \keepWithTag #'dash \tenor }
            { \global \keepWithTag #'dash \bass }
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
            \new NullVoice = "aligner" {
              \keepWithTag #'v1 \soprano
              \keepWithTag #'v2 \soprano
              \keepWithTag #'v3 \soprano
              \keepWithTag #'v4 \soprano
            }
            \new Voice = "women" \partCombine { \global
                                                \keepWithTag #'v1 \soprano
                                                \keepWithTag #'v2 \soprano
                                                \keepWithTag #'v3 \soprano
                                                \keepWithTag #'v4 \soprano
                                                \bar "|." }
                                              { \global
                                                \keepWithTag #'v1 \alto \nl
                                                \keepWithTag #'v2 \alto \nl
                                                \keepWithTag #'v3 \alto \nl
                                                \keepWithTag #'v4 \alto \nl
                                                \bar "|." }
            \new Lyrics \lyricsto "aligner" \wordsSingle
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global
                                              \keepWithTag #'v1 \tenor
                                              \keepWithTag #'v2 \tenor
                                              \keepWithTag #'v3 \tenor
                                              \keepWithTag #'v4 \tenor
                                            }
                                            { \global
                                              \keepWithTag #'v1 \bass
                                              \keepWithTag #'v2 \bass
                                              \keepWithTag #'v3 \bass
                                              \keepWithTag #'v4 \bass
                                            }
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
            \new NullVoice = "aligner" {
              \keepWithTag #'v1 \soprano
              \keepWithTag #'v2 \soprano
              \keepWithTag #'v3 \soprano
              \keepWithTag #'v4 \soprano
            }
            \new Voice = "women" \partCombine { \global
                                                \keepWithTag #'v1 \soprano
                                                \keepWithTag #'v2 \soprano
                                                \keepWithTag #'v3 \soprano
                                                \keepWithTag #'v4 \soprano
                                                \bar "|." }
                                              { \global
                                                \keepWithTag #'v1 \alto \nl
                                                \keepWithTag #'v2 \alto \nl
                                                \keepWithTag #'v3 \alto \nl
                                                \keepWithTag #'v4 \alto \nl
                                                \bar "|." }
            \new Lyrics \lyricsto "aligner" \wordsSingle
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global
                                              \keepWithTag #'v1 \tenor
                                              \keepWithTag #'v2 \tenor
                                              \keepWithTag #'v3 \tenor
                                              \keepWithTag #'v4 \tenor
                                            }
                                            { \global
                                              \keepWithTag #'v1 \bass
                                              \keepWithTag #'v2 \bass
                                              \keepWithTag #'v3 \bass
                                              \keepWithTag #'v4 \bass
                                            }
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
