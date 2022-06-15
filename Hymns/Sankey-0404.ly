\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Weary Wanderer."
  subtitle    = "Sankey No. 404"
  subsubtitle = "Sankey 880 No. 281"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Hybert P. Main."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Grace J. Frances."
  meter       = \markup\smallCaps "8.7."
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key f \major
  \time 4/4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s1*4
  \mark \markup { \box "B" } s1*4
  \mark \markup { \box "C" } s1*4
  \mark \markup { \box "D" } s1*4
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  c'4 f bes4. a8
  g4 f e8[d] c4
  f4 g a c
  c8[b] a[b] c2
  c,4 f bes4. a8 % B
  g4 f e8[d] c4
  f4 a g8[a] bes[g]
  f4 e f2
  c'4^\markup\smallCaps Chorus. a d8[c] bes[a] % C
  bes4 g c8[bes] a[g]
  a4 b c b8[a]
  g4 b c2
  c,4 g' bes4. a8 % D
  g4 f e8[d] c4
  f4 a g8[a] bes[g]
  f4 e f2
}

alto = \relative {
  \autoBeamOff
  c'4 4 f4. 8
  d4 4 c c
  c4 e f g
  f4 4 e2
  c4 4 f4. 8 % B
  d4 4 c c
  c4 4 d d
  c4 4 2
  f4 4 4 e8[f] % C
  e4 4 f8[e] f[c]
  f4 4 e d
  e4 f e2
  c4 4 f4. 8 % D
  d4 4 c c
  c4 4 d d
  c4 4 2
}

tenor = \relative {
  \autoBeamOff
  a4 4 d4. c8
  bes4 a g8[f] e4
  f4 c' c c
  g4 4 2
  a4 4 d4. c8 % B
  bes4 a g8[f] e4
  f4 4 d8[fis] g[bes]
  a4 g a2
  a4 c bes8[c] 4 % C
  c4 4 4 4
  c4 g g a
  c4 g g2
  a4 4 d4. c8 % D
  bes4 a g8[f] e4
  f4 4 d8[fis] g[bes]
  a4 g a2
}

bass = \relative {
  \autoBeamOff
  f4 4 4. 8
  bes,4 b c c
  a4 c f e
  d4 g, c2
  f4 4 4. 8 % B
  bes,4 b a a8[bes]
  a4 f bes8[a] g4
  c4 4 f,2
  f'4 4 bes8[a] g[f] % C
  g4 c, a'8[g] f[e]
  f4 d c f
  g4 g, c2
  f4 4 4. 8 % D
  bes,4 b c c8[bes]
  a4 f bes8[a] g4
  c4 4 f,2
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  Make no long -- er vain ex -- cus -- es,
  Je -- sus calls, and calls thee now;
  Come, for ev' -- ry -- thing is read -- y:
  Wea -- ry soul, why wait -- est thou?
}

chorusMen = \lyricmode {
}

verses = 4

wordsOne = \lyricmode {
  \set stanza = "1."
  Wea -- ry wan -- d'rer, stop and list -- en,
  Hap -- py news we bring to thee:
  Je -- sus has pre -- pared a ban -- quet;
  Come, and wel -- come thou shalt be.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Are thy sins a hea -- vy bur -- den?
  Come to God, con -- fess them now:
  He is will -- ing to for -- give thee;
  Ask, re -- ceive, why wait -- est thou?
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  On the lov -- ing arm of Je -- sus
  Would'st thou lean, and trust Him now?
  Let Him cleanse thee at the foun -- tain;
  Come at once, why wait -- est thou?
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  See the beau -- teous wed -- ding gar -- ment;
  In His hands He holds it now;
  Haste, oh haste thee to the ban -- quet;
  En -- ter in, why wait -- est thou?
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Wea" "ry " wan "d'rer, " "stop " "and " list "en, "
  "\nHap" "py " "news " "we " "bring " "to " "thee: "
  "\nJe" "sus " "has " pre "pared " "a " ban "quet; "
  "\nCome, " "and " wel "come " "thou " "shalt " "be. "
  "\nMake " "no " long "er " "vain " ex cus "es, "
  "\nJe" "sus " "calls, " "and " "calls " "thee " "now; "
  "\nCome, " "for " ev' ry "thing " "is " read "y: "
  "\nWea" "ry " "soul, " "why " wait "est " "thou? "

  \set stanza = "2."
  "\nAre " "thy " "sins " "a " hea "vy " bur "den? "
  "\nCome " "to " "God, " con "fess " "them " "now: "
  "\nHe " "is " will "ing " "to " for "give " "thee; "
  "\nAsk, " re "ceive, " "why " wait "est " "thou? "
  "\nMake " "no " long "er " "vain " ex cus "es, "
  "\nJe" "sus " "calls, " "and " "calls " "thee " "now; "
  "\nCome, " "for " ev' ry "thing " "is " read "y: "
  "\nWea" "ry " "soul, " "why " wait "est " "thou? "

  \set stanza = "3."
  "\nOn " "the " lov "ing " "arm " "of " Je "sus "
  "\nWould'st " "thou " "lean, " "and " "trust " "Him " "now? "
  "\nLet " "Him " "cleanse " "thee " "at " "the " foun "tain; "
  "\nCome " "at " "once, " "why " wait "est " "thou? "
  "\nMake " "no " long "er " "vain " ex cus "es, "
  "\nJe" "sus " "calls, " "and " "calls " "thee " "now; "
  "\nCome, " "for " ev' ry "thing " "is " read "y: "
  "\nWea" "ry " "soul, " "why " wait "est " "thou? "

  \set stanza = "4."
  "\nSee " "the " beau "teous " wed "ding " gar "ment; "
  "\nIn " "His " "hands " "He " "holds " "it " "now; "
  "\nHaste, " "oh " "haste " "thee " "to " "the " ban "quet; "
  "\nEn" "ter " "in, " "why " wait "est " "thou? "
  "\nMake " "no " long "er " "vain " ex cus "es, "
  "\nJe" "sus " "calls, " "and " "calls " "thee " "now; "
  "\nCome, " "for " ev' ry "thing " "is " read "y: "
  "\nWea" "ry " "soul, " "why " wait "est " "thou? "
}

wordsMidiMen = \lyricmode {
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
            \addlyrics \wordsMidiMen
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
          \new Staff = women \with { printPartCombineTexts = ##f }
          <<
            \new Voice \RehearsalTrack
            \new Voice \TempoTrack
            \new NullVoice = "aligner" \soprano
            \new Voice \partCombine { \global \soprano \bar "|." } { \global \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne \chorus }
            \new Lyrics \lyricsto "aligner"   \wordsTwo
            \new Lyrics \lyricsto "aligner"   \wordsThree
            \new Lyrics \lyricsto "aligner"   \wordsFour
          >>
                                  % Joint tenor/bass staff
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice \partCombine { \global \tenor } { \global \bass }
            \new NullVoice = alignerT { \tenor }
          >>
          \new Lyrics \with {alignAboveContext = men} \lyricsto alignerT \chorusMen
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
          \new Staff = women \with { printPartCombineTexts = ##f }
          <<
            \new Voice { \repeat unfold \verses \RehearsalTrack }
            \new Voice { \repeat unfold \verses \TempoTrack }
            \new NullVoice = "aligner" { \repeat unfold \verses \soprano }
            \new Voice \partCombine { \global \repeat unfold \verses \soprano \bar "|." }
                                    { \global \repeat unfold \verses { \alto \nl } \bar "|." }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                              \wordsFour  \chorus
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice \partCombine { \global \repeat unfold \verses \tenor }
                                    { \global \repeat unfold \verses \bass }
            \new NullVoice = alignerT { \repeat unfold \verses \tenor }
          >>
          \new Lyrics \with {alignAboveContext = men} \lyricsto alignerT { \repeat unfold \verses \chorusMen }
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
          \new Staff = women \with { printPartCombineTexts = ##f }
          <<
            \new Voice { \repeat unfold \verses \RehearsalTrack }
            \new Voice { \repeat unfold \verses \TempoTrack }
            \new NullVoice = "aligner" { \repeat unfold \verses \soprano }
            \new Voice \partCombine { \global \repeat unfold \verses \soprano \bar "|." }
                                    { \global \repeat unfold \verses { \alto \nl } \bar "|." }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                              \wordsFour  \chorus
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice \partCombine { \global \repeat unfold \verses \tenor }
                                    { \global \repeat unfold \verses \bass }
            \new NullVoice = alignerT { \repeat unfold \verses \tenor }
          >>
          \new Lyrics \with {alignAboveContext = men} \lyricsto alignerT { \repeat unfold \verses \chorusMen }
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
