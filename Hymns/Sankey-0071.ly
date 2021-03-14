\version "2.22.0"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Oh, Precious Words!"
  subtitle    = "Sankey No. 71"
  subsubtitle = "Sankey 880 No. 507"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Ira D. Sankey."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Fanny J. Crosby."
  meter       = \markup\smallCaps "c.m."

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key aes \major
  \time 4/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
% \mark \markup { \circle "1a" }
  \mark \markup { \box "A" } s4 s1*3 s2.
  \mark \markup { \box "B" } s4 s1*3 s2.
  \mark \markup { \box "C" } s4 s1*4
  \mark \markup { \box "D" } s1*3 s2.
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
  s4
  s1*13
  s2 \tempo 4=40 s4 \tempo 4=120 s4
  s1
  s2.
}

soprano = \relative {
  c'8.(des16)
  ees4 aes aes4. bes8
  aes4 g g aes
  bes4. a8 bes4 ees,
  c'2. \bar "|" \break \partial 4 aes8.(bes16)
  c4 ees ees4. ees8 % B
  ees4 des aes bes
  c4 c c4. bes8 aes2. \bar "|" \break \partial 4 aes4^\markup\smallCaps Refrain.
  aes4 des aes4. bes8 % C
  c2. 4
  c4 c d4. 8
  ees2. c8.(des16) \break
  ees4 aes, des c % D
  bes4 c des\fermata c8.(bes16)
  aes4 aes aes g
  aes2.
}

alto = \relative {
  aes8.(bes16)
  c4 c ees4. 8
  d4 d d c
  d4. d8 d4 d
  c2. ees4
  ees4 aes aes4. ges8 % B
  f4 f f fes
  ees4 ees ees4. d8
  c2. 4
  f4 f f fes % C
  ees2. ees4
  ees4 ees aes4. 8
  g2. ees4
  aes4 ees ees ees % D
  f4 f f\fermata f
  ees4 ees d d
  c2.
}

tenor = \relative {
  ees4
  aes4 ees aes4. 8
  bes4 bes bes aes
  g4. fis8 g4 g
  aes2. aes8.(g16)
  aes4 c c4. aes8 % B
  aes4 aes aes aes
  aes4 aes g4. 8
  aes2. aes4
  aes4 4 4. 8 % C
  aes2. aes4
  aes4 aes bes4. 8
  bes2. aes8.(bes16)
  c4 c bes aes % D
  aes4 a bes\fermata ees8.(des16)
  c4 ces bes bes
  aes2.
}

bass= \relative {
  aes,4
  aes4 aes c4. 8
  ees4 ees ees ees
  ees4. 8 4 4
  aes,2. c8.(ees16)
  aes4 4 4. c,8 % B
  des4 des des des
  ees4 ees ees4. ees8
  aes,2. aes4
  des4 4 4. 8 % C
  aes2. 4
  aes'4 4 f4. 8
  ees2. aes8.(bes16)
  aes4 4 g aes % D
  des,4 c bes\fermata c8.(des16)
  ees4 4 4 4
  aes,2.
}

chorus = \lyricmode {
}

wordsOne = \lyricmode {
  \set stanza = "1."
  Oh, pre -- cious words that Je -- sus said!—
  "\"The" soul that comes to Me,
  I will in no wise cast him out,
  Who -- ev -- er he may "be.\""
  "\"Who" -- ev -- er he may be,
  Who -- ev -- er he may be;
  I will in no wise cast him out,
  Who -- ev -- er he may "be.\""
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Oh, pre -- cious words that Je -- sus said!—
  "\"Be" -- hold, I am the Door;
  And all that en -- ter in by Me,
  Have life for ev -- er -- "more.\""
  "\"Have" life for ev -- er -- more,
  Have life for ev -- er -- more;
  And all that en -- ter in by Me,
  Have life for ev -- er -- "more.\""
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Oh, pre -- cious words that Je -- sus said!—
  "\"Come," wea -- ry souls op -- pressed,
  Come, take my yoke and learn of Me;
  And I will give you "rest.\""
  "\"And" I will give you rest.
  And I will give you rest.
  Come, take my yoke and learn of Me;
  And I will give you "rest.\""
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Oh, pre -- cious words that Je -- sus said!—
  "\"The" world I o -- ver -- cam;
  And they who fol -- low where I lead,
  Shall con -- quer in My "name.\""
  "\"Shall" con -- quer in My name,
  Shall con -- quer in My name;
  And they who fol -- low where I lead,
  Shall con -- quer in My "name.\""
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Oh, " pre "cious " "words " "that " Je "sus " "said!— "
  "\n\"The " "soul " "that " "comes " "to " "Me, "
  "\nI " "will " "in " "no " "wise " "cast " "him " "out, "
  "\nWho" ev "er " "he " "may " "be.\" "
  "\"Who" ev "er " "he " "may " "be, "
  "\nWho" ev "er " "he " "may " "be; "
  "\nI " "will " "in " "no " "wise " "cast " "him " "out, "
  "\nWho" ev "er " "he " "may " "be.\" "

  \set stanza = "2."
  "\nOh, " pre "cious " "words " "that " Je "sus " said!—
  "\n\"Be" "hold, " "I " "am " "the " "Door; "
  "\nAnd " "all " "that " en "ter " "in " "by " "Me, "
  "\nHave " "life " "for " ev er "more.\" "
  "\n\"Have " "life " "for " ev er "more, "
  "\nHave " "life " "for " ev er "more; "
  "\nAnd " "all " "that " en "ter " "in " "by " "Me, "
  "\nHave " "life " "for " ev er "more.\" "

  \set stanza = "3."
  "\nOh, " pre "cious " "words " "that " Je "sus " "said!— "
  "\n\"Come, " wea "ry " "souls " op "pressed, "
  "\nCome, " "take " "my " "yoke " "and " "learn " "of " "Me; "
  "\nAnd " "I " "will " "give " "you " "rest.\" "
  "\n\"And " "I " "will " "give " "you " "rest. "
  "\nAnd " "I " "will " "give " "you " "rest. "
  "\nCome, " "take " "my " "yoke " "and " "learn " "of " "Me; "
  "\nAnd " "I " "will " "give " "you " "rest.\" "

  \set stanza = "4."
  "\nOh, " pre "cious " "words " "that " Je "sus " "said!— "
  "\n\"The " "world " "I " o ver "cam; "
  "\nAnd " "they " "who " fol "low " "where " "I " "lead, "
  "\nShall " con "quer " "in " "My " "name.\" "
  "\n\"Shall " con "quer " "in " "My " "name, "
  "\nShall " con "quer " "in " "My " "name; "
  "\nAnd " "they " "who " fol "low " "where " "I " "lead, "
  "\nShall " con "quer " "in " "My " "name.\" "
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
            \new Voice {
              \TempoTrack
              \TempoTrack
              \TempoTrack
              \TempoTrack
            }
            \new NullVoice = "aligner" { \soprano \soprano \soprano \soprano }
            \new Voice = "women" \partCombine { \global \soprano \soprano \soprano \soprano \bar "|." }
                                               { \global \alto \nl \alto \nl \alto \nl \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                              \wordsFour  \chorus
                                            }
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
              \TempoTrack
              \TempoTrack
              \TempoTrack
              \TempoTrack
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
