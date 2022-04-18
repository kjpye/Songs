\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Come Believing!"
  subtitle    = "Sankey No. 381"
  subsubtitle = "Sankey 880 No. 514"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "James McGranahan."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "El Nathan."
  meter       = \markup\smallCaps "8.7."
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key g \major
  \time 4/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s4 s1*3 s2.
  \mark \markup { \box "B" } s4 s1*3 s2.
  \mark \markup { \box "C" } s4 s1*3 s2.
  \mark \markup { \box "D" } s4 s1*3 s2.
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
  s4
  s1*11
  s2 \tempo 4=60 s4 \tempo 4=120 s4
  s1*3
  s2.
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  g'8. a16
  b4. 8 d4 g,
  g4 fis2 a8 b
  c4. b8 c4 d
  b2. \bar "|" \break g8 a
  b4. 8 d4 g, % B
  g4 fis2 a8 b
  c4. 8 b4 a
  g2. \bar "|" \break g8.^\markup\smallCaps Chorus. b16
  a4 2 8. c16 % C
  b4 2 8. d16
  cis4. 8 b4 a
  d2.\fermata \bar "|" \break g,8. a16
  b4 2 d8. g,16 % D
  g4 fis2 a8 b
  c4. 8 b4 a
  g2.
}

alto = \relative {
  \autoBeamOff
  d'8. fis16
  g4. 8 4 d
  d4 2 8 g
  fis4. 8 4 4
  g2. d8 fis
  g4. 8 4 d % B
  d4 2 8 g
  fis4. 8 g4 d
  d2. 8. g16
  fis4 2 8. a16 % C
  g4 2 8. 16
  g4. 8 4 4
  fis4 g a\fermata g8. 16
  g4 2 8. d16 % D
  d4 2 8 f
  e4. 8 d4 4
  d2.
}

tenor = \relative {
  \autoBeamOff
  b8. c16
  d4. 8 b4 4
  b4 a2 d8 8
  d4. 8 4 4
  d2. b8 c
  d4. 8 b4 4 % B
  b4 a2 d8 8
  d4. 8 4 c
  b2. 8. d16
  d4 4 4 8. 16 % C
  d4 4 4 8. b16
  a4. 8 4 4
  a4 b c\fermata b8. c16
  d4 4 4 b8. 16 % D
  b4 a a fis8 g
  g4. 8 4 fis8[c']
  b2.
}

bass = \relative {
  \autoBeamOff
  g8. 16
  g4. 8 4 4
  d4 2 c'8 b
  a4. gis8 a4 d,
  g2. 8 8
  g4. 8 4 4 % B
  d4 2 c'8 b
  a4. 8 d,4 4
  g2. 8. 16
  d4 4 4 8. 16 % C
  g4 4 4 8. 16
  e4. 8 a4 4
  d,4 4 4\fermata g8. 16
  g4 4 4 8. 16 % D
  d4 4 4 8 g
  c,4. 8 d4 4
  <g, g'>2.
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  Come be -- liev -- ing! come be -- liev -- ing!
  Come to Je -- sus! look and live!
  Come be -- liev -- ing! come be -- liev -- ing!
  Come to Je -- sus! look and live!
}

chorusMen = \lyricmode {
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ come!
  _ _ _ _ come!
  _ _ _ _ look! Oh, look and live!
  _ _ _ _ come!
  _ _ _ _ come!
  _ _ _ _ _ _ _
}

verses = 5

wordsOne = \lyricmode {
  \set stanza = "1."
  Once a -- gain the Gos -- pel mes -- sage
  From the Sa -- viour you have heard:
  Will you heed the in -- vi -- ta -- tion?
  Will you turn and seek the Lord?
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Ma -- ny sum -- mers you have was -- ted,
  Rip -- ened har -- vests you have seen;
  Win -- ter snows by spring have melt -- ed,
  Yet you lin -- ger in your sin.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Je -- sus for your choice is wait -- ing;
  Tar -- ry not: at once de -- cide!
  While the Spi -- rit now is striv -- ing,
  Yield, and seek the Sa -- viour's side.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Ceas of fit -- ness to be think -- ing;
  Do not lon -- ger try to feel;
  It is \markup\italic trust -- \markup\italic ing, and not \markup\italic feel -- \markup\italic ing,
  That will give the Spi -- rit's seal.
}
  
wordsFive = \lyricmode {
  \set stanza = "5."
  Let your will to God be gi -- ven,
  Trust in Christ's a -- ton -- ing blood;
  Look to Je -- sus now in hea -- ven,
  Rest on His un -- chang -- ing word.
}
  
wordsMidiSop = \lyricmode {
  \set stanza = "1."
  "Once " a "gain " "the " Gos "pel " mes "sage "
  "\nFrom " "the " Sa "viour " "you " "have " "heard: "
  "\nWill " "you " "heed " "the " in vi ta "tion? "
  "\nWill " "you " "turn " "and " "seek " "the " "Lord? "
  "\nCome " be liev "ing! " "come " be liev "ing! "
  "\nCome " "to " Je "sus! " "look " "and " "live! "
  "\nCome " be liev "ing! " "come " be liev "ing! "
  "\nCome " "to " Je "sus! " "look " "and " "live! "

  \set stanza = "2."
  "\nMa" "ny " sum "mers " "you " "have " was "ted, "
  "\nRip" "ened " har "vests " "you " "have " "seen; "
  "\nWin" "ter " "snows " "by " "spring " "have " melt "ed, "
  "\nYet " "you " lin "ger " "in " "your " "sin. "
  "\nCome " be liev "ing! " "come " be liev "ing! "
  "\nCome " "to " Je "sus! " "look " "and " "live! "
  "\nCome " be liev "ing! " "come " be liev "ing! "
  "\nCome " "to " Je "sus! " "look " "and " "live! "

  \set stanza = "3."
  "\nJe" "sus " "for " "your " "choice " "is " wait "ing; "
  "\nTar" "ry " "not: " "at " "once " de "cide! "
  "\nWhile " "the " Spi "rit " "now " "is " striv "ing, "
  "\nYield, " "and " "seek " "the " Sa "viour's " "side. "
  "\nCome " be liev "ing! " "come " be liev "ing! "
  "\nCome " "to " Je "sus! " "look " "and " "live! "
  "\nCome " be liev "ing! " "come " be liev "ing! "
  "\nCome " "to " Je "sus! " "look " "and " "live! "

  \set stanza = "4."
  "\nCeas " "of " fit "ness " "to " "be " think "ing; "
  "\nDo " "not " lon "ger " "try " "to " "feel; "
  "\nIt " "is " trust "ing, " "and " "not " feel "ing, "
  "\nThat " "will " "give " "the " Spi "rit's " "seal. "
  "\nCome " be liev "ing! " "come " be liev "ing! "
  "\nCome " "to " Je "sus! " "look " "and " "live! "
  "\nCome " be liev "ing! " "come " be liev "ing! "
  "\nCome " "to " Je "sus! " "look " "and " "live! "

  \set stanza = "5."
  "\nLet " "your " "will " "to " "God " "be " gi "ven, "
  "\nTrust " "in " "Christ's " a ton "ing " "blood; "
  "\nLook " "to " Je "sus " "now " "in " hea "ven, "
  "\nRest " "on " "His " un chang "ing " "word. "
  "\nCome " be liev "ing! " "come " be liev "ing! "
  "\nCome " "to " Je "sus! " "look " "and " "live! "
  "\nCome " be liev "ing! " "come " be liev "ing! "
  "\nCome " "to " Je "sus! " "look " "and " "live! "
}

wordsMidiAlto = \lyricmode {
  \set stanza = "1."
  "Once " a "gain " "the " Gos "pel " mes "sage "
  "\nFrom " "the " Sa "viour " "you " "have " "heard: "
  "\nWill " "you " "heed " "the " in vi ta "tion? "
  "\nWill " "you " "turn " "and " "seek " "the " "Lord? "
  "\nCome " be liev "ing! " "come " be liev "ing! "
  "\nCome " "to " Je "sus! " "look, " "oh " "look " "and " "live! "
  "\nCome " be liev "ing! " "come " be liev "ing! "
  "\nCome " "to " Je "sus! " "look " "and " "live! "

  \set stanza = "2."
  "\nMa" "ny " sum "mers " "you " "have " was "ted, "
  "\nRip" "ened " har "vests " "you " "have " "seen; "
  "\nWin" "ter " "snows " "by " "spring " "have " melt "ed, "
  "\nYet " "you " lin "ger " "in " "your " "sin. "
  "\nCome " be liev "ing! " "come " be liev "ing! "
  "\nCome " "to " Je "sus! " "look, " "oh " "look " "and " "live! "
  "\nCome " be liev "ing! " "come " be liev "ing! "
  "\nCome " "to " Je "sus! " "look " "and " "live! "

  \set stanza = "3."
  "\nJe" "sus " "for " "your " "choice " "is " wait "ing; "
  "\nTar" "ry " "not: " "at " "once " de "cide! "
  "\nWhile " "the " Spi "rit " "now " "is " striv "ing, "
  "\nYield, " "and " "seek " "the " Sa "viour's " "side. "
  "\nCome " be liev "ing! " "come " be liev "ing! "
  "\nCome " "to " Je "sus! " "look, " "oh " "look " "and " "live! "
  "\nCome " be liev "ing! " "come " be liev "ing! "
  "\nCome " "to " Je "sus! " "look " "and " "live! "

  \set stanza = "4."
  "\nCeas " "of " fit "ness " "to " "be " think "ing; "
  "\nDo " "not " lon "ger " "try " "to " "feel; "
  "\nIt " "is " trust "ing, " "and " "not " feel "ing, "
  "\nThat " "will " "give " "the " Spi "rit's " "seal. "
  "\nCome " be liev "ing! " "come " be liev "ing! "
  "\nCome " "to " Je "sus! " "look, " "oh " "look " "and " "live! "
  "\nCome " be liev "ing! " "come " be liev "ing! "
  "\nCome " "to " Je "sus! " "look " "and " "live! "

  \set stanza = "5."
  "\nLet " "your " "will " "to " "God " "be " gi "ven, "
  "\nTrust " "in " "Christ's " a ton "ing " "blood; "
  "\nLook " "to " Je "sus " "now " "in " hea "ven, "
  "\nRest " "on " "His " un chang "ing " "word. "
  "\nCome " be liev "ing! " "come " be liev "ing! "
  "\nCome " "to " Je "sus! " "look, " "oh " "look " "and " "live! "
  "\nCome " be liev "ing! " "come " be liev "ing! "
  "\nCome " "to " Je "sus! " "look " "and " "live! "
}

wordsMidiMen = \lyricmode {
  \set stanza = "1."
  "Once " a "gain " "the " Gos "pel " mes "sage "
  "\nFrom " "the " Sa "viour " "you " "have " "heard: "
  "\nWill " "you " "heed " "the " in vi ta "tion? "
  "\nWill " "you " "turn " "and " "seek " "the " "Lord? "
  "\nCome " be liev "ing! " "come! " "come " be liev "ing! " "come! "
  "\nCome " "to " Je "sus! " "look, " "oh " "look " "and " "live! "
  "\nCome " be liev "ing! " "come! " "come " be liev "ing! " "come! "
  "\nCome " "to " Je "sus! " "look " "and " "live! "

  \set stanza = "2."
  "\nMa" "ny " sum "mers " "you " "have " was "ted, "
  "\nRip" "ened " har "vests " "you " "have " "seen; "
  "\nWin" "ter " "snows " "by " "spring " "have " melt "ed, "
  "\nYet " "you " lin "ger " "in " "your " "sin. "
  "\nCome " be liev "ing! " "come! " "come " be liev "ing! " "come! "
  "\nCome " "to " Je "sus! " "look, " "oh " "look " "and " "live! "
  "\nCome " be liev "ing! " "come! " "come " be liev "ing! " "come! "
  "\nCome " "to " Je "sus! " "look " "and " "live! "

  \set stanza = "3."
  "\nJe" "sus " "for " "your " "choice " "is " wait "ing; "
  "\nTar" "ry " "not: " "at " "once " de "cide! "
  "\nWhile " "the " Spi "rit " "now " "is " striv "ing, "
  "\nYield, " "and " "seek " "the " Sa "viour's " "side. "
  "\nCome " be liev "ing! " "come! " "come " be liev "ing! " "come! "
  "\nCome " "to " Je "sus! " "look, " "oh " "look " "and " "live! "
  "\nCome " be liev "ing! " "come! " "come " be liev "ing! " "come! "
  "\nCome " "to " Je "sus! " "look " "and " "live! "

  \set stanza = "4."
  "\nCeas " "of " fit "ness " "to " "be " think "ing; "
  "\nDo " "not " lon "ger " "try " "to " "feel; "
  "\nIt " "is " trust "ing, " "and " "not " feel "ing, "
  "\nThat " "will " "give " "the " Spi "rit's " "seal. "
  "\nCome " be liev "ing! " "come! " "come " be liev "ing! " "come! "
  "\nCome " "to " Je "sus! " "look, " "oh " "look " "and " "live! "
  "\nCome " be liev "ing! " "come! " "come " be liev "ing! " "come! "
  "\nCome " "to " Je "sus! " "look " "and " "live! "

  \set stanza = "5."
  "\nLet " "your " "will " "to " "God " "be " gi "ven, "
  "\nTrust " "in " "Christ's " a ton "ing " "blood; "
  "\nLook " "to " Je "sus " "now " "in " hea "ven, "
  "\nRest " "on " "His " un chang "ing " "word. "
  "\nCome " be liev "ing! " "come! " "come " be liev "ing! " "come! "
  "\nCome " "to " Je "sus! " "look, " "oh " "look " "and " "live! "
  "\nCome " be liev "ing! " "come! " "come " be liev "ing! " "come! "
  "\nCome " "to " Je "sus! " "look " "and " "live! "
}

\book {
  \bookOutputSuffix "midi-sop"
  \score {
%    \articulate
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano
          <<
            \new Voice { \repeat unfold \verses \TempoTrack     }
            \new Voice { \global \repeat unfold \verses \soprano \bar "|." }
            \addlyrics \wordsMidiSop
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
  \bookOutputSuffix "midi-alto"
  \score {
%    \articulate
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano
          <<
            \new Voice { \repeat unfold \verses \TempoTrack     }
            \new Voice { \global \repeat unfold \verses \soprano \bar "|." }
          >>
                                % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global \repeat unfold \verses { \alto \nl } \bar "|." }
            \addlyrics \wordsMidiAlto
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
  \bookOutputSuffix "midi-men"
  \score {
%    \articulate
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano
          <<
            \new Voice { \repeat unfold \verses \TempoTrack     }
            \new Voice { \global \repeat unfold \verses \soprano \bar "|." }
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
            \new Lyrics \lyricsto "aligner"   \wordsFive
          >>
                                  % Joint tenor/bass staff
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \tenor } { \global \bass }
            \new NullVoice = alignerT \tenor
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
                                              \wordsFive  \chorus
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice  \partCombine { \global \repeat unfold \verses \tenor }
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
                                              \wordsFive  \chorus
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
