\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "There is Power in the Blood."
  subtitle    = "Sankey No. 145"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "L. E. Jones."
%  arranger    = "arranger"
%  opus        = "opus"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key bes \major
  \time 4/4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s1*3
  \mark \markup { \box "B" } s1*2 s2..
  \mark \markup { \box "C" } s8 s1*3
  \mark \markup { \box "D" } s1*3
  \mark \markup { \box "E" } s1*4
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  f'4 8 8 4 8 8
  g4 8 8 f4. bes8
  a4 c8. b16 c2
  bes4 d8. cis16 d2 % B
  f,4 8 8 4 8 8
  g4 8 8 f4. \bar "|" \break bes8
  a4 8. 16 c4 bes8 a % C
  bes2. \bar "||" f8^\markup\smallCaps Chorus. bes
  d2-> d->
  c8 bes bes g f4 a8. bes16 % D
  c2. bes8. c16
  d2. f,8 bes \break
  d2-> d-> % E
  c8 bes bes g f4 a8. bes16
  c4. ees8 d4 c8. 16
  bes2. r4
}

alto = \relative {
  \autoBeamOff
  d'4 8 8 4 8 8
  ees4 8 8 d4. f8
  f4 8. 16 4(ees)
  d4 f8. e16 f2 % B
  d4 8 8 4 8 8
  ees4 8 8 d4. f8
  f4 8. 16 ees4 d8 c % C
  d2. 8 8
  f2-> f->
  g8 8 8 ees d4 c8. d16 % D
  ees2. d8. ees16
  f2. d8 8
  f2-> f-> % E
  g8 8 8 ees d4 c8. d16
  ees4. 8 f4 ees8. 16
  d2. r4
}

tenor = \relative {
  \autoBeamOff
  bes4 8 8 4 8 8
  bes4 8 8 4. d8
  c4 a8. g16 a2
  f4 bes8. 16 2 % B
  bes4 8 8 4 8 8
  bes4 8 8 4. d8
  c4 8. 16 a4 f8 8 % C
  f2. bes8 8
  bes4 8 8 2
  bes8 8 8 8 4 r % D
  r4 a8. 16 4 r
  r4 bes8. 16 4 8 8
  bes4 8 8 2 % E
  bes8 8 8 8 4 c8. bes16
  a4. c8 bes4 a8. 16
  bes2. r4
}

bass = \relative {
  \autoBeamOff
  bes,4 8 8 4 8 8
  ees4 8 8 bes4. 8
  f'4 8. 16 2
  bes,4 8. 16 2 % B
  bes4 8 8 4 8 8
  ees4 8 8 bes4. 8
  f'4 8. 16 4 8 8 % C
  bes,2. 8 8
  bes4 d8 f bes2
  ees,8 8 8 8 bes4 r % D
  r4 f'8. 16 4 r
  r4 bes,8. 16 4 8 8
  bes4 d8 g bes2 % E
  ees,8 8 8 8 bes4 f'8. 16
  f4. 8 4 8. 16
  <bes, f'>2. r4
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  There's won -- der -- ful power in the blood.
  There is power, power, won -- der- -- work -- ing power,
  In the blood of the Lamb;
  There is power, power, won -- der- -- work -- ing power,
  In the pre -- cious blood of the Lamb;
}

chorusMen = \lyricmode {
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ -
  _ _ _ _ _ _ _ _ _ -
  _ _ _ _ _ _ _ _
  _ _ _ There is power, _ _ _ _ _
  In the blood of the Lamb;
  _ _ _ There is power,
  _ _ _ _ _
  _ _ _ _ _ _ _ _
}

wordsOne = \lyricmode {
  \set stanza = "1."
  Would you be free from the bur -- den of sin?
  There's power in the blood,
  power in the blood;
  Would you o'er e -- vil a vic -- to -- ry win?
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Would you be free from your pas -- sion and pride?
  There's power in the blood, power in the blood;
  Come for a cleans -- ing to Cal -- va -- ry's tide,
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Would you be whi -- ter, much whi -- ter than snow?
  There's power in the blood, power in the blood;
  Sin- -- stains are lost in its life -- giv -- ing flow,
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Would you do ser -- vice for Je -- sus your King?
  There's power in the blood, power in the blood;
  Would you live dai -- ly His prais -- es to sing?
}
  
wordsMidiWomen = \lyricmode {
  \set stanza = "1."
  "Would " "you " "be " "free " "from " "the " bur "den " "of " "sin? "
  "\nThere's " "power " "in " "the " "blood, "
  "\npower " "in " "the " "blood; "
  "\nWould " "you " "o'er " e "vil " "a " vic to "ry " "win? "
  "\nThere's " won der "ful " "power " "in " "the " "blood. "
  "\nThere " "is " "power, " "power, " won der- work "ing " "power, "
  "\nIn " "the " "blood " "of " "the " "Lamb; "
  "\nThere " "is " "power, " "power, " won der- work "ing " "power, "
  "\nIn " "the " pre "cious " "blood " "of " "the " "Lamb; "

  \set stanza = "2."
  "\nWould " "you " "be " "free " "from " "your " pas "sion " "and " "pride? "
  "\nThere's " "power " "in " "the " "blood, " "power " "in " "the " "blood; "
  "\nCome " "for " "a " cleans "ing " "to " Cal va "ry's " "tide, "
  "\nThere's " won der "ful " "power " "in " "the " "blood. "
  "\nThere " "is " "power, " "power, " won der- work "ing " "power, "
  "\nIn " "the " "blood " "of " "the " "Lamb; "
  "\nThere " "is " "power, " "power, " won der- work "ing " "power, "
  "\nIn " "the " pre "cious " "blood " "of " "the " "Lamb; "

  \set stanza = "3."
  "\nWould " "you " "be " whi "ter, " "much " whi "ter " "than " "snow? "
  "\nThere's " "power " "in " "the " "blood, " "power " "in " "the " "blood; "
  "\nSin-" "stains " "are " "lost " "in " "its " life giv "ing " "flow, "
  "\nThere's " won der "ful " "power " "in " "the " "blood. "
  "\nThere " "is " "power, " "power, " won der- work "ing " "power, "
  "\nIn " "the " "blood " "of " "the " "Lamb; "
  "\nThere " "is " "power, " "power, " won der- work "ing " "power, "
  "\nIn " "the " pre "cious " "blood " "of " "the " "Lamb; "

  \set stanza = "4."
  "\nWould " "you " "do " ser "vice " "for " Je "sus " "your " "King? "
  "\nThere's " "power " "in " "the " "blood, " "power " "in " "the " "blood; "
  "\nWould " "you " "live " dai "ly " "His " prais "es " "to " "sing? "
  "\nThere's " won der "ful " "power " "in " "the " "blood. "
  "\nThere " "is " "power, " "power, " won der- work "ing " "power, "
  "\nIn " "the " "blood " "of " "the " "Lamb; "
  "\nThere " "is " "power, " "power, " won der- work "ing " "power, "
  "\nIn " "the " pre "cious " "blood " "of " "the " "Lamb; "
}
  
wordsMidiMen = \lyricmode {
  \set stanza = "1."
  "Would " "you " "be " "free " "from " "the " bur "den " "of " "sin? "
  "\nThere's " "power " "in " "the " "blood, "
  "\npower " "in " "the " "blood; "
  "\nWould " "you " "o'er " e "vil " "a " vic to "ry " "win? "
  "\nThere's " won der "ful " "power " "in " "the " "blood. "
  "\nThere " "is " "power, " "There " "is " "power, " won der- work "ing " "power, "
  "\nIn " "the " "blood " "of " "the " "Lamb; "
  "\nThere " "is " "power, " "There " "is " "power, " won der- work "ing " "power, "
  "\nIn " "the " pre "cious " "blood " "of " "the " "Lamb; "

  \set stanza = "2."
  "\nWould " "you " "be " "free " "from " "your " pas "sion " "and " "pride? "
  "\nThere's " "power " "in " "the " "blood, " "power " "in " "the " "blood; "
  "\nCome " "for " "a " cleans "ing " "to " Cal va "ry's " "tide, "
  "\nThere's " won der "ful " "power " "in " "the " "blood. "
  "\nThere " "is " "power, " "There " "is " "power, " won der- work "ing " "power, "
  "\nIn " "the " "blood " "of " "the " "Lamb; "
  "\nThere " "is " "power, " "There " "is " "power, " won der- work "ing " "power, "
  "\nIn " "the " pre "cious " "blood " "of " "the " "Lamb; "

  \set stanza = "3."
  "\nWould " "you " "be " whi "ter, " "much " whi "ter " "than " "snow? "
  "\nThere's " "power " "in " "the " "blood, " "power " "in " "the " "blood; "
  "\nSin-" "stains " "are " "lost " "in " "its " life giv "ing " "flow, "
  "\nThere's " won der "ful " "power " "in " "the " "blood. "
  "\nThere " "is " "power, " "There " "is " "power, " won der- work "ing " "power, "
  "\nIn " "the " "blood " "of " "the " "Lamb; "
  "\nThere " "is " "power, " "There " "is " "power, " won der- work "ing " "power, "
  "\nIn " "the " pre "cious " "blood " "of " "the " "Lamb; "

  \set stanza = "4."
  "\nWould " "you " "do " ser "vice " "for " Je "sus " "your " "King? "
  "\nThere's " "power " "in " "the " "blood, " "power " "in " "the " "blood; "
  "\nWould " "you " "live " dai "ly " "His " prais "es " "to " "sing? "
  "\nThere's " won der "ful " "power " "in " "the " "blood. "
  "\nThere " "is " "power, " "There " "is " "power, " won der- work "ing " "power, "
  "\nIn " "the " "blood " "of " "the " "Lamb; "
  "\nThere " "is " "power, " "There " "is " "power, " won der- work "ing " "power, "
  "\nIn " "the " pre "cious " "blood " "of " "the " "Lamb; "
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
            \new NullVoice \tenor
            \addlyrics \chorusMen
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
            \new NullVoice { \tenor \tenor \tenor \tenor }
            \addlyrics { \chorusMen \chorusMen \chorusMen \chorusMen }
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
    system-system-spacing.basic-distance = #22
    system-separator-markup = \slashSeparator
  }
  \score {
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
            \new NullVoice { \tenor \tenor \tenor \tenor }
            \addlyrics { \chorusMen \chorusMen \chorusMen \chorusMen }
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
  \bookOutputSuffix "midi-women"
  \score {
%    \articulate
        \new ChoirStaff <<
                                  % Soprano staff
          \new Staff = soprano
          <<
            \new Voice {
              \TempoTrack
              \TempoTrack
              \TempoTrack
              \TempoTrack
            }
            \new Voice { \global \soprano \soprano \soprano \soprano \bar "|." }
            \addlyrics \wordsMidiWomen
          >>
                                  % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global \alto \nl \alto \nl \alto \nl \alto }
          >>
                                  % Tenor staff
          \new Staff = tenor
          <<
            \clef "treble_8"
            \new Voice { \global \tenor \tenor \tenor \tenor }
          >>
                                  % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Voice { \global \bass \bass \bass \bass }
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
            \new Voice {
              \TempoTrack
              \TempoTrack
              \TempoTrack
              \TempoTrack
            }
            \new Voice { \global \soprano \soprano \soprano \soprano \bar "|." }
          >>
                                  % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global \alto \nl \alto \nl \alto \nl \alto }
          >>
                                  % Tenor staff
          \new Staff = tenor
          <<
            \clef "treble_8"
            \new Voice { \global \tenor \tenor \tenor \tenor }
            \addlyrics \wordsMidiMen
          >>
                                  % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Voice { \global \bass \bass \bass \bass }
          >>
        >>
    \midi {}
  }
}
