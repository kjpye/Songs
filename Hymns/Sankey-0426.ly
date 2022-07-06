\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Turn Ye!"
  subtitle    = "Sankey No. 426"
  subsubtitle = "Sankey 880 No. 220"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "I. B. Woodbury."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "J. H."
  meter       = \markup\smallCaps "11s."
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key ees \major
  \time 2/2
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
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  g'4
  g2 4 4
  g2 4 4
  g4(aes) bes c
  bes2. \bar "|" \break bes4
  bes2 4 4 % B
  bes4 c2 bes4
  bes4(aes) aes g
  f2. \bar "|" \break g4
  g2 4 4 % C
  g4 2 4
  g4(aes) bes c
  bes2. \bar "|" \break bes4
  ees2 d4 c % D
  c4(bes) g bes
  bes4(aes) f4. ees8
  ees2.
}

alto = \relative {
  \autoBeamOff
  ees'4
  ees2 4 4
  ees2 4 4
  ees2 4 4
  ees2. 4
  ees2 4 4 % B
  ees4 2 4
  d2 f4 ees
  d2. ees4
  ees2 4 4 % C
  ees4 2 4
  ees2 4 4
  ees2. bes'4
  aes2 ees4 4 % D
  ees2 4 4
  d2 4. ees8
  ees2.
}

tenor = \relative {
  \autoBeamOff
  bes4
  bes2 4 4
  bes2 4 4
  bes2 4 aes
  bes2. 4
  bes2 4 4 % B
  bes4 aes2 bes4
  bes2 4 4
  bes2. 4
  bes2 4 4 % C
  bes4 2 4
  bes4(aes) bes aes
  bes2. g4
  c2 bes4 aes % D
  aes(g) bes bes
  bes2 aes4. g8
  g2.
}

bass = \relative {
  \autoBeamOff
  ees4
  ees2 4 4
  ees2 4 4
  ees4(f) g aes
  g2. 4
  g2 4 4 % B
  g4 aes2 g4
  f2 ees4 4
  bes2. ees4
  ees2 4 4 % C
  ees4 2 4
  ees4(f) g aes
  g2. ees4
  aes,2 4 4 % D
  bes2 4 4
  bes2 4. ees8
  ees2.
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
}

chorusMen = \lyricmode {
}

verses = 3

wordsOne = \lyricmode {
  \set stanza = "1."
  Oh, turn ye, oh, turn ye, for why will ye die,
  When God in great mer -- cy is com -- ing so nigh?
  Now Je -- sus in -- vites you, The Spi -- rit says"\"Come!\""
  And an -- gels are wait -- ing to wel -- come you home.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  How vain the de -- lu -- sion, that while you de -- lay,
  Your hearts may grow bet -- ter, your chains melt a -- way!
  Come guil -- ty, come wretch -- ed, come just as you are:
  All help -- less amd dy -- ing, to Je -- sus re -- pair.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  The con -- trite in heart He will free -- ly re -- ceive;
  Oh, why will you not the glad mes -- sage be -- lieve?
  If sin be your bur -- den, why will ye not come?
  'Tis you He makes wel -- come; He bids you come home.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Oh, " "turn " "ye, " "oh, " "turn " "ye, " "for " "why " "will " "ye " "die, "
  "\nWhen " "God " "in " "great " mer "cy " "is " com "ing " "so " "nigh? "
  "\nNow " Je "sus " in "vites " "you, " "The " Spi "rit " "says " "\"Come!\""
  "\nAnd " an "gels " "are " wait "ing " "to " wel "come " "you " "home. "

  \set stanza = "2."
  "\nHow " "vain " "the " de lu "sion, " "that " "while " "you " de "lay, "
  "\nYour " "hearts " "may " "grow " bet "ter, " "your " "chains " "melt " a "way! "
  "\nCome " guil "ty, " "come " wretch "ed, " "come " "just " "as " "you " "are: "
  "\nAll " help "less " "amd " dy "ing, " "to " Je "sus " re "pair. "

  \set stanza = "3."
  "\nThe " con "trite " "in " "heart " "He " "will " free "ly " re "ceive; "
  "\nOh, " "why " "will " "you " "not " "the " "glad " mes "sage " be "lieve? "
  "\nIf " "sin " "be " "your " bur "den, " "why " "will " "ye " "not " "come? "
  "\n'Tis " "you " "He " "makes " wel "come; " "He " "bids " "you " "come " "home. "
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
            \new Voice \partCombine { \global \repeat unfold \verses \soprano \bar "|." }
                                    { \global \repeat unfold \verses { \alto \nl } \bar "|." }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
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
}

\book {
  \bookOutputSuffix "single"
  \score {
    \singlescore
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
    \singlescore
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}
