\version "2.22.0"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Seeking to Save"
  subtitle    = "Sankey No. 64"
  subsubtitle = "Sankey 880 No. 215"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "P. P. Bliss."
%  arranger    = "arranger"
%  opus        = "opus"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key aes \major
  \time 6/8
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
% \mark \markup { \circle "1a" }
  \mark \markup { \box "A" } s2.*4
  \mark \markup { \box "B" } s2.*4
  \mark \markup { \box "C" } s2.*5
  \mark \markup { \box "D" } s2.*5
  \mark \markup { \box "E" } s2.*6
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
  s2.*22
  \tempo 4=100
  s2.*2
}

soprano = \relative {
  c''4 b8 c4 g8
  aes4. ees
  g4 fis8 g4 aes8
  bes4.~bes
  c4 b8 c4 g8 % B
  aes4. ees
  g4. aes4 bes8
  aes4.~aes
  ees'4.^\markup\smallCaps Chorus. c4 c8 % C
  ees4.(c)
  c4. aes4 aes8
  c4.(aes)
  bes4. 4 8
  bes4(aes8) g4(f8) % D
  ees4. 4 8
  ees4.~ees
  ees4(aes8) aes4 bes8
  aes4.~aes
  ees4(c'8) c4 fes8 % E
  c4.~c
  ees4.^\f c4 aes8
  aes4. f
  g4.^\p aes4 bes8
  aes4.~aes
}

alto = \relative {
  ees'4 d8 ees4 des8
  c4. c
  des4 c8 des4 c8
  des4.~des
  ees4 d8 ees4 des8 % B
  c4. c
  ees4(des8) c4 des8
  c4.~c
  aes'4. 4 8 % C
  aes4.~aes
  aes4. f4 8
  aes4.(f)
  d4. 4 8
  d4. d % D
  ees4. bes4 c8
  des4.~des
  c4. 4 des8
  c4.~c
  c4(ees8) ees4 f8 % E
  ees4.~ees
  ges4.^\f 4 8
  f4. f
  ees4^\p(des8) c4 des8
  c4.~c
}

tenor = \relative {
  aes4 8 ees4 8
  aes4. aes
  bes4 a8 bes4 aes8
  g4.~g
  aes4 8 ees4 8 % B
  aes4. aes
  bes4. aes4 g8
  aes4.~aes
  c4. aes4 8 % C
  c4.(aes)
  c4. 4 8
  c4.~c
  bes4. aes4 8
  f4. bes4(aes8) % D
  g4. 4 aes8
  bes4.~bes
  aes4(ees8) 4 8
  ees4.~ees
  aes4. 4 8 % E
  aes4.~aes
  c4.\omit\f ees4 c8
  des4. des
  bes4.\omit\p aes4 f8
  ees4.~ees
}

bass= \relative {
  aes,4 8 4 8
  aes4. aes
  ees'4 8 4 8
  ees4.~ees
  aes,4 8 4 8 % B
  aes4. aes
  ees'4. 4 8
  aes,4.~aes \break
  aes'4. 4 8 % C
  aes4.~aes
  f4. 4 8
  f4.~f
  bes,4. 4 8 \break
  bes4. bes % D
  ees4. 4 8
  ees4.~ees
  aes,4. 4 8
  aes4.~aes
  aes'4. 4 8 % E
  aes4.~aes
  aes4. 4 8
  des,4. des
  ees4. f4 des8
  aes4.~aes
}

chorus = \lyricmode {
  Seek -- ing to save, Seek -- ing to save;
  Lost one, 'tis Je -- sus Seek -- ing to save:
  Seek -- ing to save, Seek -- ing to save;
  Lost one, 'tis Je -- sus Seek -- ing to save:
}

wordsOne = \lyricmode {
  \set stanza = "1."
  Ten -- der -- ly the shep -- herd,
  O'er the moun -- tains cold,
  Goes to bring his lost one
  Back to the fold,
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Pa -- tient -- ly the own -- er
  Seeks with earn -- est care,
  In the dust and dark -- ness.
  Her trea -- sure rare.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Lov -- ing -- ly the fa -- ther
  Sends the news a -- round:
  "\"He" once dead now liv -- eth—
  Once lost is "found.\""
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "\nTen" der "ly " "the " shep "herd, "
  "\nO'er " "the " moun "tains " "cold, "
  "\nGoes " "to " "bring " "his " "lost " "one "
  "\nBack " "to " "the " "fold, "
  "\nSeek" "ing " "to " "save, " Seek "ing " "to " "save; "
  "\nLost " "one, " "'tis " Je "sus " Seek "ing " "to " "save: "
  "\nSeek" "ing " "to " "save, " Seek "ing " "to " "save; "
  "\nLost " "one, " "'tis " Je "sus " Seek "ing " "to " "save: "

  \set stanza = "2."
  "\nPa" tient "ly " "the " own "er "
  "\nSeeks " "with " earn "est " "care, "
  "\nIn " "the " "dust " "and " dark "ness. "
  "\nHer " trea "sure " "rare. "
  "\nSeek" "ing " "to " "save, " Seek "ing " "to " "save; "
  "\nLost " "one, " "'tis " Je "sus " Seek "ing " "to " "save: "
  "\nSeek" "ing " "to " "save, " Seek "ing " "to " "save; "
  "\nLost " "one, " "'tis " Je "sus " Seek "ing " "to " "save: "

  \set stanza = "3."
  "\nLov" ing "ly " "the " fa "ther "
  "\nSends " "the " "news " a "round: "
  "\n\"He " "once " "dead " "now " liv "eth— "
  "\nOnce " "lost " "is " "found.\" "
  "\nSeek" "ing " "to " "save, " Seek "ing " "to " "save; "
  "\nLost " "one, " "'tis " Je "sus " Seek "ing " "to " "save: "
  "\nSeek" "ing " "to " "save, " Seek "ing " "to " "save; "
  "\nLost " "one, " "'tis " Je "sus " Seek "ing " "to " "save: "
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
