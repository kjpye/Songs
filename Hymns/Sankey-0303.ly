\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "'Tis the Blessed Hour of Prayer."
  subtitle    = "Sankey No. 303"
  subsubtitle = "Sankey 880 No. 276"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "W. H. Doane."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Fanny J. Crosby."
%  meter       = \markup\smallCaps "meter"
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

#(set-global-staff-size 19)

global = {
  \key ees \major
  \time 3/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s4 s2.*4
  \mark \markup { \box "B" }    s2.*5
  \mark \markup { \box "C" }    s2.*5
  \mark \markup { \box "D" }    s2.*5
  \mark \markup { \box "E" }    s2.*4 s2
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
  s4
  s2.*13
  s4 \tempo 4=40 s4 \tempo 4=120 s4
  s2.*7
  s4 \tempo 4=40 s4 \tempo 4=120 s4
  s2.
  s2
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  ees'8. f16
  g8. fis16 g4 aes
  bes2 8 8
  ees4 d c
  \tag #'all        {bes2 \slurDashed 8(8) \slurSolid}
  \tag #'(v1 v3 v4) {bes2             8 8            }
  \tag #'v2         {bes2             4              }
  bes4 g bes % B
  c4 bes g
  g4. f8 ees4
  f2 ees8. f16
  g8. fis16 g4 aes
  bes2 8 8 % C
  ees4 d c
  bes2 8 8
  c4 ees4. c8
  bes4 g\fermata ees8 f
  g8.[aes16] g4 f % D
  ees2 \bar "||" g8^\markup\smallCaps Chorus. bes
  bes2 4
  bes2 g8 bes
  ees4(d) c
  bes2 8 8 % E
  c4 ees4. c8
  bes4 g\fermata ees8 f
  g8.[aes16] g4 f
  ees2
}

sopranoSingle = {
  \keepWithTag #'v1 \soprano
  \keepWithTag #'v2 \soprano
  \keepWithTag #'v3 \soprano
  \keepWithTag #'v4 \soprano
}

alto = \relative {
  \autoBeamOff
  ees'8. 16
  ees8. 16 4 f
  g2 ees8 8
  ees4 4 4
  \tag #'all        {ees2 \slurDashed 8(8) \slurSolid}
  \tag #'(v1 v3 v4) {ees2             8 8            }
  \tag #'v2         {ees2             4              }
  ees4 4 4 % B
  ees4 4 4
  ees4. 8 4
  d2 ees8. 16
  ees8. 16 4 4
  ees2 8 8 % C
  ees4 4 4
  ees2 8 8
  ees4 4. 8
  ees4 4\fermata 8 8
  ees4 4 d % D
  ees2 8 8
  d4(ees) f
  ees2 8 8
  ees2 4
  ees2 8 8 % E
  ees4 4. 8
  ees4 4\fermata 8 8
  ees4 4 d
  ees2
}

altoSingle = {
  \keepWithTag #'v1 \alto \nl
  \keepWithTag #'v2 \alto \nl
  \keepWithTag #'v3 \alto \nl
  \keepWithTag #'v4 \alto \nl
}

tenor = \relative {
  \autoBeamOff
  g8. aes16
  bes8. a16 bes4 4
  ees2 bes8 8
  c4 bes aes
  \tag #'all        {g2 \slurDashed 8(8) \slurSolid }
  \tag #'(v1 v3 v4) {g2             8(8)            }
  \tag #'v2         {g2             4               }
  g4 bes g % B
  aes4 g bes
  a4. 8 4
  bes2 g8. aes16
  bes8. a16 bes4 f
  g2 bes8 8 % C
  c4 bes aes
  g2 8 8
  aes4 c4. aes8
  g4 bes\fermata 8 c
  bes8.[c16] bes4 aes % D
  g2 bes8 g
  f4(g) aes
  g2 bes8 g
  c4(bes) aes
  g2 8 8 % E
  aes4 c4. aes8
  g4 bes\fermata 8 c
  bes8.[c16] bes4 aes
  g2
}

tenorSingle = {
  \keepWithTag #'v1 \tenor
  \keepWithTag #'v2 \tenor
  \keepWithTag #'v3 \tenor
  \keepWithTag #'v4 \tenor
}

bass = \relative {
  \autoBeamOff
  ees8. 16
  ees8. 16 4 4
  ees2 g8 8
  aes4 aes, c
  \tag #'all        {ees2 \slurDashed 8(8) \slurSolid }
  \tag #'(v1 v3 v4) {ees2             8 8             }
  \tag #'v2         {ees2             4               }
  ees4 4 4 % B
  ees4 4 4
  c4. 8 f4
  bes,2 ees8. 16
  ees8. 16 4 4
  ees2 g8 8 % C
  aes4 aes, c
  ees2 8 8
  aes,4 4. c8
  ees4 4\fermata g8 aes
  bes4 bes, bes % D
  ees2 8 8
  bes2 4
  ees2 8 8
  aes,2 8[c]
  ees2 8 8 % E
  aes,4 4. c8
  ees4 4\fermata g8 aes
  bes4 bes, bes
  ees2
}

bassSingle = {
  \keepWithTag #'v1 \bass
  \keepWithTag #'v2 \bass
  \keepWithTag #'v3 \bass
  \keepWithTag #'v4 \bass
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  Bles -- sed hour of prayer!
  Bles -- sed hour of prayer!
  What a balm for the wea -- ry!
  Oh, how sweet to be there!
}

verses = 4

wordsOne = \lyricmode {
  \set stanza = "1."
  'Tis the bles -- sed hour of prayer, when our hearts low -- ly bend,
  \nom And we \yesm ga -- ther to Je -- sus, our Sa -- viour and Friend:
  If we come to Him in faith, His pro -- tec -- tion to share,
  What a balm for the wea -- ry!
  Oh, how sweet to be there!
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  'Tis the bles -- sed hour of prayer, when our hearts low -- ly bend,
  With ten -- der com -- pas -- sion His peo -- ple to hear;
  When He tells us we may cast at His feet ev -- 'ry care.
  What a balm for the wea -- ry!
  Oh, how sweet to be there!
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  'Tis the bles -- sed hour of prayer, when the tempt -- ed and tried
  \nom To the \yesm Sa -- viour who loves them their sor -- rows con -- fide:
  With a sym -- pa -- this -- ing heart He re -- moves ev -- 'ry care;
  What a balm for the wea -- ry!
  Oh, how sweet to be there!
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  At the bles -- sed hour of prayer, if we firm -- ly be -- lieve
  \nom That the \yesm bless -- ing we ask for we'll sure -- ly re -- ceive,
  In the ful -- ness of de -- light we shall lose ev -- 'ry care;
  What a balm for the wea -- ry!
  Oh, how sweet to be there!
}
  
wordsSingle = \lyricmode {
  \set stanza = "1."
  'Tis the bles -- sed hour of prayer, when our hearts low -- ly bend,
  And we ga -- ther to Je -- sus, our Sa -- viour and Friend:
  If we come to Him in faith, His pro -- tec -- tion to share,
  What a balm for the wea -- ry!
  Oh, how sweet to be there!
  Bles -- sed hour of prayer!
  Bles -- sed hour of prayer!
  What a balm for the wea -- ry!
  Oh, how sweet to be there!

  \set stanza = "2."
  'Tis the bles -- sed hour of prayer, when our hearts low -- ly bend,
  With ten -- der com -- pas -- sion His peo -- ple to hear;
  When He tells us we may cast at His feet ev -- 'ry care.
  What a balm for the wea -- ry!
  Oh, how sweet to be there!
  Bles -- sed hour of prayer!
  Bles -- sed hour of prayer!
  What a balm for the wea -- ry!
  Oh, how sweet to be there!

  \set stanza = "3."
  'Tis the bles -- sed hour of prayer, when the tempt -- ed and tried
  To the Sa -- viour who loves them their sor -- rows con -- fide:
  With a sym -- pa -- this -- ing heart He re -- moves ev -- 'ry care;
  What a balm for the wea -- ry!
  Oh, how sweet to be there!
  Bles -- sed hour of prayer!
  Bles -- sed hour of prayer!
  What a balm for the wea -- ry!
  Oh, how sweet to be there!

  \set stanza = "4."
  At the bles -- sed hour of prayer, if we firm -- ly be -- lieve
  That the bless -- ing we ask for we'll sure -- ly re -- ceive,
  In the ful -- ness of de -- light we shall lose ev -- 'ry care;
  What a balm for the wea -- ry!
  Oh, how sweet to be there!
  Bles -- sed hour of prayer!
  Bles -- sed hour of prayer!
  What a balm for the wea -- ry!
  Oh, how sweet to be there!
}

wordsMidi = \lyricmode {
  \set stanza = "1."
  "'Tis " "the " bles "sed " "hour " "of " "prayer, " "when " "our " "hearts " low "ly " "bend, "
  "\nAnd " "we " ga "ther " "to " Je "sus, " "our " Sa "viour " "and " "Friend: "
  "\nIf " "we " "come " "to " "Him " "in " "faith, " "His " pro tec "tion " "to " "share, "
  "\nWhat " "a " "balm " "for " "the " wea "ry! "
  "\nOh, " "how " "sweet " "to " "be " "there! "
  "\nBles" "sed " "hour " "of " "prayer! "
  "\nBles" "sed " "hour " "of " "prayer! "
  "\nWhat " "a " "balm " "for " "the " wea "ry! "
  "\nOh, " "how " "sweet " "to " "be " "there! "

  \set stanza = "2."
  "\n'Tis " "the " bles "sed " "hour " "of " "prayer, " "when " "our " "hearts " low "ly " "bend, "
  "\nWith " ten "der " com pas "sion " "His " peo "ple " "to " "hear; "
  "\nWhen " "He " "tells " "us " "we " "may " "cast " "at " "His " "feet " ev "'ry " "care. "
  "\nWhat " "a " "balm " "for " "the " wea "ry! "
  "\nOh, " "how " "sweet " "to " "be " "there! "
  "\nBles" "sed " "hour " "of " "prayer! "
  "\nBles" "sed " "hour " "of " "prayer! "
  "\nWhat " "a " "balm " "for " "the " wea "ry! "
  "\nOh, " "how " "sweet " "to " "be " "there! "

  \set stanza = "3."
  "\n'Tis " "the " bles "sed " "hour " "of " "prayer, " "when " "the " tempt "ed " "and " "tried "
  "\nTo " "the " Sa "viour " "who " "loves " "them " "their " sor "rows " con "fide: "
  "\nWith " "a " sym pa this "ing " "heart " "He " re "moves " ev "'ry " "care; "
  "\nWhat " "a " "balm " "for " "the " wea "ry! "
  "\nOh, " "how " "sweet " "to " "be " "there! "
  "\nBles" "sed " "hour " "of " "prayer! "
  "\nBles" "sed " "hour " "of " "prayer! "
  "\nWhat " "a " "balm " "for " "the " wea "ry! "
  "\nOh, " "how " "sweet " "to " "be " "there! "

  \set stanza = "4."
  "\nAt " "the " bles "sed " "hour " "of " "prayer, " "if " "we " firm "ly " be "lieve "
  "\nThat " "the " bless "ing " "we " "ask " "for " "we'll " sure "ly " re "ceive, "
  "\nIn " "the " ful "ness " "of " de "light " "we " "shall " "lose " ev "'ry " "care; "
  "\nWhat " "a " "balm " "for " "the " wea "ry! "
  "\nOh, " "how " "sweet " "to " "be " "there! "
  "\nBles" "sed " "hour " "of " "prayer! "
  "\nBles" "sed " "hour " "of " "prayer! "
  "\nWhat " "a " "balm " "for " "the " wea "ry! "
  "\nOh, " "how " "sweet " "to " "be " "there! "
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
            \new Voice { \global \sopranoSingle \bar "|."
                       }
            \addlyrics \wordsMidi
          >>
                                % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global \altoSingle \bar "|."
                       }
          >>
                                % Tenor staff
          \new Staff = tenor
          <<
            \clef "treble_8"
            \new Voice { \global \tenorSingle \bar "|."
                       }
          >>
                                % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Voice { \global \bassSingle \bar "|."
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
            \new NullVoice = "aligner" \keepWithTag #'all \soprano
            \new Voice = "women" \partCombine { \global \keepWithTag #'all \soprano \bar "|." } { \global \keepWithTag #'all \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne \chorus }
            \new Lyrics \lyricsto "aligner"   \wordsTwo
            \new Lyrics \lyricsto "aligner"   \wordsThree
            \new Lyrics \lyricsto "aligner"   \wordsFour
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \keepWithTag #'all \tenor } { \global \keepWithTag #'all \bass }
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
            \new NullVoice = "aligner" { \sopranoSingle }
            \new Voice = "women" \partCombine { \global \sopranoSingle \bar "|." }
                                               { \global \altoSingle \bar "|." }
            \new Lyrics \lyricsto "aligner" \wordsSingle
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \tenorSingle }
                                            { \global \bassSingle  }
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
            \new NullVoice = "aligner" \sopranoSingle
            \new Voice = "women" \partCombine { \global \sopranoSingle \bar "|." }
                                              { \global \altoSingle \bar "|." }
            \new Lyrics \lyricsto "aligner" \wordsSingle
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \tenorSingle }
                                            { \global \bassSingle  }
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
