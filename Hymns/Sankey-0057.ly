\version "2.22.0"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Safe in the Arms of Jesus."
  subtitle    = "Sankey No. 57"
  subsubtitle = "Sankey 880 No. 25"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "W. H. Doane"
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Fanny J. Crosby"
  meter       = "7.6"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

#(set-global-staff-size 17)

global = {
  \key g \major
  \time 4/4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
% \mark \markup { \circle "1a" }
  \mark \markup { \box "A" } s1*4 s2
  \mark \markup { \box "B" } s2 s1*5
  \mark \markup { \box "C" } s1*4 s2
  \mark \markup { \box "D" } s2 s1*4
  \mark \markup { \box "E" } s1*5
}

TempoTrack = {
  \tempo 4=120
  s1*6
  s4 \tempo 4=100 s2.
  s1
  \tempo 4=120
  s1*14
  s4 \tempo 4=100 s2.
  s1
}

soprano = \relative {
  b'4 a8. g16 d4 g
  b4.(c8) b2
  d4 e8. d16 b4 g
  a2. r4
  b4 a8. g16 \bar "|" \break \partial 2 d4 g
  b4.(c8) d2 % B
  d8(c) b^\markup\bold\italic rit. a g4 fis
  g2. r4
  a4 a8. b16 a4 a
  a2 d \break
  cis4 cis8. cis16 b4 a % C
  a2(d4) r
  a4 a8. b16 a4 d
  d2 b
  a4 cis8. d16 \bar "|" \break \partial 2 e4 cis
  d2.(c4) \bar "||" % D
  b4^\markup\smallCaps Chorus.  a8. g16 d4 g
  b4.(c8) b2
  d4 e8. d16 b4 g
  a2. r4 % E
  b4 a8. g16 d4 g
  b4.(c8) d2
  d8(c) b^\markup\bold\italic rit. a g4 fis
  g2. r4
}

alto = \relative {
  d'4 d8. d16 d4 d
  g2 g
  g4 8. 16 4 4
  fis2. r4
  d4 8. 16 4 4
  g2 f % B
  e4 8 8 d4 d
  d2. r4
  fis4 8. g16 fis4 fis
  fis2 fis
  e4 g8. 16 4 4 % C
  fis2. r4
  fis4 8. g16 fis4 fis
  g2 g
  fis4 e8. fis16 g4 e
  fis4(g a2) % D
  d,4 8. 16 4 4
  g2 g
  g4 8. 16 4 4
  fis2. r4 % E
  d4 8. 16 4 4
  g2 f
  e4 8 8 d4 d
  d2. r4
}

tenor = \relative {
  d'4 c8. b16 b4 b
  d4.(e8) d2
  b4 c8. b16 d4 d
  d2. r4
  d4 c8. b16 b4 b
  d2 g, % B
  a4 d8 c b4 a8(c)
  b2. r4
  d4 8. 16 4 4
  d2 a
  a4 e'8. 16 d4 cis % C
  d2(a4) r
  d4 8. 16 4 c
  b2 d
  d4 a8. 16 4 4
  a2.(d4) % D
  d4 c8. b16 4 4
  d4.(e8) d2
  b4 c8. b16 d4 d
  d2. r4 % E
  d4 c8. b16 4 4
  d2 g,
  a4 d8 c b4 a8(c)
  b2. r4
}

bass= \relative {
  g4 8. 16 4 4
  g2 g
  g4 8. 16 4 b,
  d2. r4
  g4 8. 16 4 4
  g2 b, % B
  c4 c8 c d4 d
  g,2. r4
  d'4 8. 16 4 4
  g2 g
  a4 8. 16 4 4 % C
  d,2. r4
  d4 8. 16 4 4
  g2 g
  a4 8. 16 a,4 a
  d4(e fis2) % D
  g4 8. 16 4 4
  g2 g
  g4 8. 16 4 b,
  d2. r4 % E
  g4 8. 16 4 4
  g2 b,
  c4 8 8 d4 d
  g,2. r4
}

chorus = \lyricmode {
  Safe in the arms of Je -- sus,
  Safe on His gen -- tle breast,
  There by His love o'er -- sha -- ded,
  Sweeet -- ly my soul shall rest.
}

wordsOne = \lyricmode {
  \set stanza = "1."
  Safe in the arms of Je -- sus,
  Safe on His gen -- tle breast,
  There by His love o'er -- sha -- ded,
  Sweet -- ly my soul shall rest.
  Hark! 'tis the voice of an -- gels
  Borne in a song to me.
  O -- ver the fields of glo -- ry,
  O -- ver the jas -- per sea. __
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Safe in the arms of Je -- sus,
  Safe from cor -- ro -- ding care,
  Safe from the world's temp -- ta -- tions,
  Sin can -- not harm me there.
  Free from the blight of sor -- row,
  Free from my doubts and fears;
  On -- ly a few more tri -- als,
  On -- ly a few more tears. __
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Je -- sus, my heart's dear re -- fuge,
  Je -- sus has died for me;
  Firm on the Rock of A -- ges
  Ev -- er my trust shall be.
  Here let me wait with pa -- tience,
  Wait till the night is o'er—
  Wait till I see the morn -- ing
  Break on the gold -- en shore. __
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "\nSafe " "in " "the " "arms " "of " Je "sus, "
  "\nSafe " "on " "His " gen "tle " "breast, "
  "\nThere " "by " "His " "love " o'er sha "ded, "
  "\nSweet" "ly " "my " "soul " "shall " "rest. "
  "\nHark! " "'tis " "the " "voice " "of " an "gels "
  "\nBorne " "in " "a " "song " "to " "me. "
  "\nO" "ver " "the " "fields " "of " glo "ry, "
  "\nO" "ver " "the " jas "per " "sea. " 
  "\nSafe " "in " "the " "arms " "of " Je "sus, "
  "\nSafe " "on " "His " gen "tle " "breast, "
  "\nThere " "by " "His " "love " o'er sha "ded, "
  "\nSweeet" "ly " "my " "soul " "shall " "rest. "

  \set stanza = "2."
  "\nSafe " "in " "the " "arms " "of " Je "sus, "
  "\nSafe " "from " cor ro "ding " "care, "
  "\nSafe " "from " "the " "world's " temp ta "tions, "
  "\nSin " can "not " "harm " "me " "there. "
  "\nFree " "from " "the " "blight " "of " sor "row, "
  "\nFree " "from " "my " "doubts " "and " "fears; "
  "\nOn" "ly " "a " "few " "more " tri "als, "
  "\nOn" "ly " "a " "few " "more " "tears. " 
  "\nSafe " "in " "the " "arms " "of " Je "sus, "
  "\nSafe " "on " "His " gen "tle " "breast, "
  "\nThere " "by " "His " "love " o'er sha "ded, "
  "\nSweeet" "ly " "my " "soul " "shall " "rest. "

  \set stanza = "3."
  "\nJe" "sus, " "my " "heart's " "dear " re "fuge, "
  "\nJe" "sus " "has " "died " "for " "me; "
  "\nFirm " "on " "the " "Rock " "of " A "ges "
  "\nEv" "er " "my " "trust " "shall " "be. "
  "\nHere " "let " "me " "wait " "with " pa "tience, "
  "\nWait " "till " "the " "night " "is " "o'er— "
  "\nWait " "till " "I " "see " "the " morn "ing "
  "\nBreak " "on " "the " gold "en " "shore. " 
  "\nSafe " "in " "the " "arms " "of " Je "sus, "
  "\nSafe " "on " "His " gen "tle " "breast, "
  "\nThere " "by " "His " "love " o'er sha "ded, "
  "\nSweeet" "ly " "my " "soul " "shall " "rest. "
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
