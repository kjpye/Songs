\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Rock of Ages"
  subtitle    = "Sankey No. 237 (First tune)"
  subsubtitle = "Sankey 880 No. 697"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup{\smallCaps "R. Redhead," "by per."}
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "A. M. Toplady."
  meter       = \markup\smallCaps "Six 7s."
  piece       = \markup\smallCaps "Redhead, 76."

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key d \major
  \time 4/4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s1*4
  \mark \markup { \box "B" } s1*4
  \mark \markup { \box "C" } s1*4
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
  s1*11
  \tempo 4=100
  s1
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  d'4 4 e fis
  g4. 8 fis2
  d4 4 e fis
  e4 4 d2
  d4 fis a a % B
  b4 4 a2
  d,4 fis a a
  b4. 8 a2
  d,4 4 e fis % C
  g4. 8 fis2
  d4 e fis e
  d4^\markup\italic rit. cis d2
}

alto = \relative {
  \autoBeamOff
  a4 4 cis d
  d4. 8 2
  a4 b cis d
  d4 cis d2
  d4 4 e fis % B
  d4 e fis2
  d4 4 e cis
  fis4 e8[d] cis2
  d4 4 cis d % C
  d4. 8 2
  d4 cis d b
  a4 4 2
}

tenor = \relative {
  \autoBeamOff
  fis4 4 a a
  b4. 8 a2
  fis4 4 a a
  b4 a fis2
  fis4 b cis d % B
  d4 cis d2
  a4 4 4 4
  a4 fis a2
  a4 4 g a % C
  b4. 8 a2
  a4 g a g
  fis4 e fis2
}

bass = \relative {
  \autoBeamOff
  d4 4 a d
  g,4. 8 d'2
  d4 b a d
  g,4 a d2
  d4 b a d % C
  g4 4 d2
  fis4 d cis fis
  d4 e a2
  fis4 4 e d % C
  g,4. 8 d'2
  fis4 e d g,
  a4 4 d2
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
