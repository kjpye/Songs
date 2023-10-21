\version "2.25.0"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Jesus Only."
  subtitle    = "Sankey No. 711"
  subsubtitle = "Sankey 880 No. 421"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "R. Lowry."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Hattie M. Conrey."
  meter       = \markup\smallCaps "8.7. D."
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key aes \major
  \time 3/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s4 s2.*3 s2
  \textMark \markup { \box \bold "B" } s4 s2.*3 s2
  \textMark \markup { \box \bold "C" } s4 s2.*3 s2
  \textMark \markup { \box \bold "D" } s4 s2.*3 s2
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
 aes'8 bes | c4. aes8 bes c | bes8 aes4. 8 f | ees4. aes8 g aes | bes2 \bar "|" \break
  aes8 bes | c4. aes8 bes c | bes aes4. 8 f | ees4. aes8 bes8. g16 | aes2 \bar "|" \break
  c8 des | ees4. c8 des c | c bes4. 8 c | des4. bes8 c des | c2 \bar "|" \break
  c8 bes | aes4. bes8 aes g | f aes4. 8 bes | c4. aes8 bes8. g16 | aes2
}

alto = \relative {
  \autoBeamOff
  c'8 des | ees4. 8 8 8 | des8 c4. 8 des | c4. ees8 des c | ees2 \bar "|" \break
  c8 des | ees4. 8 8 8 | des c4. ees8 des | c4. 8 des8. 16 | c2
  ees8 8 | 4. 8 8 8 | 8 4. 8 8 | 4. 8 8 8 | 2
  ees8 des | c4. des8 c ees | des f4. ees8 f | ees4. 8 8. 16 | 2
}

tenor = \relative {
  \autoBeamOff
  aes8 8 | 4. 8 g g | aes8 4. 8 8 | 4. 8 ees8 8 | g2
  aes8 8 | 4. 8 g g | aes8 4. 8 8 | 4. 8 g8. bes16 | aes2
  aes8 bes | c4. aes8 bes aes | aes g4. 8 aes | bes4. g8 aes bes | aes2
  aes8 ees | 4. 8 8 aes | 8 4. 8 8 | 4. c8 des8. bes16 | c2
}

bass = \relative {
  \autoBeamOff
  aes,8 8 | 4. c8 ees8 8 | aes,8 4. 8 8 | 4. c8 bes8 aes | ees'2
  aes,8 8 | 4. c8 ees8 8 | aes,8 4. des8 8 | ees4. 8 8. 16 | aes,2
  aes'8 ees | 4. 8 g aes | ees8 4. 8 8 | 4. 8 8 8 | aes2
  aes,8 8 | 4. 8 8 c | des8 4. c8 des | ees4. 8 8. 16 | aes,2
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
  What tho' clouds are hov -- 'ring o'er me,
  And I seem to walk a -- lone—
  Long -- ing, 'mid my cars and cross -- es,
  For the joys that now are flown!
  If I've Je -- sus, “Je -- sus on -- ly,”
  Then my sky will have a gem;
  He's the Sun of bright -- est splen -- dour,
  And the Star of Beth -- le -- hem.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  What tho' all my earth -- ly jour -- ney
  Bring -- eth naught but wea -- ry hours;
  And, in grasp -- ing for life's ro -- ses,
  Thorns I find in -- stead of flow'rs!
  If I've Je -- sus, “Je -- sus on -- ly,”
  I pos -- sess a clus -- ter rare;
  He's the “Li -- ly of the val -- ley,”
  And the “Rose of Sha -- ron” fair.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  What tho' all my heart is yearn -- ing
  For the loved of long a -- go—
  Bit -- ter les -- sons sad -- ly learn -- ing
  From the sha -- dowy page of woe!
  If I've Je -- sus, “Je -- sus on -- ly,”
  He'll be with me at the end;
  And, un -- sene by mor -- tal vi -- ion,
  An -- gel- bands will o'er me bend.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  When I soar to realms of glo -- ry,
  And an en -- trance I a -- wait,
  If I whis -- per, “Je -- sus on -- ly!”
  Wide will ope the pearl -- y gate;
  When I join the heav'n -- ly cho -- rus,
  And the an -- gel- hosts I see,
  Pre -- cious Je -- sus, “Je -- sus on -- ly,”
  Will my theme of rap -- ture be.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "What " "tho' " "clouds " "are " hov "'ring " "o'er " "me, "
  "\nAnd " "I " "seem " "to " "walk " a "lone— "
  "\nLong" "ing, " "'mid " "my " "cars " "and " cross "es, "
  "\nFor " "the " "joys " "that " "now " "are " "flown! "
  "\nIf " "I've " Je "sus, " “Je "sus " on "ly,” "
  "\nThen " "my " "sky " "will " "have " "a " "gem; "
  "\nHe's " "the " "Sun " "of " bright "est " splen "dour, "
  "\nAnd " "the " "Star " "of " Beth le "hem.\n"

  \set stanza = "2."
  "\nWhat " "tho' " "all " "my " earth "ly " jour "ney "
  "\nBring" "eth " "naught " "but " wea "ry " "hours; "
  "\nAnd, " "in " grasp "ing " "for " "life's " ro "ses, "
  "\nThorns " "I " "find " in "stead " "of " "flow'rs! "
  "\nIf " "I've " Je "sus, " “Je "sus " on "ly,” "
  "\nI " pos "sess " "a " clus "ter " "rare; "
  "\nHe's " "the " “Li "ly " "of " "the " val "ley,” "
  "\nAnd " "the " "“Rose " "of " Sha "ron” " "fair.\n"

  \set stanza = "3."
  "\nWhat " "tho' " "all " "my " "heart " "is " yearn "ing "
  "\nFor " "the " "loved " "of " "long " a "go— "
  "\nBit" "ter " les "sons " sad "ly " learn "ing "
  "\nFrom " "the " sha "dowy " "page " "of " "woe! "
  "\nIf " "I've " Je "sus, " “Je "sus " on "ly,” "
  "\nHe'll " "be " "with " "me " "at " "the " "end; "
  "\nAnd, " un "sene " "by " mor "tal " vi "ion, "
  "\nAn" gel "bands " "will " "o'er " "me " "bend.\n"

  \set stanza = "4."
  "\nWhen " "I " "soar " "to " "realms " "of " glo "ry, "
  "\nAnd " "an " en "trance " "I " a "wait, "
  "\nIf " "I " whis "per, " “Je "sus " on "ly!” "
  "\nWide " "will " "ope " "the " pearl "y " "gate; "
  "\nWhen " "I " "join " "the " heav'n "ly " cho "rus, "
  "\nAnd " "the " an gel "hosts " "I " "see, "
  "\nPre" "cious " Je "sus, " “Je "sus " on "ly,” "
  "\nWill " "my " "theme " "of " rap "ture " "be. "
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
