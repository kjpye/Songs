\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "It is Finished!"
  subtitle    = "Sankey No. 142"
  subsubtitle = "Sankey 880 No. 74"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "H. S. Thompson."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "J. Proctor."

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

#(set-global-staff-size 19)

global = {
  \key bes \major
  \time 2/4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s2*5
  \mark \markup { \box "B" } s2*5
  \mark \markup { \box "C" } s2*6
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  bes'8 8 d8. c16
  bes8 g g[f]
  c'8. bes16 a8 bes
  c4 r
  bes8 8 d8. c16 \break
  bes8 g g[f] % B
  \slurDashed c'8(d) ees a,
  bes4 r \bar "||"
  d8^\markup\smallCaps Refrain. d c c
  bes8 bes a4 \break
  g8 g f bes % C
  c4 r
  bes8 8 d8. c16
  bes8 g g[f]
  c'8. d16 ees8 a,
  bes4 r
}

sopranoSingle = \relative {
  \autoBeamOff
  bes'8 8 d8. c16
  bes8 g g[f]
  c'8. bes16 a8 bes
  c4 r
  bes8 8 d8. c16 \break
  bes8 g g[f] % B
  c'8[d] ees a,
  bes4 r \bar "||"
  d8^\markup\smallCaps Refrain. d c c
  bes8 bes a4 \break
  g8 g f bes % C
  c4 r
  bes8 8 d8. c16
  bes8 g g[f]
  c'8. d16 ees8 a,
  bes4 r
% verse 2
  bes8 8 d8. c16
  bes8 g g[f]
  c'8. bes16 a8 bes
  c4 r
  bes8 8 d8. c16 \break
  bes8 g g[f] % B
  c'8 d ees a,
  bes4 r \bar "||"
  d8^\markup\smallCaps Refrain. d c c
  bes8 bes a4 \break
  g8 g f bes % C
  c4 r
  bes8 8 d8. c16
  bes8 g g[f]
  c'8. d16 ees8 a,
  bes4 r
% verse 3
  bes8 8 d8. c16
  bes8 g g[f]
  c'8. bes16 a8 bes
  c4 r
  bes8 8 d8. c16 \break
  bes8 g g[f] % B
  c'8[d] ees a,
  bes4 r \bar "||"
  d8^\markup\smallCaps Refrain. d c c
  bes8 bes a4 \break
  g8 g f bes % C
  c4 r
  bes8 8 d8. c16
  bes8 g g[f]
  c'8. d16 ees8 a,
  bes4 r
% verse 4
  bes8 8 d8. c16
  bes8 g g[f]
  c'8. bes16 a8 bes
  c4 r
  bes8 8 d8. c16 \break
  bes8 g g[f] % B
  c'8 d ees a,
  bes4 r \bar "||"
  d8^\markup\smallCaps Refrain. d c c
  bes8 bes a4 \break
  g8 g f bes % C
  c4 r
  bes8 8 d8. c16
  bes8 g g[f]
  c'8. d16 ees8 a,
  bes4 r
% verse 5
  bes8 8 d8. c16
  bes8 g g[f]
  c'8. bes16 a8 bes
  c4 r
  bes8 8 d8. c16 \break
  bes8 g g[f] % B
  c'8 d ees a,
  bes4 r \bar "||"
  d8^\markup\smallCaps Refrain. d c c
  bes8 bes a4 \break
  g8 g f bes % C
  c4 r
  bes8 8 d8. c16
  bes8 g g[f]
  c'8. d16 ees8 a,
  bes4 r
}

alto = \relative {
  \autoBeamOff
  d'8 f f8. ees16
  d8 d ees[d]
  g8. 16 f8 e
  f4 r
  d8 f f8. fis16
  g8 ees ees[d] % B
  \slurDashed g8(8) 8 f
  f4 r
  f8 8 8 8
  d8 8 4
  bes8 ees d e % C
  f4 r
  f8 8 8. ees16
  d8 ees ees[d]
  g8. 16 8 ees
  d4 r
}

altoSingle = \relative {
  \autoBeamOff
  d'8 f f8. ees16
  d8 d ees[d]
  g8. 16 f8 e
  f4 r
  d8 f f8. fis16
  g8 ees ees[d] % B
  g8[8] 8 f
  f4 r
  f8 8 8 8
  d8 8 4
  bes8 ees d e % C
  f4 r
  f8 8 8. ees16
  d8 ees ees[d]
  g8. 16 8 ees
  d4 r \nl
% verse 2
  d8 f f8. ees16
  d8 d ees[d]
  g8. 16 f8 e
  f4 r
  d8 f f8. fis16
  g8 ees ees[d] % B
  g8 8 8 f
  f4 r
  f8 8 8 8
  d8 8 4
  bes8 ees d e % C
  f4 r
  f8 8 8. ees16
  d8 ees ees[d]
  g8. 16 8 ees
  d4 r \nl
% verse 3
  d8 f f8. ees16
  d8 d ees[d]
  g8. 16 f8 e
  f4 r
  d8 f f8. fis16
  g8 ees ees[d] % B
  g8[8] 8 f
  f4 r
  f8 8 8 8
  d8 8 4
  bes8 ees d e % C
  f4 r
  f8 8 8. ees16
  d8 ees ees[d]
  g8. 16 8 ees
  d4 r \nl
% verse 4
  d8 f f8. ees16
  d8 d ees[d]
  g8. 16 f8 e
  f4 r
  d8 f f8. fis16
  g8 ees ees[d] % B
  g8 8 8 f
  f4 r
  f8 8 8 8
  d8 8 4
  bes8 ees d e % C
  f4 r
  f8 8 8. ees16
  d8 ees ees[d]
  g8. 16 8 ees
  d4 r \nl
% verse 5
  d8 f f8. ees16
  d8 d ees[d]
  g8. 16 f8 e
  f4 r
  d8 f f8. fis16
  g8 ees ees[d] % B
  g8 8 8 f
  f4 r
  f8 8 8 8
  d8 8 4
  bes8 ees d e % C
  f4 r
  f8 8 8. ees16
  d8 ees ees[d]
  g8. 16 8 ees
  d4 r
}

tenor = \relative {
  \autoBeamOff
  f8 d' bes8. a16
  bes8 8 4
  g8. 16 c8 bes
  a4 r
  f8 d' bes8. a16
  g8 bes8 4 % B
  \slurDashed g8(b) c ees
  d4 r
  bes8 8 aes aes
  g8 g fis4
  g8 bes bes bes % C
  a4 r
  bes8 d bes8. a16
  bes8 8 4
  g8. b16 c8 8
  bes4 r
}

tenorSingle = \relative {
  \autoBeamOff
  f8 d' bes8. a16
  bes8 8 4
  g8. 16 c8 bes
  a4 r
  f8 d' bes8. a16
  g8 bes8 4 % B
  g8[b] c ees
  d4 r
  bes8 8 aes aes
  g8 g fis4
  g8 bes bes bes % C
  a4 r
  bes8 d bes8. a16
  bes8 8 4
  g8. b16 c8 8
  bes4 r
% verse 2
  f8 d' bes8. a16
  bes8 8 4
  g8. 16 c8 bes
  a4 r
  f8 d' bes8. a16
  g8 bes8 4 % B
  g8 b c ees
  d4 r
  bes8 8 aes aes
  g8 g fis4
  g8 bes bes bes % C
  a4 r
  bes8 d bes8. a16
  bes8 8 4
  g8. b16 c8 8
  bes4 r
% verse 3
  f8 d' bes8. a16
  bes8 8 4
  g8. 16 c8 bes
  a4 r
  f8 d' bes8. a16
  g8 bes8 4 % B
  g8[b] c ees
  d4 r
  bes8 8 aes aes
  g8 g fis4
  g8 bes bes bes % C
  a4 r
  bes8 d bes8. a16
  bes8 8 4
  g8. b16 c8 8
  bes4 r
% verse 4
  f8 d' bes8. a16
  bes8 8 4
  g8. 16 c8 bes
  a4 r
  f8 d' bes8. a16
  g8 bes8 4 % B
  g8 b c ees
  d4 r
  bes8 8 aes aes
  g8 g fis4
  g8 bes bes bes % C
  a4 r
  bes8 d bes8. a16
  bes8 8 4
  g8. b16 c8 8
  bes4 r
% verse 5
  f8 d' bes8. a16
  bes8 8 4
  g8. 16 c8 bes
  a4 r
  f8 d' bes8. a16
  g8 bes8 4 % B
  g8 b c ees
  d4 r
  bes8 8 aes aes
  g8 g fis4
  g8 bes bes bes % C
  a4 r
  bes8 d bes8. a16
  bes8 8 4
  g8. b16 c8 8
  bes4 r
}

bass= \relative {
  \autoBeamOff
  bes,8 8 8. f'16
  g8 ees bes4
  ees8. e16 f8 g
  f4 r
  bes,8 8 8. d16
  e8 8 bes4 % B
  \slurDashed e8(d) c f
  bes,4 r
  bes8 8 f' f
  g8 8 d4
  ees8 8 bes g' % C
  f4 r
  d8 bes bes8. f'16
  g8 ees bes4
  ees8. d16 c8 f
  bes,4 r
}

bassSingle = \relative {
  \autoBeamOff
  bes,8 8 8. f'16
  g8 ees bes4
  ees8. e16 f8 g
  f4 r
  bes,8 8 8. d16
  e8 8 bes4 % B
  e8[d] c f
  bes,4 r
  bes8 8 f' f
  g8 8 d4
  ees8 8 bes g' % C
  f4 r
  d8 bes bes8. f'16
  g8 ees bes4
  ees8. d16 c8 f
  bes,4 r
% verse 2
  bes8 8 8. f'16
  g8 ees bes4
  ees8. e16 f8 g
  f4 r
  bes,8 8 8. d16
  e8 8 bes4 % B
  e8 d c f
  bes,4 r
  bes8 8 f' f
  g8 8 d4
  ees8 8 bes g' % C
  f4 r
  d8 bes bes8. f'16
  g8 ees bes4
  ees8. d16 c8 f
  bes,4 r
% verse 3
  bes8 8 8. f'16
  g8 ees bes4
  ees8. e16 f8 g
  f4 r
  bes,8 8 8. d16
  e8 8 bes4 % B
  e8[d] c f
  bes,4 r
  bes8 8 f' f
  g8 8 d4
  ees8 8 bes g' % C
  f4 r
  d8 bes bes8. f'16
  g8 ees bes4
  ees8. d16 c8 f
  bes,4 r
% verse 4
  bes8 8 8. f'16
  g8 ees bes4
  ees8. e16 f8 g
  f4 r
  bes,8 8 8. d16
  e8 8 bes4 % B
  e8 d c f
  bes,4 r
  bes8 8 f' f
  g8 8 d4
  ees8 8 bes g' % C
  f4 r
  d8 bes bes8. f'16
  g8 ees bes4
  ees8. d16 c8 f
  bes,4 r
% verse 5
  bes8 8 8. f'16
  g8 ees bes4
  ees8. e16 f8 g
  f4 r
  bes,8 8 8. d16
  e8 8 bes4 % B
  e8 d c f
  bes,4 r
  bes8 8 f' f
  g8 8 d4
  ees8 8 bes g' % C
  f4 r
  d8 bes bes8. f'16
  g8 ees bes4
  ees8. d16 c8 f
  bes,4 r
}

chorus = \lyricmode {
  "\"It" is fin -- "ish'd!\"" yes, in -- deed,
  Fin -- ish'd ev -- 'ry jot:
  Sin -- ner, this is all you need—
  Tell me, is it not?
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

wordsOne = \lyricmode {
  \set stanza = "1."
  No -- thing ei -- ther great or small—
  No -- thing, sin -- ner, no;
  Je -- sus did it, did it all,
  Long, long a -- go.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  When He, from His lof -- ty throne,
  Stoop'd to do and die,
  Ev -- 'ry -- thing was ful -- ly done:
  \nom heark -- en \yesm to His cry:
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Wea -- ry, work -- ing, bur -- den'd one,
  Where -- fore toil you so?
  Cease you do -- ing; all was done
  Long, long a -- go.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Till to Je -- sus' work you cling
  By a sim -- ple faith,
  "\"Do" -- "ing\"" is a dead -- ly thing—
  \nom "\"Do" -- "ing\"" ends in death.
}
  
wordsFive = \lyricmode {
  \set stanza = "5."
  Cast your dead -- ly "\"do" -- "ing\"" down—
  Down at Je -- sus feet;
  Stand in Him, in Him a -- lone,
  \nom Glo -- rious -- ly \yesm com -- plete.
}
  
wordsSingle = \lyricmode {
  \set stanza = "1."
  No -- thing ei -- ther great or small—
  No -- thing, sin -- ner, no;
  Je -- sus did it, did it all,
  Long, long a -- go.
  "\"It" is fin -- "ish'd!\"" yes, in -- deed,
  Fin -- ish'd ev -- 'ry jot:
  Sin -- ner, this is all you need—
  Tell me, is it not?

  \set stanza = "2."
  When He, from His lof -- ty throne,
  Stoop'd to do and die,
  Ev -- 'ry -- thing was ful -- ly done:
  heark -- en to His cry:
  "\"It" is fin -- "ish'd!\"" yes, in -- deed,
  Fin -- ish'd ev -- 'ry jot:
  Sin -- ner, this is all you need—
  Tell me, is it not?

  \set stanza = "3."
  Wea -- ry, work -- ing, bur -- den'd one,
  Where -- fore toil you so?
  Cease you do -- ing; all was done
  Long, long a -- go.
  "\"It" is fin -- "ish'd!\"" yes, in -- deed,
  Fin -- ish'd ev -- 'ry jot:
  Sin -- ner, this is all you need—
  Tell me, is it not?

  \set stanza = "4."
  Till to Je -- sus' work you cling
  By a sim -- ple faith,
  "\"Do" -- "ing\"" is a dead -- ly thing—
  "\"Do" -- "ing\"" ends in death.
  "\"It" is fin -- "ish'd!\"" yes, in -- deed,
  Fin -- ish'd ev -- 'ry jot:
  Sin -- ner, this is all you need—
  Tell me, is it not?

  \set stanza = "5."
  Cast your dead -- ly "\"do" -- "ing\"" down—
  Down at Je -- sus feet;
  Stand in Him, in Him a -- lone,
  Glo -- rious -- ly com -- plete.
  "\"It" is fin -- "ish'd!\"" yes, in -- deed,
  Fin -- ish'd ev -- 'ry jot:
  Sin -- ner, this is all you need—
  Tell me, is it not?
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "No" "thing " ei "ther " "great " "or " "small— "
  "\nNo" "thing, " sin "ner, " "no; "
  "\nJe" "sus " "did " "it, " "did " "it " "all, "
  "\nLong, " "long " a "go. "
  "\n\"It " "is " fin "ish'd!\" " "yes, " in "deed, "
  "\nFin" "ish'd " ev "'ry " "jot: "
  "\nSin" "ner, " "this " "is " "all " "you " "need— "
  "\nTell " "me, " "is " "it " "not? "

  \set stanza = "2."
  "\nWhen " "He, " "from " "His " lof "ty " "throne, "
  "\nStoop'd " "to " "do " "and " "die, "
  "\nEv" 'ry "thing " "was " ful "ly " "done: "
  "\nheark" "en " "to " "His " "cry: "
  "\n\"It " "is " fin "ish'd!\" " "yes, " in "deed, "
  "\nFin" "ish'd " ev "'ry " "jot: "
  "\nSin" "ner, " "this " "is " "all " "you " "need— "
  "\nTell " "me, " "is " "it " "not? "

  \set stanza = "3."
  "\nWea" "ry, " work "ing, " bur "den'd " "one, "
  "\nWhere" "fore " "toil " "you " "so? "
  "\nCease " "you " do "ing; " "all " "was " "done "
  "\nLong, " "long " a "go. "
  "\n\"It " "is " fin "ish'd!\" " "yes, " in "deed, "
  "\nFin" "ish'd " ev "'ry " "jot: "
  "\nSin" "ner, " "this " "is " "all " "you " "need— "
  "\nTell " "me, " "is " "it " "not? "

  \set stanza = "4."
  "\nTill " "to " Je "sus' " "work " "you " "cling "
  "\nBy " "a " sim "ple " "faith, "
  "\n\"Do" "ing\" " "is " "a " dead "ly " "thing— "
  "\n\"Do" "ing\" " "ends " "in " "death. "
  "\n\"It " "is " fin "ish'd!\" " "yes, " in "deed, "
  "\nFin" "ish'd " ev "'ry " "jot: "
  "\nSin" "ner, " "this " "is " "all " "you " "need— "
  "\nTell " "me, " "is " "it " "not? "

  \set stanza = "5."
  "\nCast " "your " dead "ly " "\"do" "ing\" " "down— "
  "\nDown " "at " Je "sus " "feet; "
  "\nStand " "in " "Him, " "in " "Him " a "lone, "
  "\nGlo" rious "ly " com "plete. "
  "\n\"It " "is " fin "ish'd!\" " "yes, " in "deed, "
  "\nFin" "ish'd " ev "'ry " "jot: "
  "\nSin" "ner, " "this " "is " "all " "you " "need— "
  "\nTell " "me, " "is " "it " "not? "
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
            \new Voice {
               \RehearsalTrack
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
              \TempoTrack
            }
            \new Voice = "women" \partCombine { \global \sopranoSingle \bar "|." } { \global \altoSingle }
            \new NullVoice \sopranoSingle
            \addlyrics \wordsSingle
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \tenorSingle } { \global \bassSingle }
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
               \RehearsalTrack
            }
            \new Voice {
              \TempoTrack
              \TempoTrack
              \TempoTrack
              \TempoTrack
              \TempoTrack
            }
            \new Voice = "women" \partCombine { \global \sopranoSingle \bar "|." } { \global \altoSingle }
            \new NullVoice \sopranoSingle
            \addlyrics \wordsSingle
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \tenorSingle } { \global \bassSingle }
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
            \new Voice {
              \TempoTrack
              \TempoTrack
              \TempoTrack
              \TempoTrack
              \TempoTrack
            }
            \new Voice { \global \sopranoSingle \bar "|." }
            \addlyrics \wordsMidi
          >>
                                  % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global \altoSingle }
          >>
                                  % Tenor staff
          \new Staff = tenor
          <<
            \clef "treble_8"
            \new Voice { \global \tenorSingle }
          >>
                                  % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Voice { \global \bassSingle }
          >>
        >>
    \midi {}
  }
}
