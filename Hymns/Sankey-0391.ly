\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Call Them In."
  subtitle    = "Sankey No. 391"
  subsubtitle = "Sankey 880 No. 197"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Ira D. Sankey."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Anna Shipton."
  meter       = \markup\smallCaps "8.7.D."
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key f \major
  \time 3/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s4 s2.*3 s2
  \mark \markup { \box "B" } s4 s2.*3 s2
  \mark \markup { \box "C" } s4 s2.*3 s2
  \mark \markup { \box "D" } s4 s2.*3 s2
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo \markup\italic Moderato 4=114
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  a'8 bes
  c4. a8 bes d
  c4 a4 8 8
  bes4. a8 g f
  a4(g) \bar "|" \break a8 bes
  c4. a8 bes d % B
  c4 a f8 g
  a8 bes a4 g
  f2 \bar "|" \break c'8 8
  c4. 8 d e % C
  f4 c4 8 8
  c4. 8 e d
  c4(bes) \bar "|" \break a8 bes
  c4. 8 d e % D
  e4 c bes8 d
  c8 f, a4 g
  f2
}

alto = \relative {
  \autoBeamOff
  f'8 g
  a4. f8 g bes
  a4 f4 8 8
  f4. 8 d d
  f4(e) f8 g
  a4. f8 8 8 % B
  f4 4 8 8
  f8 8 4 e
  f2 e8 8
  f4. 8 8 bes % C
  a4 f4 8 8
  e4. 8 g f
  e4(g) f8 g
  a4. f8 8 bes % D
  a4 f4 8 8
  f8 8 4 e
  f2
}

tenor = \relative {
  \autoBeamOff
  c'8 8
  c4. 8 8 8
  c4 4 8 8
  d4. c8 b b
  c2 8 8
  c4. ees8 d bes % B
  a4 c a8 bes
  c8 d c4 bes
  a2 g8 8
  a4. c8 bes c % C
  c4 a4 8 8
  g4. c8 b b
  c2 8 8
  c4. 8 bes c % D
  c4 a d8 bes
  a8 8 c4 bes
  a2
}

bass = \relative {
  \autoBeamOff
  f8 8
  f4. 8 8 8
  f4 4 8 8
  f4. 8 g g
  c,2 f8 8
  f4. 8 8 8 % B
  f4 4 8 8
  f8 bes, c4 4
  f2 c8 8
  f4. a8 bes g % C
  f4 4 8 8
  g4. 8 8 8
  c,2 f8 8
  f4. a8 bes g % D
  f4 4 bes,8 8
  c8 8 4 4
  f2
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
}

chorusMen = \lyricmode {
}

verses = 4

wordsOne = \lyricmode {
  \set stanza = "1."
  "\"Call" them "in\"—" the poor, the wretch -- ed.
  Sin- -- stained wan -- d'rers from the fold;
  Peace and par -- don free -- ly of -- fer;
  Can you weigh their worth with gold?
  "\"Call" them "in\"—" the weak, the wea -- ry,
  La -- den with the doom of sin;
  Bid them come and rest in Je -- sus;
  He is wait -- ing— "\"Call" them "in.\""
  
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  "\"Call" them "in\"—" the Jew, the Gen -- tile;
  Bid the stran -- ger to the feast;
  "\"Call" them "in\"—" the rich, the no -- ble,
  From the high -- est to the least:
  Forth the Fa -- ther runs to meet them,
  He hath all their sor -- rows seen;
  Robe, and ring, and roy -- al san -- dals,
  Wait the lost ones— "\"Call" them "in.\""
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  "\"Call" them "in\"—" the lit -- tle child -- ren,
  Tar -- rying far a -- way, a -- way;
  Wait, oh, wait not for to- -- mor -- row,
  Christ would have them come to- -- day.
  Fol -- low on! the Lamb is lead -- ing!
  He has con -- quered— we shall win;
  Bring the halt and blind to Je -- sus;
  He will heal them— "\"Call" them "in.\""
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  "\"Call" them "in\"—" the bro -- ken heart -- ed,
  Cow -- ering 'neath the brand of shame:
  Speak Love's mes -- sage, low and ten -- der—
  'Twas for sin -- ners Je -- sus came.
  See! the sha -- dows length -- en round us,
  Soon the day- -- dawn will be -- gin;
  Can you leave them lost and lone -- ly?
  Christ is com -- ing— "\"Call" them "in.\""
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "\"Call " "them " "in\"— " "the " "poor, " "the " wretch "ed. "
  "\nSin-" "stained " wan "d'rers " "from " "the " "fold; "
  "\nPeace " "and " par "don " free "ly " of "fer; "
  "\nCan " "you " "weigh " "their " "worth " "with " "gold? "
  "\n\"Call " "them " "in\"— " "the " "weak, " "the " wea "ry, "
  "\nLa" "den " "with " "the " "doom " "of " "sin; "
  "\nBid " "them " "come " "and " "rest " "in " Je "sus; "
  "\nHe " "is " wait "ing— " "\"Call " "them " "in.\" "

  \set stanza = "2."
  "\n\"Call " "them " "in\"— " "the " "Jew, " "the " Gen "tile; "
  "\nBid " "the " stran "ger " "to " "the " "feast; "
  "\n\"Call " "them " "in\"— " "the " "rich, " "the " no "ble, "
  "\nFrom " "the " high "est " "to " "the " "least: "
  "\nForth " "the " Fa "ther " "runs " "to " "meet " "them, "
  "\nHe " "hath " "all " "their " sor "rows " "seen; "
  "\nRobe, " "and " "ring, " "and " roy "al " san "dals, "
  "\nWait " "the " "lost " "ones— " "\"Call " "them " "in.\" "

  \set stanza = "3."
  "\n\"Call " "them " "in\"— " "the " lit "tle " child "ren, "
  "\nTar" "rying " "far " a "way, " a "way; "
  "\nWait, " "oh, " "wait " "not " "for " to- mor "row, "
  "\nChrist " "would " "have " "them " "come " to- "day. "
  "\nFol" "low " "on! " "the " "Lamb " "is " lead "ing! "
  "\nHe " "has " con "quered— " "we " "shall " "win; "
  "\nBring " "the " "halt " "and " "blind " "to " Je "sus; "
  "\nHe " "will " "heal " "them— " "\"Call " "them " "in.\" "

  \set stanza = "4."
  "\n\"Call " "them " "in\"— " "the " bro "ken " heart "ed, "
  "\nCow" "ering " "'neath " "the " "brand " "of " "shame: "
  "\nSpeak " "Love's " mes "sage, " "low " "and " ten "der— "
  "\n'Twas " "for " sin "ners " Je "sus " "came. "
  "\nSee! " "the " sha "dows " length "en " "round " "us, "
  "\nSoon " "the " day- "dawn " "will " be "gin; "
  "\nCan " "you " "leave " "them " "lost " "and " lone "ly? "
  "\nChrist " "is " com "ing— " "\"Call " "them " "in.\" "
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
            \new Voice { \repeat unfold \verses \RehearsalTrack }
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
