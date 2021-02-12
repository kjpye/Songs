\version "2.22.0"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Only Jesus Feels and Knows"
  subtitle    = "Sankey No. 51"
  subsubtitle = "Sankey 880 No. 218"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup \smallCaps "Hubert P. Main."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup \smallCaps "Fanny J. Crosby"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key aes \major
  \time 3/8
  \tempo 4=120
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
% \mark \markup { \circle "1a" }
  \mark \markup { \box "A" } s4.*8
  \mark \markup { \box "B" } s4.*8
  \mark \markup { \box "C" } s4.*8
  \mark \markup { \box "D" } s4.*8
}

soprano = \relative {
  c''4 bes8
  bes8(aes) f
  aes4 f8
  ees4.
  ees4 ees8
  ees8(f) g
  aes4 c8
  bes4. \break
  c4 c8 % B
  des8(c) bes
  bes8(aes) f
  aes4.
  ees4 aes8
  aes4 c8
  bes4.
  aes4. \bar "||" \break
  c4^\markup \smallCaps Chorus. c8 % C
  bes8(c) des
  c4 bes8
  aes4.
  des4 des8
  des4 des8
  c8(bes) aes
  bes4. \break
  c4 c8 % D
  des8(c) bes
  bes8(aes) f
  aes4.
  ees4 aes8
  aes4 c8
  bes4.
  aes4.
}

alto = \relative {
  ees'4 ees8
  ees4 des8
  des4 des8
  c4.
  c4 ees8
  ees8(f) ees
  ees4 ees8
  ees4.
  ees4 ees8 % B
  f8(ees) des
  ees4 des8
  f4.
  ees4 c8
  c4 ees8
  des4.
  c4.
  ees4 ees8 % C
  ees4 ees8
  ees4 des8
  c4.
  f4 f8
  f4 f8
  ees4 ees8
  ees4.
  ees4 ees8 % D
  f8(ees) des
  ees4 des8
  f4.
  ees4 c8
  c4 ees8
  des4.
  c4.
}

tenor = \relative {
  aes4 g8
  aes4 aes8
  aes4 aes8
  aes4.
  aes4 aes8
  g8(aes) bes
  aes4 aes8
  g4.
  aes4 aes8 % B
  aes4 g8
  aes4 aes8
  aes4.
  c4 aes8
  ees4 aes8
  g4. aes4.
  g4 g8 % C
  g8(aes) bes
  aes4 g8
  aes4.
  aes4 aes8
  aes4 aes8
  aes8(g) aes
  g4.
  aes4 aes8 % D
  aes4 aes8
  aes4 aes8
  aes4.
  c4 aes8
  ees4 aes8
  g4.
  aes4.
}

bass= \relative {
  aes,4 bes8
  c4 d8
  f4 des8
  aes4. aes4 c8
  ees4 d8
  c4 aes8
  ees'4.
  aes4 aes8 % B
  aes,4 bes8
  c4 des8
  des4.
  ees4 ees8
  ees4 ees8
  ees4.
  aes4.
  ees4 ees8 % C
  ees4 ees8
  aes4 ees8
  f4.
  des4 des8
  des4 des8
  aes8(bes) c
  ees4.
  aes4 aes8 % D
  aes,4 bes8
  c4 des8
  des4.
  ees4 ees8
  ees4 ees8
  ees4.
  aes,4.
}

chorus = \lyricmode {
  Oh, that Name we love to hear,
  Name a -- bove all o -- thers dear!
  How it calms our ev -- 'ry fear!
  Bless -- ed, bless -- ed Je -- sus!
}

wordsOne = \lyricmode {
  \set stanza = "1."
  On -- ly Je -- sus feels and knows
  All the weight of hu -- man woes;
  Full and free His mer -- cy flows—
  Bless -- ed, Bless -- ed Je -- sus!
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  On -- ly Je -- sus looks with -- in,
  Sees our hearts and all our sin;
  On -- ly He can make us clean;
  Bless -- ed, Bless -- ed Je -- sus!
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  On -- ly Je -- sus ans -- wers prayer,
  Light -- er makes the cross we bear,
  sd us cast on Him our care;
  Bless -- ed, Bless -- ed Je -- sus!
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Safe in Him our souls a -- bide,
  Safe His hand our steps will guide,
  Till we sing be -- yond the tide,
  Bless -- ed, Bless -- ed Je -- sus!
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "\nOn" "ly " Je "sus " "feels " "and " "knows "
  "\nAll " "the " "weight " "of " hu "man " "woes; "
  "\nFull " "and " "free " "His " mer "cy " "flows— "
  "\nBless" "ed, " Bless "ed " Je "sus! "
  "\nOh, " "that " "Name " "we " "love " "to " "hear, "
  "\nName " a "bove " "all " o "thers " "dear! "
  "\nHow " "it " "calms " "our " ev "'ry " "fear! "
  "\nBless" "ed, " bless "ed " Je "sus! "

  \set stanza = "2."
  "\nOn" "ly " Je "sus " "looks " with "in, "
  "\nSees " "our " "hearts " "and " "all " "our " "sin; "
  "\nOn" "ly " "He " "can " "make " "us " "clean; "
  "\nBless" "ed, " Bless "ed " Je "sus! "
  "\nOh, " "that " "Name " "we " "love " "to " "hear, "
  "\nName " a "bove " "all " o "thers " "dear! "
  "\nHow " "it " "calms " "our " ev "'ry " "fear! "
  "\nBless" "ed, " bless "ed " Je "sus! "

  \set stanza = "3."
  "\nOn" "ly " Je "sus " ans "wers " "prayer, "
  "\nLight" "er " "makes " "the " "cross " "we " "bear, "
  "\nsd " "us " "cast " "on " "Him " "our " "care; "
  "\nBless" "ed, " Bless "ed " Je "sus! "
  "\nOh, " "that " "Name " "we " "love " "to " "hear, "
  "\nName " a "bove " "all " o "thers " "dear! "
  "\nHow " "it " "calms " "our " ev "'ry " "fear! "
  "\nBless" "ed, " bless "ed " Je "sus! "

  \set stanza = "4."
  "\nSafe " "in " "Him " "our " "souls " a "bide, "
  "\nSafe " "His " "hand " "our " "steps " "will " "guide, "
  "\nTill " "we " "sing " be "yond " "the " "tide, "
  "\nBless" "ed, " Bless "ed " Je "sus! "
  "\nOh, " "that " "Name " "we " "love " "to " "hear, "
  "\nName " a "bove " "all " o "thers " "dear! "
  "\nHow " "it " "calms " "our " ev "'ry " "fear! "
  "\nBless" "ed, " bless "ed " Je "sus! "
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
            \new Lyrics \lyricsto "aligner"   \wordsFour
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
%    \articulate
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
               \RehearsalTrack
            }
            \new NullVoice = "aligner" { \soprano \soprano \soprano \soprano }
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
          \new Staff \with { printPartCombineTexts = ##f }
          <<
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
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \new Voice {
               \RehearsalTrack
               \RehearsalTrack
               \RehearsalTrack
               \RehearsalTrack
            }
            \new NullVoice = "aligner" { \soprano \soprano \soprano \soprano }
            \new Voice = "women" \partCombine { \global \soprano \soprano \soprano \soprano \bar "|." }
                                               { \global \alto \nl \alto \nl \alto \nl \alto }
            \new Lyrics \lyricsto "aligner" \wordsMidi
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
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
