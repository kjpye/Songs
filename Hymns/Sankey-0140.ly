\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "All ye that Pass by."
  subtitle    = "Sankey No. 140"
  subsubtitle = "Sankey 880 No. 737"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "B. Milgrove."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "C. Wesley."
  meter       = "5.5.6.5.D."
  piece       = \markup\smallCaps "Harwich."

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key g \major
  \time 3/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
% \mark \markup { \circle "1a" }
  \mark \markup { \box "A" } s4 s2.*5
  \mark \markup { \box "B" } s2.*5
  \mark \markup { \box "C" } s2.*5 s2
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

soprano = \relative {
  \autoBeamOff
  b'8[a]
  g4 4 e
  d2 b'8[a]
  g4 4 e
  d2 a'8[b]
  c4 a d
  b4 g b % B
  b8[a] g[fis] e4
  d2 d'8[c]
  b4 c d
  e2 \slurDashed c8(b)
  a4 b c % C
  d2 b8[c]
  d4 b e
  d4 b g
  g8[a] b4 a
  g2
}

sopranoSingle = \relative {
  \autoBeamOff
  b'8[a]
  g4 4 e
  d2 b'8[a]
  g4 4 e
  d2 a'8[b]
  c4 a d
  b4 g b % B
  b8[a] g[fis] e4
  d2 d'8[c]
  b4 c d
  e2 c8[b]
  a4 b c % C
  d2 b8[c]
  d4 b e
  d4 b g
  g8[a] b4 a
  g2
% verse 2
  b8[a]
  g4 4 e
  d2 b'8[a]
  g4 4 e
  d2 a'8[b]
  c4 a d
  b4 g b % B
  b8[a] g[fis] e4
  d2 d'8[c]
  b4 c d
  e2 c8 b
  a4 b c % C
  d2 b8[c]
  d4 b e
  d4 b g
  g8[a] b4 a
  g2
% verse 3
  b8[a]
  g4 4 e
  d2 b'8[a]
  g4 4 e
  d2 a'8[b]
  c4 a d
  b4 g b % B
  b8[a] g[fis] e4
  d2 d'8[c]
  b4 c d
  e2 c8[b]
  a4 b c % C
  d2 b8[c]
  d4 b e
  d4 b g
  g8[a] b4 a
  g2
% verse 4
  b8[a]
  g4 4 e
  d2 b'8[a]
  g4 4 e
  d2 a'8[b]
  c4 a d \break
  b4 g b % B
  b8[a] g[fis] e4
  d2 d'8[c]
  b4 c d
  e2 c8 b \break
  a4 b c % C
  d2 b8[c]
  d4 b e
  d4 b g
  g8[a] b4 a
  g2
% verse 5
  b8[a]
  g4 4 e
  d2 b'8[a]
  g4 4 e
  d2 a'8[b]
  c4 a d
  b4 g b % B
  b8[a] g[fis] e4
  d2 d'8[c]
  b4 c d
  e2 c8[b]
  a4 b c % C
  d2 b8[c]
  d4 b e
  d4 b g
  g8[a] b4 a
  g2
}

alto = \relative {
  \autoBeamOff
  d'8[c]
  b4 d c
  b2 d4
  d4 c c
  b2 e4
  e4 d d
  d4 4 4 % B
  cis8[d] e[d] cis4
  d2 4
  d4 g g
  g2 \slurDashed c,8(d)
  e4 d d % C
  d2 g4
  g4 4 4
  fis4 g g
  g4 g fis
  g2
}

nl = { \bar "||" \break }

altoSingle = \relative {
  \autoBeamOff
  d'8[c]
  b4 d c
  b2 d4
  d4 c c
  b2 e4
  e4 d d
  d4 4 4 % B
  cis8[d] e[d] cis4
  d2 4
  d4 g g
  g2 c,8[d]
  e4 d d % C
  d2 g4
  g4 4 4
  fis4 g g
  g4 g fis
  g2 \nl
% verse 2
  d8[c]
  b4 d c
  b2 d4
  d4 c c
  b2 e4
  e4 d d
  d4 4 4 % B
  cis8[d] e[d] cis4
  d2 4
  d4 g g
  g2 c,8 d
  e4 d d % C
  d2 g4
  g4 4 4
  fis4 g g
  g4 g fis
  g2 \nl
% verse 3
  d8[c]
  b4 d c
  b2 d4
  d4 c c
  b2 e4
  e4 d d
  d4 4 4 % B
  cis8[d] e[d] cis4
  d2 4
  d4 g g
  g2 c,8[d]
  e4 d d % C
  d2 g4
  g4 4 4
  fis4 g g
  g4 g fis
  g2 \nl
% verse 4
  d8[c]
  b4 d c
  b2 d4
  d4 c c
  b2 e4
  e4 d d
  d4 4 4 % B
  cis8[d] e[d] cis4
  d2 4
  d4 g g
  g2 c,8 d
  e4 d d % C
  d2 g4
  g4 4 4
  fis4 g g
  g4 g fis
  g2 \nl
% verse 5
  d8[c]
  b4 d c
  b2 d4
  d4 c c
  b2 e4
  e4 d d
  d4 4 4 % B
  cis8[d] e[d] cis4
  d2 4
  d4 g g
  g2 c,8[d]
  e4 d d % C
  d2 g4
  g4 4 4
  fis4 g g
  g4 g fis
  g2
}

tenor = \relative {
  \autoBeamOff
  g4
  g4 4 4
  g2 4
  g4 4 4
  g2 e8[gis]
  a4 fis fis
  g4 b g % B
  g8[a] 4 g
  fis2 a4
  g4 4 b
  c2 \slurDashed g8(g)
  g4 4 a % C
  b2 d8[c]
  b4 d c
  a4 g b
  e4 d c
  b2
}

tenorSingle = \relative {
  \autoBeamOff
  g4
  g4 4 4
  g2 4
  g4 4 4
  g2 e8[gis]
  a4 fis fis
  g4 b g % B
  g8[a] 4 g
  fis2 a4
  g4 4 b
  c2 g4
  g4 4 a % C
  b2 d8[c]
  b4 d c
  a4 g b
  e4 d c
  b2
% verse 2
  g4
  g4 4 4
  g2 4
  g4 4 4
  g2 e8[gis]
  a4 fis fis
  g4 b g % B
  g8[a] 4 g
  fis2 a4
  g4 4 b
  c2 g8 g
  g4 4 a % C
  b2 d8[c]
  b4 d c
  a4 g b
  e4 d c
  b2
% verse 3
  g4
  g4 4 4
  g2 4
  g4 4 4
  g2 e8[gis]
  a4 fis fis
  g4 b g % B
  g8[a] 4 g
  fis2 a4
  g4 4 b
  c2 g4
  g4 4 a % C
  b2 d8[c]
  b4 d c
  a4 g b
  e4 d c
  b2
% verse 4
  g4
  g4 4 4
  g2 4
  g4 4 4
  g2 e8[gis]
  a4 fis fis
  g4 b g % B
  g8[a] 4 g
  fis2 a4
  g4 4 b
  c2 g8 g
  g4 4 a % C
  b2 d8[c]
  b4 d c
  a4 g b
  e4 d c
  b2
% verse 5
  g4
  g4 4 4
  g2 4
  g4 4 4
  g2 e8[gis]
  a4 fis fis
  g4 b g % B
  g8[a] 4 g
  fis2 a4
  g4 4 b
  c2 g4
  g4 4 a % C
  b2 d8[c]
  b4 d c
  a4 g b
  e4 d c
  b2
}

bass= \relative {
  \autoBeamOff
  g,4
  g4 b c
  g2 8[a]
  b4 e c
  g'2 c,8[b]
  a4 d d
  g4 4 4 % B
  g8[fis] cis[d] a4
  d2 fis4
  g4 e d
  c2 \slurDashed e8(d)
  c4 b a % C
  g2 g'8[a]
  b4 g c,
  d4 e e
  c4 d d
  g,2
}

bassSingle = \relative {
  \autoBeamOff
  g,4
  g4 b c
  g2 8[a]
  b4 e c
  g'2 c,8[b]
  a4 d d
  g4 4 4 % B
  g8[fis] cis[d] a4
  d2 fis4
  g4 e d
  c2 e8[d]
  c4 b a % C
  g2 g'8[a]
  b4 g c,
  d4 e e
  c4 d d
  g,2
% verse 2
  g4
  g4 b c
  g2 8[a]
  b4 e c
  g'2 c,8[b]
  a4 d d
  g4 4 4 % B
  g8[fis] cis[d] a4
  d2 fis4
  g4 e d
  c2 e8 d
  c4 b a % C
  g2 g'8[a]
  b4 g c,
  d4 e e
  c4 d d
  g,2
% verse 3
  g4
  g4 b c
  g2 8[a]
  b4 e c
  g'2 c,8[b]
  a4 d d
  g4 4 4 % B
  g8[fis] cis[d] a4
  d2 fis4
  g4 e d
  c2 8[d]
  c4 b a % C
  g2 g'8[a]
  b4 g c,
  d4 e e
  c4 d d
  g,2
% verse 4
  g4
  g4 b c
  g2 8[a]
  b4 e c
  g'2 c,8[b]
  a4 d d
  g4 4 4 % B
  g8[fis] cis[d] a4
  d2 fis4
  g4 e d
  c2 e8 d
  c4 b a % C
  g2 g'8[a]
  b4 g c,
  d4 e e
  c4 d d
  g,2
% verse 5
  g4
  g4 b c
  g2 8[a]
  b4 e c
  g'2 c,8[b]
  a4 d d
  g4 4 4 % B
  g8[fis] cis[d] a4
  d2 fis4
  g4 e d
  c2 e8[d]
  c4 b a % C
  g2 g'8[a]
  b4 g c,
  d4 e e
  c4 d d
  g,2
}

chorus = \lyricmode {
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

wordsOne = \lyricmode {
  \set stanza = "1."
  All ye that pass by, To Je -- sus draw nigh;
  To you is it no -- thing That Je -- sus should die?
  Your ran -- som and peace, Your sure -- ty He is,
  Come, see if there ev -- er Was sor -- row like His.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  For what you have done His blood must a -- tone:
  The Fa -- ther hath pun -- ish'd For you His dear Son:
  The Lord in the day \nom Of His \yesm an -- ger did lay
  Your sins on the Lamb, And He bore them a -- way.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  He died to a -- tone For sins not His own;
  Your debt He hath paid and your work He hath done:
  Ye all may re -- ceive The peace He did leave,
  Who made in -- ter -- ces -- sion, "\"My" Fa -- ther, for "give!\""
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  For you and for me He prayed on the tree;
  The prayer is ac -- cept -- ed, The sin -- ner is free:
  The sin -- ner am I, \nom Who on \yesm Je -- sus re -- ly,
  And come for the par -- don God can -- not de -- ny.
}
  
wordsFive = \lyricmode {
  \set stanza = "5."
  His death is my plea; My ad -- vo -- cate see,
  And hear the blood speak That hath an -- swered for me:
  He pur -- chased the grace Which now I em -- brace:
  O Fath -- er, Thou know'st He hath died in my place!
}
  
wordsSingle = \lyricmode {
  \set stanza = "1."
  All ye that pass by, To Je -- sus draw nigh;
  To you is it no -- thing That Je -- sus should die?
  Your ran -- som and peace, Your sure -- ty He is,
  Come, see if there ev -- er Was sor -- row like His.

  \set stanza = "2."
  For what you have done His blood must a -- tone:
  The Fa -- ther hath pun -- ish'd For you His dear Son:
  The Lord in the day Of His an -- ger did lay
  Your sins on the Lamb, And He bore them a -- way.

  \set stanza = "3."
  He died to a -- tone For sins not His own;
  Your debt He hath paid and your work He hath done:
  Ye all may re -- ceive The peace He did leave,
  Who made in -- ter -- ces -- sion, "\"My" Fa -- ther, for "give!\""

  \set stanza = "4."
  For you and for me He prayed on the tree;
  The prayer is ac -- cept -- ed, The sin -- ner is free:
  The sin -- ner am I, Who on \yesm Je -- sus re -- ly,
  And come for the par -- don God can -- not de -- ny.

  \set stanza = "5."
  His death is my plea; My ad -- vo -- cate see,
  And hear the blood speak That hath an -- swered for me:
  He pur -- chased the grace Which now I em -- brace:
  O Fath -- er, Thou know'st He hath died in my place!
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "All " "ye " "that " "pass " "by, " "To " Je "sus " "draw " "nigh; "
  "\nTo " "you " "is " "it " no "thing " "That " Je "sus " "should " "die? "
  "\nYour " ran "som " "and " "peace, " "Your " sure "ty " "He " "is, "
  "\nCome, " "see " "if " "there " ev "er " "Was " sor "row " "like " "His. "

  \set stanza = "2."
  "\nFor " "what " "you " "have " "done " "His " "blood " "must " a "tone: "
  "\nThe " Fa "ther " "hath " pun "ish'd " "For " "you " "His " "dear " "Son: "
  "\nThe " "Lord " "in " "the " "day " "Of " "His " an "ger " "did " "lay "
  "\nYour " "sins " "on " "the " "Lamb, " "And " "He " "bore " "them " a "way. "

  \set stanza = "3."
  "\nHe " "died " "to " a "tone " "For " "sins " "not " "His " "own; "
  "\nYour " "debt " "He " "hath " "paid " "and " "your " "work " "He " "hath " "done: "
  "\nYe " "all " "may " re "ceive " "The " "peace " "He " "did " "leave, "
  "\nWho " "made " in ter ces "sion, " "\"My " Fa "ther, " "for " "give!\" "

  \set stanza = "4."
  "\nFor " "you " "and " "for " "me " "He " "prayed " "on " "the " "tree; "
  "\nThe " "prayer " "is " ac cept "ed, " "The " sin "ner " "is " "free: "
  "\nThe " sin "ner " "am " "I, " "Who " "on " "\yesm " Je "sus " re "ly, "
  "\nAnd " "come " "for " "the " par "don " "God " can "not " de "ny. "

  \set stanza = "5."
  "\nHis " "death " "is " "my " "plea; " "My " ad vo "cate " "see, "
  "\nAnd " "hear " "the " "blood " "speak " "That " "hath " an "swered " "for " "me: "
  "\nHe " pur "chased " "the " "grace " "Which " "now " "I " em "brace: "
  "\nO " Fath "er, " "Thou " "know'st " "He " "hath " "died " "in " "my " "place! "
}
  
\book {
  \bookOutputSuffix "repeat"
  \score {
      <<
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
      <<
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
      <<
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
      <<
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
      >>
    \midi {}
  }
}
