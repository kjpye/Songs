\version "2.25.0"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Stand up for Jesus!"
  subtitle    = "Sankey No. 680"
  subsubtitle = "Sankey 880 No. 15"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "G. J. Webb."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "G. Duffield"
  meter       = \markup\smallCaps "7.6.d."
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key bes \major
  \time 4/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s4 s1*3 s2.
  \textMark \markup { \box \bold "B" } s4 s1*3 s2.
  \textMark \markup { \box \bold "C" } s4 s1*3 s2.
  \textMark \markup { \box \bold "B" } s4 s1*3 s2.
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  f'4 | bes4. 8 d4 bes | bes2 g4 bes | f bes c d | c2 r4 \bar "|" \break
  f,4 | bes4. 8 d4 bes | 2 g4 bes | f bes d c | bes2 r4 \bar "|" \break
  f4 c'4. 8 bes4 c | d2 4 4 | ees d g, c | bes2(a4) \bar "|" \break
  f4 | bes4. 8 d4 bes | 2 g4 bes | f bes d c | bes2 r4
}

alto = \relative {
  \autoBeamOff
  d'4 | 4. 8 f4 f | g2 ees4 g | f f f f | 2 r4
  f4 | d4. 8 f4 f | g2 ees4 g | f d f ees | d2 r4
  f4 | 4. 8 4 4 | 2 4 4 | ees f g g | f2.
  f4 | d4. 8 f4 f | g2 ees4 g | f d f ees | d2 r4
}

tenor = \relative {
  \autoBeamOff
  bes4 | f4. 8 bes4 4 | 2 4 4 | 4 4 a bes | a2 r4
  f4 | 4. 8 bes4 4 | 2 4 4 | 4 4 4 a | bes2 r4
  a4 | 4. 8 g4 a | bes2 4 4 | 4 4 4 ees | d2(c4)
  f,4 | 4. 8 bes4 4 | 2 4 4 | 4 4 4 a | bes2 r4
}

bass = \relative {
  \autoBeamOff
  bes,4 | 4. 8 4 d | ees2 4 4 | d d c bes | f'2 r4 
  f4 bes,4. 8 4 d | ees2 4 4 | d bes f' f | bes,2 r4 
  f'4 | 4. 8 4 4 | bes2 4 8[a] | g4 f ees c | f2.
  f4 bes,4. 8 4 d | ees2 4 4 | d bes f' f | bes,2 r4 
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
  Stand up, stand up for Je -- sus,
  Ye sol -- diers of the cross!
  Lift high His roy -- al ban -- ner,
  It must not suf -- fer loss:
  From vic -- t'ry un -- to vic -- t'ry
  His ar -- my shall He lead,
  Till ev -- 'ry foe is van -- quished,
  And Christ is Lord in -- deed,
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Stand up, stand up for Je -- sus!
  The trum -- pet call o -- bey;
  Forth to the migh -- ty con -- flict
  In this His glo -- rious day;
  Ye that are men now serve Him,
  A -- gainst un -- num -- bered foes;
  Let cour -- age rise with dan -- ger,
  And strength to strength op -- pose.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Stand up, stand up for Je -- sus!
  Stand in His strength a -- lone;
  The arm of flesh will fail you—
  Ye dare not trust your own:
  Put on the gos -- pel ar -- mour
  And, watch -- ing un -- to prayer,
  Where du -- ty calls, or dan -- ger,
  Be nev -- er want -- ing there.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Stand up, stand up for Je -- sus!
  The strife will not be long;
  This day the noise of bat -- tle,
  The next the vic -- tor's song:
  To him that o -- ver -- com -- eth
  A crown of life shall be;
  He with the King of Glo -- ry
  Shall reign e -- ter -- nal -- ly.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Stand " "up, " "stand " "up " "for " Je "sus, "
  "\nYe " sol "diers " "of " "the " "cross! "
  "\nLift " "high " "His " roy "al " ban "ner, "
  "\nIt " "must " "not " suf "fer " "loss: "
  "\nFrom " vic "t'ry " un "to " vic "t'ry "
  "\nHis " ar "my " "shall " "He " "lead, "
  "\nTill " ev "'ry " "foe " "is " van "quished, "
  "\nAnd " "Christ " "is " "Lord " in "deed,\n"

  \set stanza = "2."
  "\nStand " "up, " "stand " "up " "for " Je "sus! "
  "\nThe " trum "pet " "call " o "bey; "
  "\nForth " "to " "the " migh "ty " con "flict "
  "\nIn " "this " "His " glo "rious " "day; "
  "\nYe " "that " "are " "men " "now " "serve " "Him, "
  "\nA" "gainst " un num "bered " "foes; "
  "\nLet " cour "age " "rise " "with " dan "ger, "
  "\nAnd " "strength " "to " "strength " op "pose.\n"

  \set stanza = "3."
  "\nStand " "up, " "stand " "up " "for " Je "sus! "
  "\nStand " "in " "His " "strength " a "lone; "
  "\nThe " "arm " "of " "flesh " "will " "fail " "you— "
  "\nYe " "dare " "not " "trust " "your " "own: "
  "\nPut " "on " "the " gos "pel " ar "mour "
  "\nAnd, " watch "ing " un "to " "prayer, "
  "\nWhere " du "ty " "calls, " "or " dan "ger, "
  "\nBe " nev "er " want "ing " "there.\n"

  \set stanza = "4."
  "\nStand " "up, " "stand " "up " "for " Je "sus! "
  "\nThe " "strife " "will " "not " "be " "long; "
  "\nThis " "day " "the " "noise " "of " bat "tle, "
  "\nThe " "next " "the " vic "tor's " "song: "
  "\nTo " "him " "that " o ver com "eth "
  "\nA " "crown " "of " "life " "shall " "be; "
  "\nHe " "with " "the " "King " "of " Glo "ry "
  "\nShall " "reign " e ter nal "ly. "
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
            \new NullVoice = "aligner" \soprano
            \new Voice \partCombine #'(2 . 88) { \global \soprano \bar "|." } { \global \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne \chorus }
            \new Lyrics \lyricsto "aligner"   \wordsTwo
            \new Lyrics \lyricsto "aligner"   \wordsThree
            \new Lyrics \lyricsto "aligner"   \wordsFour
          >>
                                  % Joint tenor/bass staff
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
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
            \new NullVoice = "aligner" { \repeat unfold \verses \soprano }
            \new Voice \partCombine #'(2 . 88) { \global \repeat unfold \verses \soprano \bar "|." }
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
