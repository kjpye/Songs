\version "2.22.0"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Jesus of Nazareth Passeth by."
  subtitle    = "Sankey No. 77"
  subsubtitle = "Sankey 880 No. 20"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "T. E. Perkins."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Miss Etta Campbell."

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key g \major
  \time 6/8
  \partial 8
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } \repeat volta 2 {s8 s2.*3}\alternative {{s4. s4}{s4. s4}}
  \mark \markup { \box "B" } s8 s2.*3 s4. s4
  \mark \markup { \box "C" } s8 s2.*3 s4. s4
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
  \repeat volta 2 {
    s8
    s2.
    s4. \tempo 4=40 s4 \tempo 4=120 s8
    s1
  }
  \alternative {
    {s4. s4}
    {s4. s4}
  } s8
  s2.*7
  s4. s4
}

soprano = \relative {
  \repeat volta 2 {
    d'8
    d4 g8 g4 a8
    b4 c8 d4\fermata e8
    d4 b8 g8.(fis16) g8
  }
  \alternative {
    {a4 b8 a4}
    {b4 a8 g4}
  }
  \bar "|" \break \partial 8 b8
  a4 b8 c4 a8 % B
  b4 c8 d4.
  g,8. 16 8 8. fis16 g8
  a4 b8 a4 \bar "|" \break \partial 8 d,8
  d4 g8 g4 a8 % C
  b4 c8 d4.
  d8. e16 d8 d b g
  b4 a8 g4
}

alto = \relative {
  \repeat volta 2 {
    d'8
    d4 8 4 fis8
    g4 8 4\fermata 8
    g4 8 d4 8
  }
  \alternative {
    {fis4 g8 fis4}
    {g4 fis8 g4}
  } g8
  fis4 g8 a4 fis8 % B
  g4 8 4.
  d8. 16 8 8. 16 g8
  fis4 g8 fis4 d8
  d4 8 d4 fis8 % C
  g4 8 4.
  g8. 16 8 8 8 8
  g4 fis8 g4
}

tenor = \relative {
  \repeat volta 2 {
    b8
    b4 8 4 d8
    d4 a8 b4\fermata c8
    b4 d8 d8.(c16) b8
  }
  \alternative {
    {d4 8 4}
    {d4 c8 b4}
  } d8
  d4 8 4 8 % B
  d4 a8 b4.
  b8. 16 8 d8. c16 b8
  d4 8 4 c8
  b4 8 4 d8
  d4 a8 b4.
  b8. c16 b8 b s b
  d4 c8 b4
}

bass= \relative {
  \repeat volta 2 {
    g8
    g4 8 4 d8
    g4 8 4\fermata 8
    g4 8 b8.(a16) g8
  }
  \alternative {
    {d4 8 4}
    {d4 8 g,4}
  } g'8
  d4 8 4 8 % B
  g4 8 4.
  g8. 16 8 b8. a16 g8
  d4 8 4 f8
  g4 8 4 d8
  g4 8 4.
  g8. 16 8 8 8 8
  d4 8 g,4
}

wordsOneA = \lyricmode {
  \set stanza = "1a."
  What means this ea -- ger, anx -- ious throng,
  Which moves with bu -- sy haste a -- long—
}
  
wordsOneB = \lyricmode {
  \set stanza = "1b."
  These won -- drous gath' -- rings day by day,
  What means this strange com -- _ _ _ mo -- tion, pray?
  In ac -- cents hush'd the throng re -- ply,
  "\"Je" -- sus of Naz -- a -- reth pass -- eth "by\";"
  In ac -- cents hush'd the throng re -- ply,
  "\"Je" -- sus of Naz -- a -- reth pass -- eth "by.\""
}
  
wordsTwoA = \lyricmode {
  \set stanza = "2a."
  Who is this Je -- sus? why should He
  The ci -- ty move so migh -- ti -- ly?
}
  
wordsTwoB = \lyricmode {
  \set stanza = "2b."
  A pas -- ing stran -- ger, has He skill
  To move the mul -- ti -- _ _ _ tude as will?
  A -- gain the stir -- ring tones re -- ply,
  "\"Je" -- sus of Naz -- a -- reth pass -- eth "by\";"
  A -- gain the stir -- ring tones re -- ply,
  "\"Je" -- sus of Naz -- a -- reth pass -- eth "by.\""
}
  
wordsSingle = \lyricmode {
  \set stanza = "1."
  What means this ea -- ger, anx -- ious throng,
  Which moves with bu -- sy haste a -- long—
  These won -- drous gath' -- rings day by day,
  What means this strange com -- mo -- tion, pray?
  In ac -- cents hush'd the throng re -- ply,
  "\"Je" -- sus of Naz -- a -- reth pass -- eth "by\";"
  In ac -- cents hush'd the throng re -- ply,
  "\"Je" -- sus of Naz -- a -- reth pass -- eth "by.\""

  \set stanza = "2."
  Who is this Je -- sus? why should He
  The ci -- ty move so migh -- ti -- ly?
  A pas -- ing stran -- ger, has He skill
  To move the mul -- ti -- tude as will?
  A -- gain the stir -- ring tones re -- ply,
  "\"Je" -- sus of Naz -- a -- reth pass -- eth "by\";"
  A -- gain the stir -- ring tones re -- ply,
  "\"Je" -- sus of Naz -- a -- reth pass -- eth "by.\""
}

wordsMidi = \lyricmode {
  \set stanza = "1."
  "What " "means " "this " ea "ger, " anx "ious " "throng, "
  "\nWhich " "moves " "with " bu "sy " "haste " a "long— "
  "\nThese " won "drous " gath' "rings " "day " "by " "day, "
  "\nWhat " "means " "this " "strange " com mo "tion, " "pray? "
  "\nIn " ac "cents " "hush'd " "the " "throng " re "ply, "
  "\n"\"Je"" "sus " "of " Naz a "reth " pass "eth " "by\"; "
  "\nIn " ac "cents " "hush'd " "the " "throng " re "ply, "
  "\n"\"Je"" "sus " "of " Naz a "reth " pass "eth " "by.\" "

  \set stanza = "2."
  "\nWho " "is " "this " Je "sus? " "why " "should " "He "
  "\nThe " ci "ty " "move " "so " migh ti "ly? "
  "\nA " pas "ing " stran "ger, " "has " "He " "skill "
  "\nTo " "move " "the " mul ti "tude " "as " "will? "
  "\nA" "gain " "the " stir "ring " "tones " re "ply, "
  "\n"\"Je"" "sus " "of " Naz a "reth " pass "eth " "by\"; "
  "\nA" "gain " "the " stir "ring " "tones " re "ply, "
  "\n"\"Je"" "sus " "of " Naz a "reth " pass "eth " "by.\" "
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
            \new Voice \TempoTrack
            \new NullVoice = "aligner" \soprano
            \new Voice = "women" \partCombine { \global \soprano \bar "|." } { \global \alto }
            \new Lyrics \lyricsto "aligner" \wordsOneA
            \new Lyrics \lyricsto "aligner" \wordsOneB
            \new Lyrics \lyricsto "aligner" \wordsTwoA
            \new Lyrics \lyricsto "aligner" \wordsTwoB
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
    \unfoldRepeats
    \context GrandStaff <<
      <<
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \new Voice {
               \RehearsalTrack
               \RehearsalTrack
            }
            \new Voice {
              \TempoTrack
              \TempoTrack
            }
            \new NullVoice = "aligner" { \soprano \soprano }
            \new Voice = "women" \partCombine { \global \soprano \soprano \bar "|." }
                                               { \global \alto \nl \alto }
            \new Lyrics \lyricsto "aligner" \wordsSingle
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \tenor \tenor }
                                            { \global \bass \bass }
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
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \new Voice {
              \TempoTrack
              \TempoTrack
            }
            \new NullVoice = "aligner" { \soprano \soprano }
            \new Voice = "women" \partCombine { \global \soprano \soprano \bar "|." }
                                               { \global \alto \nl \alto }
            \new Lyrics \lyricsto "aligner" \wordsMidi
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \tenor \tenor }
                                            { \global \bass \bass }
          >>
        >>
      >>
    >>
    \midi {}
  }
}
