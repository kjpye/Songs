\version "2.25.0"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "The Banner of the Cross."
  subtitle    = "Sankey No. 675"
  subsubtitle = "Sankey 880 No. 551"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "James McGranahan."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "El nathan."
%  meter       = \markup\smallCaps "meter"
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
  \textMark \markup { \box \bold "A" } s4 s1*2 s2
  \textMark \markup { \box \bold "B" } s2 s1*2 s2.
  \textMark \markup { \box \bold "C" } s4 s1*3
  \textMark \markup { \box \bold "D" }    s1*3
  \textMark \markup { \box \bold "E" }    s1*3 s2.
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  d'8. ees16 | f4 4 4 bes | d,8. ees16 f8. g16 f4 bes8. 16 | a4 c \bar "|" \break
  g4 a | bes2. d,8. ees16 | f4 f f bes | d,8. ees16 f8. g16 f4 \bar "|" \break
  bes8. 16 a4 c g c | f,2.
  \section \sectionLabel \markup\smallCaps "Chorus"
  f8. a16 | c2~4 d8. c16 |
  bes2~4 4 | ees4 4 d8. c16 bes8. d16 | c2~4 f,8. 16 |
  bes4 d f2 | g,4 bes ees2 | d4 4 8 bes c8. 16 | bes2.
}

alto = \relative {
  \autoBeamOff
  bes8. c16 | d4 4 4 4 | bes8. c16 d8. ees16 d4 f8. 16 | ees4 4
  ees4 4 | d2. bes8. c16 | d4 4 4 4 | bes8. c16 d8. ees16 d4
  f8. 16 | 4 4 e e | f2. \section 8. 16 | a4 f a4 8. 16 |
  bes4 d, f d | ees4 g f8. 16 4 | 8 g a bes a[g] f8. ees16 |
  d4 f f f | ees g g g | f f f8 d ees8. 16 | d2.
}

tenor = \relative {
  \autoBeamOff
  f8. 16 | bes4 4 4 f | 8. 16 bes8. 16 4 d8. 16 | c4 a
  c4 f, | f2. 8. 16 | 4 bes bes f | 8. 16 bes8. 16 4
  d8. 16 | c4 a c bes | a2. \section 8. c16 | ees4 4 4 d8. ees16 |
  d4 bes d bes | bes4 4 8. a16 bes4 | a8 bes a g c4 a8. 16 |
  bes4 4 d bes | bes bes bes c | bes4 4 8 8 a8. 16 | bes2.
}

bass = \relative {
  \autoBeamOff
  bes,8. 16 | 4 4 4 4 | 8. 16 8. 16 4 8. 16 | f'4 4
  f4 4 | bes,2. 8. 16 | 4 4 4 4 | 8. 16 8. 16 4
  bes8. 16 c4 4 4 4 | f2. \section 8. 16 | 4 a c f,8. 16 |
  bes,4 f' bes aes | g ees bes8. c16 d4 | f8 e f g f[ees] d8. c16 |
  bes4 4 4 d | ees ees ees c | f4 4 8 8 8. 16 | <bes, f'>2.
}

acctreble = \relative {
  \global \tiny \voiceTwo
  s4 s1*3 |
  <d' bes'>4 \tuplet 3/2 {q8 8 8} 4 s |
  s1*3 | f4 \tuplet 3/2 {<c f>8 8 8} 4 s |
  s1*7 s2.
}

accbass = \relative {
  \global \tiny \voiceThree
  s4 s1*3 |
  <bes, f'>4 \tuplet 3/2 {q8 8 8} 4 s |
  s1*3 | <f' a>4 \tuplet 3/2 {q8 8 8} 4 s |
  s1*7 s2.
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  March -- ing on! on! on!
  March -- ing on! on! on!
  For Christ count ev -- 'ry -- thing,
  ev -- 'ry thing but loss;
  And to crown Him King, we'll toil and sing,
  Be -- neath the ban -- ner of the cross!
}

chorusSop = \lyricmode {
  \repeat unfold 36 _
  March -- ing on! __ March -- ing on! __
  For Christ count ev -- 'ry -- thing but loss;
  And to crown Him King, toil and sing,
  'Neath the ban -- ner of the cross!
}

verses = 4

wordsOne = \lyricmode {
  \set stanza = "1."
  There's a roy -- al ban -- ner giv -- en for dis -- play
  To the sol -- diers of the King;
  As an en -- sign fair we lift it up to -- day,
  While as ran -- somed ones we sing.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Though the foe may rage and gath -- er as the flood,
  Let the stan -- dard be dis -- played!
  And be -- neath its folds, as sol -- diers of the Lord,
  For the truth be not dis -- mayed!
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  O -- ver land and sea, wher -- ev -- er man may dwell,
  Make the flo -- rious ti -- dings known;
  Of the crim -- son ban -- ner mow the sto -- ry tell,
  While the Lord shall claim His own!
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  When the glo -- ry dawns— 'tis draw -- ing ve -- ry near—
  It is hast -- 'ning day by day—
  Then be -- fore our King the foe shall dis -- ap -- pear,
  And the Cross the world shall sway!
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "There's " "a " roy "al " ban "ner " giv "en " "for " dis "play "
  "\nTo " "the " sol "diers " "of " "the " "King; "
  "\nAs " "an " en "sign " "fair " "we " "lift " "it " "up " to "day, "
  "\nWhile " "as " ran "somed " "ones " "we " "sing. "
  "\nMarch" "ing " "on! " "on! " "on! "
  "\nMarch" "ing " "on! " "on! " "on! "
  "\nFor " "Christ " "count " ev 'ry "thing, "
  "\nev" "'ry " "thing " "but " "loss; "
  "\nAnd " "to " "crown " "Him " "King, " "we'll " "toil " "and " "sing, "
  "\nBe" "neath " "the " ban "ner " "of " "the " "cross!\n"

  \set stanza = "2."
  "\nThough " "the " "foe " "may " "rage " "and " gath "er " "as " "the " "flood, "
  "\nLet " "the " stan "dard " "be " dis "played! "
  "\nAnd " be "neath " "its " "folds, " "as " sol "diers " "of " "the " "Lord, "
  "\nFor " "the " "truth " "be " "not " dis "mayed! "
  "\nMarch" "ing " "on! " "on! " "on! "
  "\nMarch" "ing " "on! " "on! " "on! "
  "\nFor " "Christ " "count " ev 'ry "thing, "
  "\nev" "'ry " "thing " "but " "loss; "
  "\nAnd " "to " "crown " "Him " "King, " "we'll " "toil " "and " "sing, "
  "\nBe" "neath " "the " ban "ner " "of " "the " "cross!\n"

  \set stanza = "3."
  "\nO" "ver " "land " "and " "sea, " wher ev "er " "man " "may " "dwell, "
  "\nMake " "the " flo "rious " ti "dings " "known; "
  "\nOf " "the " crim "son " ban "ner " "mow " "the " sto "ry " "tell, "
  "\nWhile " "the " "Lord " "shall " "claim " "His " "own! "
  "\nMarch" "ing " "on! " "on! " "on! "
  "\nMarch" "ing " "on! " "on! " "on! "
  "\nFor " "Christ " "count " ev 'ry "thing, "
  "\nev" "'ry " "thing " "but " "loss; "
  "\nAnd " "to " "crown " "Him " "King, " "we'll " "toil " "and " "sing, "
  "\nBe" "neath " "the " ban "ner " "of " "the " "cross!\n"

  \set stanza = "4."
  "\nWhen " "the " glo "ry " "dawns— " "'tis " draw "ing " ve "ry " "near— "
  "\nIt " "is " hast "'ning " "day " "by " "day— "
  "\nThen " be "fore " "our " "King " "the " "foe " "shall " dis ap "pear, "
  "\nAnd " "the " "Cross " "the " "world " "shall " "sway! "
  "\nMarch" "ing " "on! " "on! " "on! "
  "\nMarch" "ing " "on! " "on! " "on! "
  "\nFor " "Christ " "count " ev 'ry "thing, "
  "\nev" "'ry " "thing " "but " "loss; "
  "\nAnd " "to " "crown " "Him " "King, " "we'll " "toil " "and " "sing, "
  "\nBe" "neath " "the " ban "ner " "of " "the " "cross! "
}

wordsMidiSop = \lyricmode {
  \set stanza = "1."
  "There's " "a " roy "al " ban "ner " giv "en " "for " dis "play "
  "\nTo " "the " sol "diers " "of " "the " "King; "
  "\nAs " "an " en "sign " "fair " "we " "lift " "it " "up " to "day, "
  "\nWhile " "as " ran "somed " "ones " "we " "sing. "
  "\nMarch" "ing " "on! " March "ing " "on! "
  "\nFor " "Christ " "count " ev 'ry "thing " "but " "loss; "
  "\nAnd " "to " "crown " "Him " "King, " "toil " "and " "sing, "
  "\n'Neath " "the " ban "ner " "of " "the " "cross!\n"

  \set stanza = "2."
  "\nThough " "the " "foe " "may " "rage " "and " gath "er " "as " "the " "flood, "
  "\nLet " "the " stan "dard " "be " dis "played! "
  "\nAnd " be "neath " "its " "folds, " "as " sol "diers " "of " "the " "Lord, "
  "\nFor " "the " "truth " "be " "not " dis "mayed! "
  "\nMarch" "ing " "on! " March "ing " "on! "
  "\nFor " "Christ " "count " ev 'ry "thing " "but " "loss; "
  "\nAnd " "to " "crown " "Him " "King, " "toil " "and " "sing, "
  "\n'Neath " "the " ban "ner " "of " "the " "cross!\n"

  \set stanza = "3."
  "\nO" "ver " "land " "and " "sea, " wher ev "er " "man " "may " "dwell, "
  "\nMake " "the " flo "rious " ti "dings " "known; "
  "\nOf " "the " crim "son " ban "ner " "mow " "the " sto "ry " "tell, "
  "\nWhile " "the " "Lord " "shall " "claim " "His " "own! "
  "\nMarch" "ing " "on! " March "ing " "on! "
  "\nFor " "Christ " "count " ev 'ry "thing " "but " "loss; "
  "\nAnd " "to " "crown " "Him " "King, " "toil " "and " "sing, "
  "\n'Neath " "the " ban "ner " "of " "the " "cross!\n"

  \set stanza = "4."
  "\nWhen " "the " glo "ry " "dawns— " "'tis " draw "ing " ve "ry " "near— "
  "\nIt " "is " hast "'ning " "day " "by " "day— "
  "\nThen " be "fore " "our " "King " "the " "foe " "shall " dis ap "pear, "
  "\nAnd " "the " "Cross " "the " "world " "shall " "sway! "
  "\nMarch" "ing " "on! " March "ing " "on! "
  "\nFor " "Christ " "count " ev 'ry "thing " "but " "loss; "
  "\nAnd " "to " "crown " "Him " "King, " "toil " "and " "sing, "
  "\n'Neath " "the " ban "ner " "of " "the " "cross! "
}

wordsMidiMen = \lyricmode {
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
            \new Voice { \repeat unfold \verses \RehearsalTrack }
            \new Voice { \repeat unfold \verses \TempoTrack     }
            \new Voice { \global \repeat unfold \verses \soprano \bar "|." }
          >>
                                % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global \repeat unfold \verses { \alto \nl } \bar "|." }
            \addlyrics \wordsMidi
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
        \new Staff = acc
        <<
          \new Voice { \repeat unfold \verses \acctreble}
          \new Voice { \repeat unfold \verses \accbass}
        >>
      >>
    \midi {}
  }
}

\book {
  \bookOutputSuffix "midi-sop"
  \score {
%    \articulate
    <<
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano
          <<
            \new Voice { \repeat unfold \verses \RehearsalTrack }
            \new Voice { \repeat unfold \verses \TempoTrack     }
            \new Voice { \global \repeat unfold \verses \soprano \bar "|." }
            \addlyrics \wordsMidiSop
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
        \new Staff = acc
        <<
          \new Voice {\repeat unfold \verses \acctreble}
          \new Voice {\repeat unfold \verses \accbass}
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
            \new NullVoice = "alignerS" \soprano
            \new NullVoice = "alignerA" \alto
            \new Voice \partCombine #'(2 . 88) { \global \soprano \bar "|." } { \global \alto }
            \new Lyrics \lyricsto "alignerA" { \wordsOne \chorus }
            \new Lyrics \lyricsto "alignerA"   \wordsTwo
            \new Lyrics \lyricsto "alignerA"   \wordsThree
            \new Lyrics \lyricsto "alignerA"   \wordsFour
            \new Voice \acctreble
          >>
          \new Lyrics \with {alignAboveContext = women} \lyricsto alignerS \chorusSop
                                  % Joint tenor/bass staff
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice \partCombine #'(2 . 88) { \global \tenor } { \global \bass }
            \new NullVoice = alignerT { \tenor }
            \new Voice \accbass
          >>
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
            \new NullVoice = "alignerS" { \repeat unfold \verses \soprano }
            \new NullVoice = "alignerA" { \repeat unfold \verses \alto }
            \new Voice \partCombine #'(2 . 88) { \global \repeat unfold \verses \soprano \bar "|." }
                                    { \global \repeat unfold \verses { \alto \nl } \bar "|." }
            \new Lyrics \lyricsto "alignerA" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                              \wordsFour  \chorus
                                            }
            \new Voice {\repeat unfold \verses \acctreble}
          >>
          \new Lyrics \with {alignAboveContext = women} \lyricsto alignerS { \repeat unfold \verses \chorusSop }
                                  % Joint tenor/bass staff
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice \partCombine #'(2 . 88) { \global \repeat unfold \verses \tenor }
                                    { \global \repeat unfold \verses \bass }
            \new NullVoice = alignerT { \repeat unfold \verses \tenor }
            \new Voice {\repeat unfold \verses \accbass}
          >>
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
