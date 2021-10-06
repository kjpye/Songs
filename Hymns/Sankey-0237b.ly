\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Rock of Ages"
  subtitle    = "Sankey No. 237 (Second tune)"
  subsubtitle = "Sankey 880 No. 61"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Dr. T. Hastings."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "A. M. Toplady."
%  meter       = \markup\smallCaps "Six 7s."
%  piece       = \markup\smallCaps ""

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key bes \major
  \time 3/2
  \partial 2
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s2 s1.*3 s1
  \mark \markup { \box "B" } s2 s1.*3 s1
  \mark \markup { \box "A" } s2 s1.*3 s1
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 2=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  f'4. g8
  f2 d bes'4. g8
  f1 bes4. c8
  d2. c4 bes a
  bes1 \bar "|" \break a4. bes8
  c2. 4 a f % B
  bes1 a4. bes8
  c2. 4 a f
  bes1 \bar "|" \break f4. g8 % A
  f2 d bes'4. g8
  f1 bes4. c8
  d2. c4 bes a
  bes1
}

alto = \relative {
  \autoBeamOff
  d'4. ees8
  d2 bes d4. ees8
  d1 f4. g8
  f2. ees4 d c
  d1 c4. d8
  ees2. 4 4 4 % B
  d1 c4. d8
  ees2. 4 4 4
  d1 d4. ees8
  d2 bes d4. ees8 % A
  d1 f4. g8
  f2. ees4 d c
  d1
}

tenor = \relative {
  \autoBeamOff
  bes4. 8
  bes2 f2 4. bes8
  bes1 4. 8
  bes2. f4 f f
  f1 c'4. bes8
  a2. 4 c a % B
  bes1 c4. bes8
  a2. 4 c a
  bes1 bes4. 8 % A
  bes2 f2 4. bes8
  bes1 4. 8
  bes2. f4 f f
  f1
}

bass = \relative {
  \autoBeamOff
  bes,4. 8
  bes2 2 4. 8
  bes1 d4. ees8
  f2. 4 4 4
  bes,1 f'4. 8
  f2. 4 4 4 % B
  bes,1 f'4. 8
  f2. 4 4 4
  bes,1 bes4. 8
  bes2 2 4. 8 % A
  bes1 d4. ees8
  f2. 4 4 4
  bes,1
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
}

verses = 4

wordsOne = \lyricmode {
  \set stanza = "1."
  Rock of A -- ges, cleft for me,
  Let me hide my -- self in Thee!
  Let the wa -- ter and the blood,
  From Thy riv -- en side which flowed,
  Be of sin the dou -- ble cure—
  Save me from its guilt and power.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Not the la -- bour of my hands
  Can ful -- fil Thy law's de -- mands;
  Could my zeal no res -- pite know,
  Could my tears for ev -- er flow,
  All for sin could not a -- tone;
  Thou must save, and Thou a -- lone.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  No -- thing in my hand I bring;
  Simp -- ly to Thy Cross I cling!
  Na -- ked, come to Thee for grace:
  Help -- less, look to Thee for graec;
  Foul, I to the foun -- tain fly;
  Wash me, Sa -- viour, or I die!
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  While I draw this fleet -- ing breath,
  When mine eyes shall close in death,
  When I soar to world's un -- known,
  See Thee on Thy judg -- ment throne;
  Rock of A -- ges, cleft for me,
  Let me hide my -- self in Thee.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Rock " "of " A "ges, " "cleft " "for " "me, "
  "\nLet " "me " "hide " my "self " "in " "Thee! "
  "\nLet " "the " wa "ter " "and " "the " "blood, "
  "\nFrom " "Thy " riv "en " "side " "which " "flowed, "
  "\nBe " "of " "sin " "the " dou "ble " "cure— "
  "\nSave " "me " "from " "its " "guilt " "and " "power. "

  \set stanza = "2."
  "\nNot " "the " la "bour " "of " "my " "hands "
  "\nCan " ful "fil " "Thy " "law's " de "mands; "
  "\nCould " "my " "zeal " "no " res "pite " "know, "
  "\nCould " "my " "tears " "for " ev "er " "flow, "
  "\nAll " "for " "sin " "could " "not " a "tone; "
  "\nThou " "must " "save, " "and " "Thou " a "lone. "

  \set stanza = "3."
  "\nNo" "thing " "in " "my " "hand " "I " "bring; "
  "\nSimp" "ly " "to " "Thy " "Cross " "I " "cling! "
  "\nNa" "ked, " "come " "to " "Thee " "for " "grace: "
  "\nHelp" "less, " "look " "to " "Thee " "for " "graec; "
  "\nFoul, " "I " "to " "the " foun "tain " "fly; "
  "\nWash " "me, " Sa "viour, " "or " "I " "die! "

  \set stanza = "4."
  "\nWhile " "I " "draw " "this " fleet "ing " "breath, "
  "\nWhen " "mine " "eyes " "shall " "close " "in " "death, "
  "\nWhen " "I " "soar " "to " "world's " un "known, "
  "\nSee " "Thee " "on " "Thy " judg "ment " "throne; "
  "\nRock " "of " A "ges, " "cleft " "for " "me, "
  "\nLet " "me " "hide " my "self " "in " "Thee. "
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
%            \new Lyrics \lyricsto "aligner" \wordsMidi
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
    system-system-spacing.basic-distance = #22
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

\book {
  \bookOutputSuffix "midi"
  \score {
%    \articulate
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano
          <<
            \new Voice { \repeat unfold \verses \TempoTrack }
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
