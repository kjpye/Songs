\version "2.25.0"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "On to Victory!"
  subtitle    = "Sankey No. 679"
%  subsubtitle = "Sankey 880 No. Y"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "C. S. Kauffman."
%  arranger    = "arranger"
%  opus        = "opus"

%  poet        = \markup\smallCaps ""
  meter       = \markup\smallCaps "9s."
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key g \major
  \time 6/8
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s2.*5
  \textMark \markup { \box \bold "B" } s2.*5
  \textMark \markup { \box \bold "C" } s2.*6
  \textMark \markup { \box \bold "D" } s2.*4
  \textMark \markup { \box \bold "E" } s2.*4
  \textMark \markup { \box \bold "F" } s2.*4
  \textMark \markup { \box \bold "G" } s2.*4
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  d'4. g4 a8 | b8 d4~4 r8 | e4. d4 c8 | b4.~4 r8 | c4. a4 fis8 |
  g8 b4~4 r8 | a4. e'4 cis8 | d4.~4 r8 | d,4. g4 a8 | b8 d4~4 r8 |
  e4. d4 c8 | b4.~4 r8 | c4. d4 e8 | d8 b4~4 r8 | c4. b4 a8 | g4.~4 r8 |
  \section \sectionLabel \markup \smallCaps Chorus.
  d'4.-> d->^\markup\italic Unison. | 4.-> fis, | d8 e fis g a8. ais16 | b4. g |
  d'4.-> d-> | d-> fis, | a8 b a g fis e | d4.(d') |
  d4.-> d-> | d-> fis, | d8 e fis g a8. ais16 | b4. g |
  d'4.-> d-> | e-> c | b8 c b b4 <fis a>8 | g4.~4 r8 |
}

alto = \relative {
  \autoBeamOff
  d'4. 4 8 | g8 4~4 r8 | 4. fis4 a8 | g4.~4 r8 | a4. fis4 d8 |
  d8 g4~4 r8 | 4. 4 8 | fis4.~4 r8 | d4. 4 8 | g8 4~4 r8 |
  g4. fis4 a8 | g4.~4 r8 | g4. 4 8 | 8 4~4 r8 | fis4. 4 8 | g4.~4 r8 |
  d4.-> d-> | d-> s | s2. | s |
  d4.-> d-> | d-> s | fis8 g fis e d cis | d4.~4. |
  d4.-> d-> | d-> s | s2. | s |
  d4.-> d-> | e-> c-> | <d g>8 <e g> <d g> <c d>4 8 | <b d>4.~ 4 r8 |
}

tenor = \relative {
  \autoBeamOff
  b4. 4 c8 | d8 b4~4 r8 | c4. a4 d8 | 4.~4 r8 | 4. c4 8 |
  b8 d4~4 r8 | cis4. 4 e8 | d4.(c4) r8 | b4. 4 c8 | d b4~4 r8 |
  c4. a4 d8 | 4.~4 r8 | c4. b4 ais8 | b d4~4 r8 | a4(e'8) d4 c8 | b4.~4 r8 | \section
  g4. gis | a d, | s2. | s |
  g4. gis | a d, | a'4. 4 g8 | fis8-> g-> a-> c-> b-> a-> |
  g4. gis | a d, | s2. | s |
  g4. fis | e a | d, d4 8 | \partCombineChords g[d b] g'4 r8 |
}

bass = \relative {
  \autoBeamOff
  g4. 4 8 | 8 4~4 r8 | c,4. d4 8 | g4.~4 r8 | d4. 4 8 |
  g8 4~4 r8 | e4. a4 8 | d,4.~4 r8 | g4. 4 8 | 8 4~4 r8 |
  c,4. d4 8 | g4.~4 r8 | e4. d4 cis8 | d8 4~4 r8 | 4. 4 8 | g4.~4 r8 \section |
  g,4. gis | a4. d, | s2. | s |
  g4. gis | a d, | a' a4 8 | d8-> e-> fis-> a-> g-> fis->|
  g,4. gis | a d, | s2. | s |
  g4. fis | e a | d,4. 4 8 | g8 s s g4 r8 |
}

acctreble = \relative {
  s2.*16 \section
  \voiceTwo r8 <g' b>8 8 r <f b> q | r8 <fis c'> q r <c d> q | s2. | s | % D
  \voiceTwo r8 <g' b>8 8 r <f b> q | r8 <fis a> q r <a, d> q | s2. | s |
  \voiceTwo r8 <g' b>8 8 r <f b> q | r8 <fis c'> q r <c d> q | s2. | s |
  \voiceTwo r8 <g' b>8 8 r <f b> q | r8 <fis a> q r <a, d> q | s2. | s |
}

accbass = \relative {
  s2.*16 \section |
  s2. | s | d,8 <d' fis a c> q d, q q | g <d' g b> q g, q q |
  s2.*4 |
  s2. | s | d8 <d' fis a c> q d, q q | g <d' g b> q g, q q |
  s2.*4 |
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  On to vic -- t'ry, fol -- low your migh -- ty Com -- mand -- er!
  On to vic -- t'ry, fol -- low where Je -- sus may go! __
  On to vic -- t'ry, close to your Shield and De -- fend -- er!
  On to vic -- t'ry, con -- quer -- ing ev -- 'ry foe! __
}

chorusMen = \lyricmode {
}

verses = 3

wordsOne = \lyricmode {
  \set stanza = "1."
  Je -- sus is call -- ing! forth to the fray,
  In line be fail -- ing, serve Him to -- day;
  Fol -- low Him ev -- er, call no re -- treat;
  His sol -- diers nev -- er suf -- fer de -- feat.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  He needs you, bro -- ther, do thou His will;
  Your place no oth -- er ev -- er can fill:
  Gird on the ar -- mour, take up the sword,
  Join your com -- mand -- er, fol -- low your Lord.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Morn -- ing is com -- ing, night will be past;
  Soon will the dawn -- ing break in at last—
  Then with the morn -- ing, glo -- rious and bright,
  Rich crowns a dorn -- ing vic -- tors of light.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Je" "sus " "is " call "ing! " "forth " "to " "the " "fray, "
  "\nIn " "line " "be " fail "ing, " "serve " "Him " to "day; "
  "\nFol" "low " "Him " ev "er, " "call " "no " re "treat; "
  "\nHis " sol "diers " nev "er " suf "fer " de "feat. "
  "\nOn " "to " vic "t'ry, " fol "low " "your " migh "ty " Com mand "er! "
  "\nOn " "to " vic "t'ry, " fol "low " "where " Je "sus " "may " "go! " 
  "\nOn " "to " vic "t'ry, " "close " "to " "your " "Shield " "and " De fend "er! "
  "\nOn " "to " vic "t'ry, " con quer "ing " ev "'ry " "foe!\n" 

  \set stanza = "2."
  "\nHe " "needs " "you, " bro "ther, " "do " "thou " "His " "will; "
  "\nYour " "place " "no " oth "er " ev "er " "can " "fill: "
  "\nGird " "on " "the " ar "mour, " "take " "up " "the " "sword, "
  "\nJoin " "your " com mand "er, " fol "low " "your " "Lord. "
  "\nOn " "to " vic "t'ry, " fol "low " "your " migh "ty " Com mand "er! "
  "\nOn " "to " vic "t'ry, " fol "low " "where " Je "sus " "may " "go! " 
  "\nOn " "to " vic "t'ry, " "close " "to " "your " "Shield " "and " De fend "er! "
  "\nOn " "to " vic "t'ry, " con quer "ing " ev "'ry " "foe!\n" 

  \set stanza = "3."
  "\nMorn" "ing " "is " com "ing, " "night " "will " "be " "past; "
  "\nSoon " "will " "the " dawn "ing " "break " "in " "at " "last— "
  "\nThen " "with " "the " morn "ing, " glo "rious " "and " "bright, "
  "\nRich " "crowns " "a " dorn "ing " vic "tors " "of " "light. "
  "\nOn " "to " vic "t'ry, " fol "low " "your " migh "ty " Com mand "er! "
  "\nOn " "to " vic "t'ry, " fol "low " "where " Je "sus " "may " "go! " 
  "\nOn " "to " vic "t'ry, " "close " "to " "your " "Shield " "and " De fend "er! "
  "\nOn " "to " vic "t'ry, " con quer "ing " ev "'ry " "foe! " 
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
            \new Voice { \global \repeat unfold \verses \acctreble}
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
            \new Voice { \global \repeat unfold \verses \accbass}
            \new Voice { \global \repeat unfold \verses \bass }
          >>
        >>
    \layout { }
    \midi {}
  }
}

#(set-global-staff-size 20)

\book {
  \bookOutputSuffix "repeat"
  \score {
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff = women \with { printPartCombineTexts = ##f }
          <<
            \new Voice \RehearsalTrack
            \new Voice \TempoTrack
            \new Voice \acctreble
            \new NullVoice = "aligner" \soprano
            \new Voice \partCombine #'(2 . 88) { \global \soprano \bar "|." } { \global \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne \chorus }
            \new Lyrics \lyricsto "aligner"   \wordsTwo
            \new Lyrics \lyricsto "aligner"   \wordsThree
          >>
                                  % Joint tenor/bass staff
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice \accbass
            \new Voice \partCombine #'(2 . 88) { \global \tenor } { \global \bass }
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
            \new Voice { \global \repeat unfold \verses \acctreble}
            \new NullVoice = "aligner" { \repeat unfold \verses \soprano }
            \new Voice \partCombine #'(2 . 88) { \global \repeat unfold \verses \soprano \bar "|." }
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
            \new Voice { \global \repeat unfold \verses \accbass}
            \new Voice \partCombine #'(2 . 88) { \global \repeat unfold \verses \tenor }
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
      #(layout-set-staff-size 20)
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
      #(layout-set-staff-size 20)
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}
