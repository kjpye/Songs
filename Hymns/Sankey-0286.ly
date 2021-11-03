\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Evening Prayer"
  subtitle    = "Sankey No. 286"
  subsubtitle = "Sankey 880 No. 370"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Geo C. Stebbins."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "J. Edmeston."
  meter       = \markup\smallCaps "8.7."
% piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key bes \major
  \time 2/2
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s1*8
  \mark \markup { \box "B" } s1*8
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 2=120
  s1*7
  s2 \tempo 2=60 s2 \tempo 2=120
  s1*4
  \tempo 2=110
  s1
  s1
  s2. \tempo 2=38 s4 \tempo 2=110
  s1
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  f'2 g
  g2.^> f4
  f2 bes
  bes2^> a4 r
  bes2 g
  f2 4(g)
  a2 g4(c)
  c2(f,\fermata) \break
  f2 g % B
  g2.^> f4
  f2 d'
  d2^> c4 r
  bes2^\markup\italic rit. 2
  bes2. g4
  f2. 4\fermata
  f1
}

alto = \relative {
  \autoBeamOff
  d'2 2
  ees2.^> 4
  f2 2
  ees2^> 4 r
  d2 ees
  f2 2
  f2 e
  ees2 f\fermata
  d2 2 % B
  ees2.^> 4
  f2 2
  f2^> ees4 r
  d2 aes'
  g2. ees4
  c2(d4) ees\fermata
  d1
}

tenor = \relative {
  \autoBeamOff
  f2 bes
  a2.^> 4
  bes2 d
  c2^> 4 r
  bes2 2
  bes2 b
  c2 bes
  a1
  f2 bes % B
  a2.^> 4
  bes2 2
  bes2^> a4 r
  bes2 d
  ees2(bes4) c
  a2(bes4) c\fermata
  bes1
}

bass = \relative {
  \autoBeamOff
  bes,2 2
  c2.^> 4
  d2 bes
  f'2^> 4 r
  g2 ees
  d2 2
  c2 2
  f2(f,\fermata)
  bes2 2 % B
  c2.^> 4
  d2 bes
  f'2^> 4 r
  g2 f
  ees2. 4
  f2. f,4\fermata bes1
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
}

verses = 4

wordsOne = \lyricmode {
  \set stanza = "1."
  Sa -- viour, breathe an ev -- 'ning bles -- sing,
  Ere re -- pose our __ spi -- rits __ seal: __
  Sin and want we come con -- fess -- ing;
  Thou canst save and Thou canst heal.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Tho' des -- truc -- tion walk a -- round us,
  Tho' the ar -- row __ past us __ fly; __
  An -- gel- -- guards from Thee sur -- round us:
  We are safe if Thou art night.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Though the night be dark and drea -- ry,
  Dark -- ness can -- not hied from Thee;
  Thou art He who, ne -- ver wea -- ry,
  Watch -- est where Thy peo -- ple be.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Should swift death this night o'er -- take us,
  And our couch be -- come our tomb,
  May the morn in heaven a -- wake us,
  Clad in light and death -- less bloom!
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Sa" "viour, " "breathe " "an " ev "'ning " bles "sing, "
  "\nEre " re "pose " "our "  spi "rits "  "seal: " 
  "\nSin " "and " "want " "we " "come " con fess "ing; "
  "\nThou " "canst " "save " "and " "Thou " "canst " "heal. "

  \set stanza = "2."
  "\nTho' " des truc "tion " "walk " a "round " "us, "
  "\nTho' " "the " ar "row "  "past " "us "  "fly; " 
  "\nAn" gel- "guards " "from " "Thee " sur "round " "us: "
  "\nWe " "are " "safe " "if " "Thou " "art " "night. "

  \set stanza = "3."
  "\nThough " "the " "night " "be " "dark " "and " drea "ry, "
  "\nDark" "ness " can "not " "hied " "from " "Thee; "
  "\nThou " "art " "He " "who, " ne "ver " wea "ry, "
  "\nWatch" "est " "where " "Thy " peo "ple " "be. "

  \set stanza = "4."
  "\nShould " "swift " "death " "this " "night " o'er "take " "us, "
  "\nAnd " "our " "couch " be "come " "our " "tomb, "
  "\nMay " "the " "morn " "in " "heaven " a "wake " "us, "
  "\nClad " "in " "light " "and " death "less " "bloom! "
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
            \new Voice { \global \repeat unfold \verses \soprano \bar "|." }
            \addlyrics \wordsMidi
          >>
                                % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global \repeat unfold \verses { \alto \nl } \bar "|." }
          >>
                                % Tenor staff
          \new Staff = tenor
          <<
            \clef "treble_8"
            \new Voice { \global \repeat unfold \verses \tenor }
          >>
                                % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Voice { \global \repeat unfold \verses \bass }
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
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \new Voice { \repeat unfold \verses \RehearsalTrack }
            \new Voice { \repeat unfold \verses \TempoTrack }
            \new NullVoice = "aligner" { \repeat unfold \verses \soprano }
            \new Voice = "women" \partCombine { \global \repeat unfold \verses \soprano \bar "|." }
                                               { \global \repeat unfold \verses { \alto \nl } \bar "|." }
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
            \new Voice = "men" \partCombine { \global \repeat unfold \verses \tenor }
                                            { \global \repeat unfold \verses \bass }
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
  \bookOutputSuffix "singlepage"
  \paper {
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    paper-height = 2000\mm
    ragged-bottom = true
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
            \new NullVoice = "aligner" { \repeat unfold \verses \soprano }
            \new Voice = "women" \partCombine { \global \repeat unfold \verses \soprano \bar "|." }
                                               { \global \repeat unfold \verses { \alto \nl } \bar "|." }
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
            \new Voice = "men" \partCombine { \global \repeat unfold \verses \tenor }
                                            { \global \repeat unfold \verses \bass }
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
