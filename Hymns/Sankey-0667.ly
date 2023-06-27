\version "2.25.0"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Saviour, Teach me Day by Day."
  subtitle    = "Sankey No. 667"
%  subsubtitle = "Sankey 880 No. Y"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "R. W. Beaty."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Jane E. Leeson."
  meter       = \markup\smallCaps "7.7.7.7. D."
  piece       = \markup\smallCaps "Tichfield."

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key ees \major
  \time 4/4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s1*5
  \textMark \markup { \box \bold "B" } s1*5
  \textMark \markup { \box \bold "C" } s1*6
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  g'4 bes8[aes] g4 bes | ees d8[c] bes2 | 4 ees, aes g | 4. f8 2 | g4 bes8[aes] g4 bes |
  ees4 d8[c] bes2 | 4 ees, aes g | g f ees2 | aes4 g c bes | d c8[bes] ees2 |
  d4 c bes g | bes aes8[g] f2 | g4 bes8[aes] g4 bes | ees4 d8[c] bes2 | c4 bes aes g | g f ees2 |
}

alto = \relative {
  \autoBeamOff
  ees'4 f ees d | ees4 4 2 | 4 4 d ees | 4. 8 d2 | ees4 4 4 f |
  ees4 4 d2 | ees4 4 4 4 | 4 d ees2 | f4 ees d ees | f ees8[d] ees2 |
  g4 ees f ees | ees c d2 | ees4 f ees f | ees f8[ees] d2 | 4 ees4 4 4 | 4 d ees2 |
}

tenor = \relative {
  \autoBeamOff
  bes4 4 4 4 | 4 aes g2 | 4 bes4 4 4 | c4. 8 bes2 | 4 c bes bes |
  g4 a bes2 | 4 g c c | bes4 8[aes] g2 | bes4 4 aes bes | 4 4 2 |
  bes4 aes f bes | 4 ees, bes'2 | 4 4 4 4 | g a bes2 | aes4 g aes c | bes4 8[aes] g2 |
}

bass = \relative {
  \autoBeamOff
  ees4 d ees f | g4 aes ees2 | 4 g f ees | aes,4 a bes2 | ees4 4 4 d |
  c4 f bes,2 | g4 c aes aes | bes bes ees2 | d4 ees f g | aes4 4 g2 |
  g4 aes d, ees | g, aes bes2 | ees4 d ees d | c f bes,2 | f'4 g c, aes | bes4 4 ees2 |
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
  Sa -- viour, teach me, day by day,
  Love's sweet les -- son to o -- bey;
  Sweet -- er les -- son can -- not be,
  Lov -- ing Him who first loved me.
  Teach me, I am not my own,
  I am Thine, amd Thine a -- lone;
  Thine to keep, to rule, to save,
  From all sin that would en -- slave.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  With a child's glad heart of love,
  At Thy bid -- ding may I move;
  Prompt to serve and fol -- low Thee,
  Lov -- ing Him who first loved me.
  Tho' Thy will should cross my own,
  May it in -- stant -- ly be done;
  Thus may I re -- joice to show
  That I feel the love I owe.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Thine, Lord, was a bit -- ter cup—
  Thou did'st meek -- ly drink it up;
  Thou, the Fa -- ther's on -- ly son,
  Ev -- er saidst, Thy will be done.
  Teach me thus Thy steps to trace,
  Strong to fol -- low in Thy grace;
  Learn -- ing how to love from Thee,
  Lov -- ing Him who so loved me.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Love in lov -- ing finds em -- ploy,
  In o -- be -- dience all her joy;
  Ev -- er new that joy will be,
  Lov -- ing Him who first loved me.
  Though a fool -- ish child and weak,
  More than this I need not seek;
  Sing -- ing. till Thy face I see,
  Of His love who first loved me.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Sa" "viour, " "teach " "me, " "day " "by " "day, "
  "\nLove's " "sweet " les "son " "to " o "bey; "
  "\nSweet" "er " les "son " can "not " "be, "
  "\nLov" "ing " "Him " "who " "first " "loved " "me. "
  "\nTeach " "me, " "I " "am " "not " "my " "own, "
  "\nI " "am " "Thine, " "amd " "Thine " a "lone; "
  "\nThine " "to " "keep, " "to " "rule, " "to " "save, "
  "\nFrom " "all " "sin " "that " "would " en "slave.\n"

  \set stanza = "2."
  "\nWith " "a " "child's " "glad " "heart " "of " "love, "
  "\nAt " "Thy " bid "ding " "may " "I " "move; "
  "\nPrompt " "to " "serve " "and " fol "low " "Thee, "
  "\nLov" "ing " "Him " "who " "first " "loved " "me. "
  "\nTho' " "Thy " "will " "should " "cross " "my " "own, "
  "\nMay " "it " in stant "ly " "be " "done; "
  "\nThus " "may " "I " re "joice " "to " "show "
  "\nThat " "I " "feel " "the " "love " "I " "owe.\n"

  \set stanza = "3."
  "\nThine, " "Lord, " "was " "a " bit "ter " "cup— "
  "\nThou " "did'st " meek "ly " "drink " "it " "up; "
  "\nThou, " "the " Fa "ther's " on "ly " "son, "
  "\nEv" "er " "saidst, " "Thy " "will " "be " "done. "
  "\nTeach " "me " "thus " "Thy " "steps " "to " "trace, "
  "\nStrong " "to " fol "low " "in " "Thy " "grace; "
  "\nLearn" "ing " "how " "to " "love " "from " "Thee, "
  "\nLov" "ing " "Him " "who " "so " "loved " "me.\n"

  \set stanza = "4."
  "\nLove " "in " lov "ing " "finds " em "ploy, "
  "\nIn " o be "dience " "all " "her " "joy; "
  "\nEv" "er " "new " "that " "joy " "will " "be, "
  "\nLov" "ing " "Him " "who " "first " "loved " "me. "
  "\nThough " "a " fool "ish " "child " "and " "weak, "
  "\nMore " "than " "this " "I " "need " "not " "seek; "
  "\nSing" "ing. " "till " "Thy " "face " "I " "see, "
  "\nOf " "His " "love " "who " "first " "loved " "me. "
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
