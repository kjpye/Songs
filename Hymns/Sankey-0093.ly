\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Altogether Lovely!"
  subtitle    = "Sankey No. 93"
  subsubtitle = "Sankey 880 No. 583"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Geo. F. Root."
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
  \tempo 4=114
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
% \mark \markup { \circle "1a" }
  \mark \markup { \box "A" } s1 s1 s2
  \mark \markup { \box "B" } s2 s1 s1
  \mark \markup { \box "C" } s1 s1 s1
  \mark \markup { \box "D" } s1 s1 s2
  \mark \markup { \box "E" } s2 s1 s1
  \mark \markup { \box "F" } s1 s1 s1
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
}

soprano = \relative {
  \autoBeamOff
  f'8.^\markup\italic Moderato. g16 f8. bes16 c8. bes16 d8. bes16
  g2 c
  a8. bes16 a8. ees'16 \bar "|" \break \partial 2 g,8. a16 g8. ees'16
  d2(bes4) g
  f8. g16 f8. bes16 c8. bes16 d8. bes16
  g2 c % C
  a8. bes16 a8. ees'16 d8. c16 f,8. c'16
  bes1
  d8.^\markup\smallCaps Chorus. ees16 d8. c16 bes8. c16 bes8. a16 % D
  g2 bes
  c8. d16 c8. bes16 \bar "|" \break \partial 2 a8. bes16 a8. g16
  f2. 8. [ees16] % E
  f8. g16 f8. bes16 c8. bes16 d8. bes16
  g2. c4 % F
  a8. bes16 a8. ees'16 d8. c16 f,8. c'16
  bes1
}

alto = \relative {
  \autoBeamOff
  d'8. ees16 d8. 16 ees8. d16 f8. d16
  ees2 2
  c8. 16 8. g'16 ees8. 16 8. g16
  f2(d4) ees % D
  d8. ees16 d8. 16 ees8. d16 f8. d16
  ees2 2 % C
  c8.d16 ees8. g16 f8. ees16 8. 16
  d8. g16 f8. ees16 d2
  fis8. 16 8. 16 g8. a16 g8. f16 % D
  g4(d) ees2
  ees8. 16 8. 16 e8. 16 8. 16
  f2. 8. [ees16] % E
  d8. ees16 d8. 16 ees8. d16 f8. d16
  ees2. 4 % F
  ees8. d16 ees8. g16 f8. ees16 \once\partCombineApart 8. 16
  d8. g16 f8. ees16 d2
}

tenor = \relative {
  \autoBeamOff
  bes8. 16 8. 16 8. 16 8. 16
  c2 g
  f8. 16 8. 16 a8. 16 8. 16
  bes2. 4 % B
  bes8. 16 8. 16 8. 16 8. 16
  c2 g % C
  f8. 16 8. 16 a8. 16 8. 16
  bes8. ees16 d8. c16 bes2
  a8. 16 8. 16 d8. 16 8. c16
  bes2 g
  g8. 16 8. 16 c8. 16 8. 16
  a2(bes4) 8. [a16] % E
  bes8. 16 8. 16 f8. 16 8. 16
  g4(c2) 4 % F
  c8. f,16 8. 16 a8. 16 8. 16
  bes8. ees16 d8. c16 bes2
}

bass= \relative {
  \autoBeamOff
  bes,8. 16 8. 16 8. 16 8. 16
  ees2 2
  f8. 16 8. 16 8. 16 8. 16
  bes,2. 4 % B
  bes8. 16 8. 16 8. 16 8. 16
  ees2 2 % C
  f8. 16 8. 16 8. 16 8. 16
  bes,1
  d4 4 4 4 % D
  g8. a16 g8. f16 ees8. f16 ees8. d16
  c4 4 4 4
  f8. g16 f8. ees16 d8. ees16 d8. c16
  bes2. 4
  ees8. f16 ees8. g16 c8. bes16 a8. g16 % E
  f8. 16 8. 16 8. 16 8. 16
  bes,1
}

chorusBass = \lyricmode {
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _
  Oh, He is the chief, the chief a -- mong ten thou -- sand!
  Roll His praise!
  yes, roll His praise in joy -- ful waves a -- long!
  For "\"al" -- to -- geth -- er, al -- to -- geth -- er love -- "ly!\""
  Shall for -- ev -- er be our song!
}

chorus = \lyricmode {
  Oh, He is the chief a -- mong ten thou -- sand!
  Roll His praise in joy -- ful waves a -- long!
  For "\"Al" -- to -- geth -- er, al -- to -- geth -- er love -- "ly!\""
  Shall for ev -- er be our hap -- py song! our hap -- py song!
}

wordsOne = \lyricmode {
  \set stanza = "1."
  Beau -- ti -- ful the fields be -- yond the riv -- er!
  Glo -- ri -- ous the thou -- sands gath -- ered there!
  But who in heav'n, so full of grace and glo -- ry—
  Who with Him, our Sa -- viour, can com -- pare!
  our King com -- pare?
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  "\"Al" -- to -- geth -- er, al -- to -- geth -- er love -- "ly!\""
  He is call -- ing ten -- der -- ly to thee;
  My soul, why not ac -- cept His great sal -- va -- tion,
  Of -- fered now so rich,
  so full, so free? so full and free?
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  "\"Al" -- to -- geth -- er, al -- to -- geth -- er love -- "ly!\""
  Hear His voice— how ten -- der still the call:
  "\"Come," come, ye wea -- ry ones and hea -- vy -- la -- den,
  Come to Me, and let your bur -- dens fall! your bur -- dens "fall!\""
}
  
wordsMidiSop = \lyricmode {
  \set stanza = "1."
  "Beau" ti "ful " "the " "fields " be "yond " "the " riv "er! "
  "\nGlo" ri "ous " "the " thou "sands " gath "ered " "there! "
  "\nBut " "who " "in " "heav'n, " "so " "full " "of " "grace " "and " glo "ry— "
  "\nWho " "with " "Him, " "our " Sa "viour, " "can " com "pare! "
  "\nOh, " "He " "is " "the " "chief " a "mong " "ten " thou "sand! "
  "\nRoll " "His " "praise " "in " joy "ful " "waves " a "long! "
  "\nFor " "\"Al" to geth "er, " al to geth "er " love "ly!\" "
  "\nShall " "for " ev "er " "be " "our " hap "py " "song! "

  \set stanza = "2."
  "\n\"Al" to geth "er, " al to geth "er " love "ly!\" "
  "\nHe " "is " call "ing " ten der "ly " "to " "thee; "
  "\nMy " "soul, " "why " "not " ac "cept " "His " "great " sal va "tion, "
  "\nOf" "fered " "now " "so " "rich, "
  "\nso " "full, " "so " "free? "
  "\nOh, " "He " "is " "the " "chief " a "mong " "ten " thou "sand! "
  "\nRoll " "His " "praise " "in " joy "ful " "waves " a "long! "
  "\nFor " "\"Al" to geth "er, " al to geth "er " love "ly!\" "
  "\nShall " "for " ev "er " "be " "our " hap "py " "song! "

  \set stanza = "3."
  "\n\"Al" to geth "er, " al to geth "er " love "ly!\" "
  "\nHear " "His " "voice— " "how " ten "der " "still " "the " "call: "
  "\n\"Come, " "come, " "ye " wea "ry " "ones " "and " hea vy la "den, "
  "\nCome " "to " "Me, " "and " "let " "your " bur "dens " "fall!\" "
  "\nOh, " "He " "is " "the " "chief " a "mong " "ten " thou "sand! "
  "\nRoll " "His " "praise " "in " joy "ful " "waves " a "long! "
  "\nFor " "\"Al" to geth "er, " al to geth "er " love "ly!\" "
  "\nShall " "for " ev "er " "be " "our " hap "py " "song! "
}

wordsMidiAlto = \lyricmode {
  \set stanza = "1."
  "Beau" ti "ful " "the " "fields " be "yond " "the " riv "er! "
  "\nGlo" ri "ous " "the " thou "sands " gath "ered " "there! "
  "\nBut " "who " "in " "heav'n, " "so " "full " "of " "grace " "and " glo "ry— "
  "\nWho " "with " "Him, " "our " Sa "viour, " "can " com "pare! "
  "\nour " "King " com "pare? "
  "\nOh, " "He " "is " "the " "chief " a "mong " "ten " thou "sand! "
  "\nRoll " "His " "praise " "in " joy "ful " "waves " a "long! "
  "\nFor " "\"Al" to geth "er, " al to geth "er " love "ly!\" "
  "\nShall " "for " ev "er " "be " "our " hap "py " "song! " "our " hap "py " "song! "

  \set stanza = "2."
  "\n\"Al" to geth "er, " al to geth "er " love "ly!\" "
  "\nHe " "is " call "ing " ten der "ly " "to " "thee; "
  "\nMy " "soul, " "why " "not " ac "cept " "His " "great " sal va "tion, "
  "\nOf" "fered " "now " "so " "rich, "
  "\nso " "full, " "so " "free? " "so " "full " "and " "free? "
  "\nOh, " "He " "is " "the " "chief " a "mong " "ten " thou "sand! "
  "\nRoll " "His " "praise " "in " joy "ful " "waves " a "long! "
  "\nFor " "\"Al" to geth "er, " al to geth "er " love "ly!\" "
  "\nShall " "for " ev "er " "be " "our " hap "py " "song! " "our " hap "py " "song! "

  \set stanza = "3."
  "\n\"Al" to geth "er, " al to geth "er " love "ly!\" "
  "\nHear " "His " "voice— " "how " ten "der " "still " "the " "call: "
  "\n\"Come, " "come, " "ye " wea "ry " "ones " "and " hea vy la "den, "
  "\nCome " "to " "Me, " "and " "let " "your " bur "dens " "fall! " "your " bur "dens " "fall!\" "
  "\nOh, " "He " "is " "the " "chief " a "mong " "ten " thou "sand! "
  "\nRoll " "His " "praise " "in " joy "ful " "waves " a "long! "
  "\nFor " "\"Al" to geth "er, " al to geth "er " love "ly!\" "
  "\nShall " "for " ev "er " "be " "our " hap "py " "song! " "our " hap "py " "song! "
}

wordsMidiTenor = \lyricmode {
  \set stanza = "1."
  "Beau" ti "ful " "the " "fields " be "yond " "the " riv "er! "
  "\nGlo" ri "ous " "the " thou "sands " gath "ered " "there! "
  "\nBut " "who " "in " "heav'n, " "so " "full " "of " "grace " "and " glo "ry— "
  "\nWho " "with " "Him, " "our " Sa "viour, " "can " com "pare! "
  "\nour " "King " com "pare? "
  "\nOh, " "He " "is " "the " "chief " a "mong " "ten " thou "sand! "
  "\nRoll " "His " "praise " "in " joy "ful " "waves " a "long! "
  "\nFor " "\"Al" to geth "er, " al to geth "er " love "ly!\" "
  "\nShall " "for " ev "er " "be " "our " hap "py " "song! " "our " hap "py " "song! "

  \set stanza = "2."
  "\n\"Al" to geth "er, " al to geth "er " love "ly!\" "
  "\nHe " "is " call "ing " ten der "ly " "to " "thee; "
  "\nMy " "soul, " "why " "not " ac "cept " "His " "great " sal va "tion, "
  "\nOf" "fered " "now " "so " "rich, "
  "\nso " "full, " "so " "free? " "so " "full " "and " "free? "
  "\nOh, " "He " "is " "the " "chief " a "mong " "ten " thou "sand! "
  "\nRoll " "His " "praise " "in " joy "ful " "waves " a "long! "
  "\nFor " "\"Al" to geth "er, " al to geth "er " love "ly!\" "
  "\nShall " "for " ev "er " "be " "our " hap "py " "song! " "our " hap "py " "song! "

  \set stanza = "3."
  "\n\"Al" to geth "er, " al to geth "er " love "ly!\" "
  "\nHear " "His " "voice— " "how " ten "der " "still " "the " "call: "
  "\n\"Come, " "come, " "ye " wea "ry " "ones " "and " hea vy la "den, "
  "\nCome " "to " "Me, " "and " "let " "your " bur "dens " "fall! " "your " bur "dens " "fall!\" "
  "\nOh, " "He " "is " "the " "chief " a "mong " "ten " thou "sand! "
  "\nRoll " "His " "praise " "in " joy "ful " "waves " a "long! "
  "\nFor " "\"Al" to geth "er, " al to geth "er " love "ly!\" "
  "\nShall " "for " ev "er " "be " "our " hap "py " "song! " "our " hap "py " "song! "
}

wordsMidiBass = \lyricmode {
  \set stanza = "1."
  "Beau" ti "ful " "the " "fields " be "yond " "the " riv "er! "
  "\nGlo" ri "ous " "the " thou "sands " gath "ered " "there! "
  "\nBut " "who " "in " "heav'n, " "so " "full " "of " "grace " "and " glo "ry— "
  "\nWho " "with " "Him, " "our " Sa "viour, " "can " com "pare! "
  "\nOh, " "He " "is " "the " "chief, " "the " "chief " a "mong " "ten " thou "sand! "
  "\nRoll " "His " "praise! "
  "\nyes, " "roll " "His " "praise " "in " joy "ful " "waves " a "long! "
  "\nFor " "\"al" to geth "er, " al to geth "er " love "ly!\" "
  "\nShall " for ev "er " "be " "our " "song! "

  \set stanza = "2."
  "\n\"Al" to geth "er, " al to geth "er " love "ly!\" "
  "\nHe " "is " call "ing " ten der "ly " "to " "thee; "
  "\nMy " "soul, " "why " "not " ac "cept " "His " "great " sal va "tion, "
  "\nOf" "fered " "now " "so " "rich, " "so " "full, " "so " "free? "
  "\nOh, " "He " "is " "the " "chief, " "the " "chief " a "mong " "ten " thou "sand! "
  "\nRoll " "His " "praise! "
  "\nyes, " "roll " "His " "praise " "in " joy "ful " "waves " a "long! "
  "\nFor " "\"al" to geth "er, " al to geth "er " love "ly!\" "
  "\nShall " for ev "er " "be " "our " "song! "

  \set stanza = "3."
  "\n\"Al" to geth "er, " al to geth "er " love "ly!\" "
  "\nHear " "His " "voice— " "how " ten "der " "still " "the " "call: "
  "\n\"Come, " "come, " "ye " wea "ry " "ones " "and " hea vy la "den, "
  "\nCome " "to " "Me, " "and " "let " "your " bur "dens " "fall!\" "
  "\nOh, " "He " "is " "the " "chief, " "the " "chief " a "mong " "ten " thou "sand! "
  "\nRoll " "His " "praise! "
  "\nyes, " "roll " "His " "praise " "in " joy "ful " "waves " a "long! "
  "\nFor " "\"al" to geth "er, " al to geth "er " love "ly!\" "
  "\nShall " for ev "er " "be " "our " "song! "
}

  
nl = { \bar "||" \break }

\book {
  \bookOutputSuffix "repeat"
  \score {
    \context GrandStaff <<
      <<
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \new Voice \RehearsalTrack
            \new NullVoice = "aligner" \alto
            \new Voice = "women" \partCombine { \global \soprano \bar "|." } { \global \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne \chorus }
            \new Lyrics \lyricsto "aligner"   \wordsTwo
            \new Lyrics \lyricsto "aligner"   \wordsThree
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new NullVoice = alignerBass \bass
            \new Voice = "men" \partCombine { \global \tenor } { \global \bass }
            \new Lyrics \lyricsto alignerBass \chorusBass
          >>
        >>
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
    \context GrandStaff <<
      <<
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \new Voice {
               \RehearsalTrack
               \RehearsalTrack
               \RehearsalTrack
            }
%            \new Voice {
%              \TempoTrack
%              \TempoTrack
%              \TempoTrack
%            }
            \new NullVoice = "aligner" { \alto \alto \alto }
            \new Voice = "women" \partCombine { \global \soprano \soprano \soprano \bar "|." }
                                               { \global \alto \nl \alto \nl \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new NullVoice = alignerBass { \bass \bass \bass }
            \new Voice = "men" \partCombine { \global \tenor \tenor \tenor }
                                            { \global \bass \bass \bass }
            \new Lyrics \lyricsto alignerBass { \chorusBass \chorusBass \chorusBass }
          >>
        >>
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
    \context GrandStaff <<
      <<
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \new Voice {
               \RehearsalTrack
               \RehearsalTrack
               \RehearsalTrack
            }
%            \new Voice {
%              \TempoTrack
%              \TempoTrack
%              \TempoTrack
%            }
            \new NullVoice = "aligner" { \alto \alto \alto }
            \new Voice = "women" \partCombine { \global \soprano \soprano \soprano \bar "|." }
                                               { \global \alto \nl \alto \nl \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new NullVoice = alignerBass { \bass \bass \bass }
            \new Voice = "men" \partCombine { \global \tenor \tenor \tenor }
                                            { \global \bass \bass \bass }
            \new Lyrics \lyricsto alignerBass { \chorusBass \chorusBass \chorusBass }
          >>
        >>
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
  \bookOutputSuffix "midi-sop"
  \score {
%    \articulate
    \context GrandStaff <<
      <<
        \new ChoirStaff <<
                                  % Soprano staff
          \new Staff = soprano
          <<
            \new Voice {
               \RehearsalTrack
               \RehearsalTrack
               \RehearsalTrack
            }
%            \new Voice {
%              \TempoTrack
%              \TempoTrack
%              \TempoTrack
%            }
            \new Voice { \global \soprano \soprano \soprano \bar "|." }
            \addlyrics \wordsMidiSop
          >>
                                  % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global \alto \nl \alto \nl \alto }
          >>
                                  % Tenor staff
          \new Staff  = tenor
          <<
            \clef "treble_8"
            \new Voice { \global \tenor \tenor \tenor }
          >>
                                  % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Voice { \global \bass \bass \bass }
          >>
        >>
      >>
    >>
    \midi {}
  }
}

\book {
  \bookOutputSuffix "midi=alto"
  \score {
%    \articulate
    \context GrandStaff <<
      <<
        \new ChoirStaff <<
                                  % Soprano staff
          \new Staff = soprano
          <<
            \new Voice {
               \RehearsalTrack
               \RehearsalTrack
               \RehearsalTrack
            }
%            \new Voice {
%              \TempoTrack
%              \TempoTrack
%              \TempoTrack
%            }
            \new Voice { \global \soprano \soprano \soprano \bar "|." }
          >>
                                  % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global \alto \nl \alto \nl \alto }
            \addlyrics \wordsMidiAlto
          >>
                                  % Tenor staff
          \new Staff  = tenor
          <<
            \clef "treble_8"
            \new Voice { \global \tenor \tenor \tenor }
          >>
                                  % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Voice { \global \bass \bass \bass }
          >>
        >>
      >>
    >>
    \midi {}
  }
}

\book {
  \bookOutputSuffix "midi-tenor"
  \score {
%    \articulate
    \context GrandStaff <<
      <<
        \new ChoirStaff <<
                                  % Soprano staff
          \new Staff = soprano
          <<
            \new Voice {
               \RehearsalTrack
               \RehearsalTrack
               \RehearsalTrack
            }
%            \new Voice {
%              \TempoTrack
%              \TempoTrack
%              \TempoTrack
%            }
            \new Voice { \global \soprano \soprano \soprano \bar "|." }
          >>
                                  % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global \alto \nl \alto \nl \alto }
          >>
                                  % Tenor staff
          \new Staff  = tenor
          <<
            \clef "treble_8"
            \new Voice { \global \tenor \tenor \tenor }
            \addlyrics \wordsMidiTenor
          >>
                                  % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Voice { \global \bass \bass \bass }
          >>
        >>
      >>
    >>
    \midi {}
  }
}

\book {
  \bookOutputSuffix "midi-bass"
  \score {
%    \articulate
    \context GrandStaff <<
      <<
        \new ChoirStaff <<
                                  % Soprano staff
          \new Staff = soprano
          <<
            \new Voice {
               \RehearsalTrack
               \RehearsalTrack
               \RehearsalTrack
            }
%            \new Voice {
%              \TempoTrack
%              \TempoTrack
%              \TempoTrack
%            }
            \new Voice { \global \soprano \soprano \soprano \bar "|." }
          >>
                                  % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global \alto \nl \alto \nl \alto }
          >>
                                  % Tenor staff
          \new Staff  = tenor
          <<
            \clef "treble_8"
            \new Voice { \global \tenor \tenor \tenor }
          >>
                                  % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Voice { \global \bass \bass \bass }
            \addlyrics \wordsMidiBass
          >>
        >>
      >>
    >>
    \midi {}
  }
}
