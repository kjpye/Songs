\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "The Mercy-Seat."
  subtitle    = "Sankey No. 311"
  subsubtitle = "Sankey 880 No. 142"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup {From \smallCaps "Handel"}
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "W. Cowper."
  meter       = \markup\smallCaps "L.M."
  piece       = \markup\smallCaps "Samson."

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

#(set-global-staff-size 17)

global = {
  \key f \major
  \time 4/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s4 s1*3 s2.
  \mark \markup { \box "B" } s4 s1*3 s2.
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  f'4
  a4. bes8 c4 a
  d4 e f f
  c4 d c a8[g]
  f4 g a \bar "|" \break c
  d8[f] e[d] c4 a % B
  bes8[d] c[bes] a4 f'
  e4. d8 c4 f,8[g]
  a4 g f
}

alto = \relative {
  \autoBeamOff
  \once\partCombineApart f'4
  f4. e8 f4 4
  f4 g a a
  f4 4 4 e
  d4 c c f
  f4 4 4 c % B
  d8[f] e[g] f4 a
  g4. e8 f4 4
  f4 e \once\partCombineApart f
}

tenor = \relative {
  \autoBeamOff
  a4
  c4. 8 4 4
  bes4 4 c c
  c4 bes c c
  c8[bes] 4 a a
  bes8[d] c[bes] a4 f % B
  bes4 c g8[c] 4
  c4. 8 4 a
  c4 8[bes] a4
}

bass = \relative {
  \autoBeamOff
  f4
  f4. g8 a4 f
  \once\partCombineApart a4 g f f
  a4 bes a c,
  d4 e f f
  f4 4 4 4 % B
  f4 4 4 4
  c'4. bes8 a4 d,
  c4 4 f
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
}

verses = 3

wordsOne = \lyricmode {
  \set stanza = "1."
  What va -- rious hin -- dran -- ces we meet
  In com -- ing to the mer -- cy seat!
  Yet who, that knows the worth of prayer,
  But wish -- es to be oft -- en there!
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Prayer makes the dark -- ened clouds with -- draw;
  Prayer climbs the lad -- der Ja -- cob saw;
  Gives ex -- er -- cise to faith and love;
  Brings ev -- 'ry bless -- ing from a -- bove.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Re -- strain -- ing prayer, we cease to fight;
  Prayer makes the Christ -- ians's ar -- mour bright;
  And Sa -- tan trem -- bles when he sees
  The weak -- est saint up -- on his knees.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "What " va "rious " hin dran "ces " "we " "meet "
  "\nIn " com "ing " "to " "the " mer "cy " "seat! "
  "\nYet " "who, " "that " "knows " "the " "worth " "of " "prayer, "
  "\nBut " wish "es " "to " "be " oft "en " "there! "

  \set stanza = "2."
  "\nPrayer " "makes " "the " dark "ened " "clouds " with "draw; "
  "\nPrayer " "climbs " "the " lad "der " Ja "cob " "saw; "
  "\nGives " ex er "cise " "to " "faith " "and " "love; "
  "\nBrings " ev "'ry " bless "ing " "from " a "bove. "

  \set stanza = "3."
  "\nRe" strain "ing " "prayer, " "we " "cease " "to " "fight; "
  "\nPrayer " "makes " "the " Christ "ians's " ar "mour " "bright; "
  "\nAnd " Sa "tan " trem "bles " "when " "he " "sees "
  "\nThe " weak "est " "saint " up "on " "his " "knees. "
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
