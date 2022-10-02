\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Jesus, I will Trust Thee."
  subtitle    = "Sankey No. 468"
  subsubtitle = "Sankey 880 No. 316"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Ira D. Sankey."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Mary J. Walker."
  meter       = \markup\smallCaps "6.5."
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key aes \major
  \time 4/4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s1*4
  \mark \markup { \box "B" } s1*4
  \repeat segno 2 {
    \mark \markup { \box "C" } s1*5
    \mark \markup { \box "D" } s1*3
    \volta 2 \fine
    \volta 1 {
      s1*2
      \mark \markup { \box "E" } s1*6
    }
  }
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  c''4 des c bes | aes2 ees | aes4 g aes c | bes2. r4 |
  g4 aes bes c | bes2 ees, | g4 aes g f | ees2. r4 |
  \repeat segno 2 {
    c'4 des c bes | aes2 ees | aes4 g aes c | bes2. r4 | des4 c bes aes |
    g4 ees aes bes | c2 bes | aes2. r4 |
    \volta 2 \fine
    \volta 1 {
        bes4^\markup\smallCaps Chorus. 4 4 c | bes2 ees |
        d4 c bes aes | g2. r4 | bes4 4 4 c | bes2 ees | bes4 aes g f | ees2. r4
    }
  }
}

alto = \relative {
  \autoBeamOff
  ees'4 f ees des | c2 2 | 4 des ees ees | 2. r4 |
  ees4 f g aes | g2 ees | 4 f ees d | ees2. r4 |
  \repeat segno 2 {
    ees4 f ees des | c2 2 | 4 des ees ees | ees2. r4 | f4 4 4 4 |
    ees4 bes ees f | ees2 des | c2. r4 |
    \volta 2 \fine
    \volta 1 {
      g'4 4 4 aes | g2 2 |
      bes4 aes g f | ees2. r4 | g4 4 4 aes | g2 2 | ees4 f ees d | ees2. r4
    }
  }
}

tenor = \relative {
  \autoBeamOff
  aes4 4 4 ees | 2 aes | ees4 4 aes aes | g2. r4 |
  bes4 4 ees ees | 2 g, | bes4 c bes aes | g2. r4 |
  \repeat segno 2 {
    aes4 4 4 ees | ees2 bes | ees4 4 aes aes | g2. r4 | bes4 a bes bes |
    bes4 g aes aes | as2 g | aes2. r4
    \volta 2 \fine
    \volta 1 {
      ees'4 4 4 4 | 2 bes |
      bes4 4 4 4 | 2. r4 | ees4 4 4 4 | 2 bes | 4 c bes aes | g2. r4
    }
  }
}

bass = \relative {
  \autoBeamOff
  aes,4 4 4 4 | 2 2 | 4 bes c aes | ees'2. r4 |
  ees4 4 4 4 | 2 2 | 4 aes, bes bes | ees2. r4
  \repeat segno 2 {
    aes,4 4 4 4 | 2 2 | 4 bes c aes | ees'2. r4 | bes4 c des d |
    ees4 des c des | ees2 2 | aes,2. r4
    \volta 2 \fine
    \volta 1 {
      ees'4 4 4 4 | 2 2 |
      bes4 4 4 4 | ees2. r4 | 4 4 4 4 | 2 2 | g,4 aes bes bes | ees2. r4
    }
  }
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  In Thy love con -- fid -- ing I will seek Thy face,
  Wor -- ship and a -- dore Thee,
  for Thy won -- drous grace.
}

emptyChorus = \lyricmode {
  _ _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _ _
}

chorusB = \lyricmode {
  \set stanza = \markup\italic "D.S."
  \markup\italic Je -- \markup\italic sus, \markup\italic I \markup\italic will \markup\italic trust \markup\italic Thee,
  \markup\italic trust \markup\italic Thee \markup\italic with \markup\italic my \markup\italic soul!
  \markup\italic Guil -- \markup\italic ty, \markup\italic lost \markup\italic and \markup\italic help -- \markup\italic less,
  \markup\italic Thou \markup\italic canst \markup\italic make \markup\italic me \markup\italic whole.
}

chorusMen = \lyricmode {
}

verses = 3

wordsOne = \lyricmode {
  \set stanza = "1."
  Je -- sus, I will trust Thee,
  trust Thee with my soul:
  Guil -- ty, lost and help -- less,
  Thou canst make me whole.
  There is none in hea -- ven
  or on earth like Thee;
  Thou hast died for sin -- ners—
  there -- fore, Lord, for me.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Je -- sus, I will trust Thee,
  trust Thy writ -- ten Word;
  Since Thy voice of mer -- cy
  I have of -- ten heard.
  When Thy Spi -- rit teach -- eth.
  to my taste how sweet!
  On -- ly may I heark -- en,
  sit -- ting at Thy feet.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Je -- sus, I do trust Thee,
  Trust Thee with -- out doubt;
  "\"Who" -- so -- ev -- er com -- eth,
  Thou wilt not cast "out:\""
  Faith -- ful is Thy prom -- ise,
  pre -- cious is Thy blood—
  These my soul's sal -- va -- tion,
  Thou my Sa -- viour God!
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Je" "sus, " "I " "will " "trust " "Thee, "
  "\ntrust " "Thee " "with " "my " "soul: "
  "\nGuil" "ty, " "lost " "and " help "less, "
  "\nThou " "canst " "make " "me " "whole. "
  "\nThere " "is " "none " "in " hea "ven "
  "\nor " "on " "earth " "like " "Thee; "
  "\nThou " "hast " "died " "for " sin "ners— "
  "\nthere" "fore, " "Lord, " "for " "me. "
  "\nIn " "Thy " "love " con fid "ing " "I " "will " "seek " "Thy " "face, "
  "\nWor" "ship " "and " a "dore " "Thee, "
  "\nfor " "Thy " won "drous " "grace. "
  "\nJe" "sus, " "I " "will " "trust " "Thee, "
  "\ntrust " "Thee " "with " "my " "soul! "
  "\nGuil" "ty, " "lost " "and " help "less, "
  "\nThou " "canst " "make " "me " "whole.\n"

  \set stanza = "2."
  "\nJe" "sus, " "I " "will " "trust " "Thee, "
  "\ntrust " "Thy " writ "ten " "Word; "
  "\nSince " "Thy " "voice " "of " mer "cy "
  "\nI " "have " of "ten " "heard. "
  "\nWhen " "Thy " Spi "rit " teach "eth. "
  "\nto " "my " "taste " "how " "sweet! "
  "\nOn" "ly " "may " "I " heark "en, "
  "\nsit" "ting " "at " "Thy " "feet. "
  "\nIn " "Thy " "love " con fid "ing " "I " "will " "seek " "Thy " "face, "
  "\nWor" "ship " "and " a "dore " "Thee, "
  "\nfor " "Thy " won "drous " "grace. "
  "\nJe" "sus, " "I " "will " "trust " "Thee, "
  "\ntrust " "Thee " "with " "my " "soul! "
  "\nGuil" "ty, " "lost " "and " help "less, "
  "\nThou " "canst " "make " "me " "whole.\n"

  \set stanza = "3."
  "\nJe" "sus, " "I " "do " "trust " "Thee, "
  "\nTrust " "Thee " with "out " "doubt; "
  "\n\"Who" so ev "er " com "eth, "
  "\nThou " "wilt " "not " "cast " "out:\" "
  "\nFaith" "ful " "is " "Thy " prom "ise, "
  "\npre" "cious " "is " "Thy " "blood— "
  "\nThese " "my " "soul's " sal va "tion, "
  "\nThou " "my " Sa "viour " "God! "
  "\nIn " "Thy " "love " con fid "ing " "I " "will " "seek " "Thy " "face, "
  "\nWor" "ship " "and " a "dore " "Thee, "
  "\nfor " "Thy " won "drous " "grace. "
  "\nJe" "sus, " "I " "will " "trust " "Thee, "
  "\ntrust " "Thee " "with " "my " "soul! "
  "\nGuil" "ty, " "lost " "and " help "less, "
  "\nThou " "canst " "make " "me " "whole. "
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
            \new Lyrics \lyricsto "aligner" { \emptyChorus \chorusB }
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

singlescore = {
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff = women \with { printPartCombineTexts = ##f }
          <<
            \new Voice { \repeat unfold \verses \RehearsalTrack }
            \new Voice { \repeat unfold \verses \TempoTrack }
            \new NullVoice = "aligner" { \repeat unfold \verses \soprano }
            \new Voice \partCombine #'(2 . 88)
              { \global \repeat unfold \verses   \unfoldRepeats \soprano    \bar "|." }
              { \global \repeat unfold \verses { \unfoldRepeats \alto \nl } \bar "|." }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus \chorusB
                                              \wordsTwo   \chorus \chorusB
                                              \wordsThree \chorus \chorusB
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice \partCombine #'(2 . 88)
              { \global \repeat unfold \verses \unfoldRepeats \tenor }
              { \global \repeat unfold \verses \unfoldRepeats \bass  }
            \new NullVoice = alignerT { \repeat unfold \verses \tenor }
          >>
          \new Lyrics \with {alignAboveContext = men} \lyricsto alignerT { \repeat unfold \verses \chorusMen }
        >>
}

\book {
  \bookOutputSuffix "single"
  \score {
    \unfoldRepeats \singlescore
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
    \unfoldRepeats \singlescore
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}
