\version "2.20.2"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "There is no Love like the Love of Jesus"
  subtitle    = "Sankey No. 42"
  subsubtitle = "C. C. 125"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "T. E. Perkins"
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = "W. E. Littlewood"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key aes \major
  \time 4/4
  \tempo 4=120
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
% \mark \markup { \circle "1a" }
  \mark \markup { \box "A" } s4 s1*3 s2.
  \mark \markup { \box "B" } s4 s1*4
  \mark \markup { \box "C" } s1*4
  \mark \markup { \box "D" } s1*3 s2.
}

soprano = \relative {
  \global
  ees'4
  c'4 c c bes8 c
  des4 c bes aes
  bes4 bes8 bes bes4 aes
  g2. \bar "|" \break ees4
  c'4 \slurDotted c8(c) \slurSolid c4 bes8 c % B
  des4 c bes aes8 f
  ees2 aes4 bes
  aes2. r4 \bar "||" \break
  des4^\markup \smallCaps Chorus. f, aes2 % C
  c4 f, aes2
  bes4 bes8 bes bes4 aes
  g2. ees4 \break
  c'4 c8 c c4 bes8 c % D
  des4 c bes aes8 f
  ees2 aes4 bes
  aes2.
}

dynamicsWomen = {
  \override DynamicTextSpanner.style = #'none
}

alto = \relative {
  \global
  c'4
  ees4 ees ees des8 ees
  f4 ees des c
  ees4 ees8 ees d4 f
  ees2. ees4
  ees4 \slurDashed ees8 ees ees4 des8 ees % B
  f4 ees des c8 des
  c2 c4 des
  ces2. r4
  f4 des f2 % C
  ees4 c c2
  ees4 ees8 ees d4 f
  ees2. ees4
  ees4 ees8 ees ees4 des8 ees % D
  f4 ees des c8 des
  c2 c4 des
  c2.
}

tenor = \relative {
  \global
  aes4
  aes aes aes aes8 aes
  aes4 ees f8 g aes4
  g4 g8 g f4 bes
  bes2. g4
  aes4 \slurDashed aes8 aes aes4 aes8 aes % B
  aes4 ees f8 g aes aes
  aes2 aes4 g
  aes2. r4
  aes4 aes aes2 % C
  aes4 aes aes2
  g4 g8 g f4 bes
  bes2. g4
  aes4 aes8 aes aes4 aes8 aes
  aes4 ees f8 g aes aes
  aes2 aes4 g
  aes2.
}

dynamicsMen = {
  \override DynamicTextSpanner.style = #'none
}

bass= \relative {
  \global
  aes,4
  aes4 aes aes aes8 aes
  aes4 aes aes aes
  ees'4 ees8 ees bes4 bes
  ees2. ees4
  aes,4 \slurDashed aes8 aes aes4 aes8 aes % B
  aes4 aes aes aes8 des
  ees2 ees4 ees
  aes,2. r4
  des4 des des2 % C
  aes4 aes aes2
  ees'4 ees8 ees bes4 bes
  ees2. ees4
  aes,4 aes8 aes aes4 aes8 aes % D
  aes4 aes aes aes8 des
  ees2 ees4 ees
  aes,2.
}

chorus = \lyricmode {
  Je -- sus' love, pre -- cious love,
  Bound -- less, and pure, and free;
  Oh, turn to that love, wea -- ry, wan -- d'ring soul,
  Je -- sus plead -- eth for thee.
}

wordsOne = \lyricmode {
  \set stanza = "1."
  There is no love like the love of Je -- sus,
  Nev -- er to fade or fail,
  \set ignoreMelismata = ##t
  Till in -- to the fold of the peace of God
  \unset ignoreMelismata
  He has ga -- ther'd us all.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  There is no heart like the heart of Je -- sus,
  Fill'd with a ten -- der love;
  No throb nor throe that our hearts can know,
  But He feels it a -- bove.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Oh, let us bark to the voice of Je -- sus!
  Oh, may we nev -- er roam,
  Till safe we rest on His lov -- ing breast
  In the dear heav'n -- ly home.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "There " "is " "no " "love " "like " "the " "love " "of " Je "sus, "
  "\nNev" "er " "to " "fade " "or " "fail, "
  \set ignoreMelismata = ##t
  "\nTill " in "to " "the " "fold " "of " "the " "peace " "of " "God "
  \unset ignoreMelismata
  "\nHe " "has " ga "ther'd " "us " "all. "
  "\nJe" "sus' " "love, " pre "cious " "love, "
  "\nBound" "less, " "and " "pure, " "and " "free; "
  "\nOh, " "turn " "to " "that " "love, " wea "ry, " wan "d'ring " "soul, "
  "\nJe" "sus " plead "eth " "for " "thee. "

  \set stanza = "2."
  "\nThere " "is " "no " "heart " "like " "the " "heart " "of " Je "sus, "
  "\nFill'd " "with " "a " ten "der " "love; "
  "\nNo " "throb " "nor " "throe " "that " "our " "hearts " "can " "know, "
  "\nBut " "He " "feels " "it " a "bove. "
  "\nJe" "sus' " "love, " pre "cious " "love, "
  "\nBound" "less, " "and " "pure, " "and " "free; "
  "\nOh, " "turn " "to " "that " "love, " wea "ry, " wan "d'ring " "soul, "
  "\nJe" "sus " plead "eth " "for " "thee. "

  \set stanza = "3."
  "\nOh, " "let " "us " "bark " "to " "the " "voice " "of " Je "sus! "
  "\nOh, " "may " "we " nev "er " "roam, "
  "\nTill " "safe " "we " "rest " "on " "His " lov "ing " "breast "
  "\nIn " "the " "dear " heav'n "ly " "home. "
  "\nJe" "sus' " "love, " pre "cious " "love, "
  "\nBound" "less, " "and " "pure, " "and " "free; "
  "\nOh, " "turn " "to " "that " "love, " wea "ry, " wan "d'ring " "soul, "
  "\nJe" "sus " plead "eth " "for " "thee. "
}
  
\book {
  \bookOutputSuffix "repeat"
  \score {
    \context GrandStaff <<
      <<
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Dynamics \dynamicsWomen
          \new Staff <<
            \set Staff.soloText   = #""
            \set Staff.soloIIText = #""
            \set Staff.aDueText   = #""
            \new Voice \RehearsalTrack
            \new NullVoice = "aligner" \soprano
            \new Voice = "women" \partCombine { \soprano \bar "|." } \alto
            \new Lyrics \lyricsto "aligner" { \wordsOne \chorus }
            \new Lyrics \lyricsto "aligner"   \wordsTwo
            \new Lyrics \lyricsto "aligner"   \wordsThree
          >>
                                  % Joint tenor/bass staff
          \new Dynamics \dynamicsMen
          \new Staff <<
            \set Staff.soloText   = #""
            \set Staff.soloIIText = #""
            \set Staff.aDueText   = #""
            \clef "bass"
            \new Voice = "men" \partCombine \tenor \bass
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
          \new Dynamics \dynamicsWomen
          \new Staff <<
            \set Staff.soloText   = #""
            \set Staff.soloIIText = #""
            \set Staff.aDueText   = #""
            \new Voice {
               \RehearsalTrack
               \RehearsalTrack
               \RehearsalTrack
            }
            \new NullVoice = "aligner" { \soprano \soprano \soprano }
            \new Voice = "women" \partCombine { \soprano \soprano \soprano \bar "|." }
                                               { \alto \bar "||" \break \alto \bar "||" \break \alto }
            \new Lyrics \lyricsto "aligner" {
                                              \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                            }
%            \new Lyrics \lyricsto "aligner" \wordsMidi
          >>
                                  % Joint tenor/bass staff
          \new Dynamics \dynamicsMen
          \new Staff <<
            \set Staff.soloText   = #""
            \set Staff.soloIIText = #""
            \set Staff.aDueText   = #""
            \clef "bass"
            \new Voice = "men" \partCombine { \tenor \tenor \tenor }
                                            { \bass \bass \bass }
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
          \new Dynamics \dynamicsWomen
          \new Staff <<
            \set Staff.soloText   = #""
            \set Staff.soloIIText = #""
            \set Staff.aDueText   = #""
            \new Voice {
               \RehearsalTrack
               \RehearsalTrack
               \RehearsalTrack
            }
            \new NullVoice = "aligner" { \soprano \soprano \soprano }
            \new Voice = "women" \partCombine { \soprano \soprano \soprano \bar "|." }
                                               { \alto \bar "||" \break \alto \bar "||" \break \alto }
            \new Lyrics \lyricsto "aligner" \wordsMidi
          >>
                                  % Joint tenor/bass staff
          \new Dynamics \dynamicsMen
          \new Staff <<
            \set Staff.soloText   = #""
            \set Staff.soloIIText = #""
            \set Staff.aDueText   = #""
            \clef "bass"
            \new Voice = "men" \partCombine { \tenor \tenor \tenor }
                                            { \bass \bass \bass }
          >>
        >>
      >>
    >>
    \midi {}
  }
}
