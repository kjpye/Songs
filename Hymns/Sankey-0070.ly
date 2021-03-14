\version "2.22.0"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Our Saviour King"
  subtitle    = "Sankey No. 70"
  subsubtitle = "N. H. No. 54"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "James McGranahan."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "J. J. Johnston"
  meter       = \markup\smallCaps "l.m."

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

#(set-global-staff-size 19)

global = {
  \key g \major
  \time 3/4
  \partial 4.
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
% \mark \markup { \circle "1a" }
  \mark \markup { \box "A" } s4. s2.*3 s4.
  \mark \markup { \box "B" } s4. s2.*3 s4.
  \mark \markup { \box "C" } s4. s2.*3 s4.
  \mark \markup { \box "D" } s4. s1 s1 s2. s4.
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

soprano = \relative {
  d'8\omit\mp d g
  b4. 8 a g
  d4. 8 g b
  d4. 8 g, b
  a4. \bar "|" \break \partial 4. a8 a b
  c4. fis,8 g a % B
  b4. 8 8 d
  c8 a g4 fis
  g4. \bar "|" \break \partial 4. d'8^\markup\smallCaps Chorus. d d
  d4. 8 cis d % C
  b4. 8 8 8
  b4. 8 ais b
  g4. \bar "|" \break \partial 4. d8 e g
  \time 4/4 c8. 16 4. e,8 d g % D
  b8. 16 4. d8^\f d d \time 3/4
  d8. c16 b4 a
  g4.
}

alto = \relative {
  d'8 d d
  g4. 8 d d
  d4. d8 d g
  g4. 8 8 8
  fis4. 8 8 8
  fis4. d8 d fis % B
  g4. 8 8 8
  e8 e d4 d
  d4. g8 g g
  g4. g8 g g % C
  g4. 8 8 8
  g4. 8 8 8
  d4. b8 c e
  \time 4/4 e8. 16 4. c8 b d
  g8. 16 4. f8^\f f f \time 3/4
  e8. 16 d4 d
  d4.
}

tenor = \relative {
  b8 b b
  d4. 8 c b
  b4. 8 8 d
  b4. 8 d d
  d4. 8 c b
  a4. 8 d d % B
  d4. 8 8 g,
  g8 a b4 c
  b4. 8 8 8 %
  b4. 8 ais b % C
  d4. 8 8 8
  d4.  8 cis d
  b4. r8 r c
  \time 4/4 a8. 16 4. r8 r b % D
  d8. 16 4. b8\omit\f b g
  g8. 16 4 fis8(c')
  b4.
}

bass= \relative {
  g8 g g
  g4. g,8 g g
  g4. g'8 g g
  g4. 8 b g
  d4. 8 8 8
  d4. c8 b d % B
  g4. 8 8 b,
  c8 c d4 d
  g,4. g'8 g g
  g4. 8 8 8 % C
  g4. g,8 g g
  g4. 8 8 8
  g4.
  r8 r c
  \time 4/4 c8. 16 4. r8 r g' % D
  g8. 16 4. 8\omit\f 8 b, \time 3/4
  c8. 16 d4 d
  g,4.
}

chorus = \lyricmode {
  His mer -- cy flows, and end -- less stream,
  To all e -- ter -- ni -- ty the same;
  To all e -- ter -- ni -- ty, to all e -- ter -- ni -- ty,
  To all e -- ter -- ni -- ty the same.
}

wordsOne = \lyricmode {
  \set stanza = "1."
  He lives and loves, our Sa -- viour King;
  With joy -- ful lips your tri -- bute bring;
  Re -- peat His praise, ex -- alt His Name,
  Whose graec and truth are still the same.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  His hand is strong, His word en -- dures,
  His sac -- ri -- fice our peace se -- cures;
  From sin and death He doth re -- deem,
  His change -- less love be all our theme.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Each day re -- veals His con -- stant love,
  With "\"Mer" -- cies "new\"" from heav'n a -- bove;
  Thro' a -- ges past His word has stood;
  Oh, taste and see that He is good!
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "\nHe " "lives " "and " "loves, " "our " Sa "viour " "King; "
  "\nWith " joy "ful " "lips " "your " tri "bute " "bring; "
  "\nRe" "peat " "His " "praise, " ex "alt " "His " "Name, "
  "\nWhose " "graec " "and " "truth " "are " "still " "the " "same. "
  "\nHis " mer "cy " "flows, " "and " end "less " "stream, "
  "\nTo " "all " e ter ni "ty " "the " "same; "
  "\nTo " "all " e ter ni "ty, " "to " "all " e ter ni "ty, "
  "\nTo " "all " e ter ni "ty " "the " "same. "

  \set stanza = "2."
  "\nHis " "hand " "is " "strong, " "His " "word " en "dures, "
  "\nHis " sac ri "fice " "our " "peace " se "cures; "
  "\nFrom " "sin " "and " "death " "He " "doth " re "deem, "
  "\nHis " change "less " "love " "be " "all " "our " "theme. "
  "\nHis " mer "cy " "flows, " "and " end "less " "stream, "
  "\nTo " "all " e ter ni "ty " "the " "same; "
  "\nTo " "all " e ter ni "ty, " "to " "all " e ter ni "ty, "
  "\nTo " "all " e ter ni "ty " "the " "same. "

  \set stanza = "3."
  "\nEach " "day " re "veals " "His " con "stant " "love, "
  "\nWith " "\"Mer" "cies " "new\" " "from " "heav'n " a "bove; "
  "\nThro' " a "ges " "past " "His " "word " "has " "stood; "
  "\nOh, " "taste " "and " "see " "that " "He " "is " "good! "
  "\nHis " mer "cy " "flows, " "and " end "less " "stream, "
  "\nTo " "all " e ter ni "ty " "the " "same; "
  "\nTo " "all " e ter ni "ty, " "to " "all " e ter ni "ty, "
  "\nTo " "all " e ter ni "ty " "the " "same. "
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
            \new Voice {
              \TempoTrack
              \TempoTrack
              \TempoTrack
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
