\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "I Come, O Blessed Lord!"
  subtitle    = "Sankey No. 467"
%  subsubtitle = "Sankey 880 No. Y"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Ira D. Sankey."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Ellen K. Bradford."
%  meter       = \markup\smallCaps "meter"
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key aes \major
  \time 4/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s4 s1*3 s2.
  \mark \markup { \box "B" } s4 s1*3 s2.
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff \partial 4
  ees'4 | c'4. 8 bes4 c | aes ees f aes | ees2 c' | bes2. \bar "|" \break 8.[c16] |
  des4. 8 c4 bes | c aes f bes | aes2. g4 | aes2.\fermata
}

alto = \relative {
  \autoBeamOff \partial 4
  c'4 | ees4. 8 des4 ees | c4 4 des des | c2 ees | ees2. 4 |
  ees4. 8 4 4 | 4 4 des f | ees2. des4 | c2.\fermata
}

tenor = \relative {
  \autoBeamOff \partial 4
  aes4 | 4. 8 ees4 4 | 4 aes aes aes | aes2 2 | g2. 8.[aes16] |
  bes4. 8 aes4 g | aes aes aes des | bes(c des) bes | aes2._\fermata
}

bass = \relative {
  \autoBeamOff \partial 4
  aes,4 | 4. 8 4 4 | 4 4 des f | aes2 aes, | ees'2. 4 |
  ees4. 8 4 4 | aes, c des bes | ees2. 4 | aes,2.\fermata
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
}

chorusMen = \lyricmode {
}

verses = 5

wordsOne = \lyricmode {
  \set stanza = "1."
  I come, O bles -- sed Lord, to Thee
  I come to -- day;
  I am no long -- er sat -- is -- fied
  To stay a -- way.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  I will not wait un -- til my life
  Like Thine shall grow;
  I'll come at once— I know I've sinned:
  I'll tell Thee so.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  It is e -- nough for me to know,
  Thou wilt re -- ceive
  And cleanse my heart from ev -- 'ry sin
  If I be -- lieve.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Help me that I for -- get my -- self
  In lov -- ing Thee;
  And let Thine im -- age on my heart
  Re -- flect -- ed he.
}
  
wordsFive = \lyricmode {
  \set stanza = "5."
  Oh, take me, Sa -- viour cru -- ci -- fied,
  And let me prove
  That those who must have been for -- given
  Have most of love.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "I " "come, " "O " bles "sed " "Lord, " "to " "Thee "
  "\nI " "come " to "day; "
  "\nI " "am " "no " long "er " sat is "fied "
  "\nTo " "stay " a "way.\n"

  \set stanza = "2."
  "\nI " "will " "not " "wait " un "til " "my " "life "
  "\nLike " "Thine " "shall " "grow; "
  "\nI'll " "come " "at " "once— " "I " "know " "I've " "sinned: "
  "\nI'll " "tell " "Thee " "so.\n"

  \set stanza = "3."
  "\nIt " "is " e "nough " "for " "me " "to " "know, "
  "\nThou " "wilt " re "ceive "
  "\nAnd " "cleanse " "my " "heart " "from " ev "'ry " "sin "
  "\nIf " "I " be "lieve.\n"

  \set stanza = "4."
  "\nHelp " "me " "that " "I " for "get " my "self "
  "\nIn " lov "ing " "Thee; "
  "\nAnd " "let " "Thine " im "age " "on " "my " "heart "
  "\nRe" flect "ed " "he.\n"

  \set stanza = "5."
  "\nOh, " "take " "me, " Sa "viour " cru ci "fied, "
  "\nAnd " "let " "me " "prove "
  "\nThat " "those " "who " "must " "have " "been " for "given "
  "\nHave " "most " "of " "love.\n"
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
            \new Voice \partCombine { \global \soprano \bar "|." } { \global \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne \chorus }
            \new Lyrics \lyricsto "aligner"   \wordsTwo
            \new Lyrics \lyricsto "aligner"   \wordsThree
            \new Lyrics \lyricsto "aligner"   \wordsFour
            \new Lyrics \lyricsto "aligner"   \wordsFive
          >>
                                  % Joint tenor/bass staff
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice \partCombine { \global \tenor } { \global \bass }
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
            \new Voice \partCombine { \global \repeat unfold \verses \soprano \bar "|." }
                                    { \global \repeat unfold \verses { \alto \nl } \bar "|." }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                              \wordsFour  \chorus
                                              \wordsFive  \chorus
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice \partCombine { \global \repeat unfold \verses \tenor }
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
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}
