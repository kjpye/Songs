\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "The Gospel of Thy Grace."
  subtitle    = "Sankey No. 490"
  subsubtitle = "Sankey 880 No. 426"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "James McGranahan."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "A. T. Pierson, D. D."
  meter       = \markup\smallCaps "6.6.6.6.8.8."
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key g \major
  \time 2/2
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s4 s1*5
  \mark \markup { \box "B" }    s1*5
  \mark \markup { \box "C" }    s1*5 s2.
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff \partial 4
  d'4 | g4. a8 b4 c | d2(b4) g | b4 a g fis | d2. 4 | fis g a b |
  c2. b4 | a d d cis | d2. \bar "||" 4^\markup\smallCaps Refrain. | e4. dis8 e4 cis | d4. cis8 d4 b |
  c4. b8 c4 a b g a d, | g4.(a8 b4) c | d2. c4 | b2 a | g2.
}

alto = \relative {
  \autoBeamOff \partial 4
  d'4 | 4. fis8 g4 a | g2. 4 | 4 fis g d | d2. 4 | 4 4 f g |
  a2. g4 | fis fis g g | fis2. g4 | 4. 8 4 4 | 4. 8 4 4 |
  a4. gis8 a4 fis | g g fis d | 4.(fis8 g4) fis | g4.(a8 b4) a | g2 fis4(d) | 2.
}

tenor = \relative {
  \autoBeamOff \partial 4
  b4 | 4. c8 d4 c | b2(d4) 4 | 4 c b a | b2. 4 | a b c d |
  d2. 4 | 4 a a a | 2. b4 | c4. b8 c4 ais | b4. ais8 b4 d |
  d4. 8 4 4 | 4 4 4 4 | 2. 4 | d4.(c8 b4) e | d2 4(c) | b2.
}

bass = \relative {
  \autoBeamOff \partial 4
  g4 | 4. 8 4 4 | 2. b,4 | d d d d | g,2. 4 | d' d d d |
  d4(e fis) g | a a a, a | d2. g4 | c,4. 8 4 e | g4. 8 4 4 |
  d4. 8 4 4 | g b, d d8[c] | b4.(d8 g4) a | b4.(a8 g4) c, | d2 2 | g,2.
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  Shall ev -- er -- last -- ing life re -- "ceive\""
  "\"Shall" ev -- er -- last -- ing life re -- "ceive!\""
}

chorusMen = \lyricmode {
}

verses = 5

wordsOne = \lyricmode {
  \set stanza = "1."
  The gos -- pel of Thy grace
  My stub -- born heart has won;
  For God so loved the world,
  He gave His on -- ly Son,
  That "\"Who" -- so -- ev -- er will be -- lieve,
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  The ser -- pent "\"lift" -- ed "up\""
  Could life and heal -- ing give,
  So Je -- sus on the cross
  Bids me to look and live;
  For "\"Who" -- so -- ev -- er will be -- lieve,
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  "\"The" soul that sin -- neth "dies:\""
  My aw -- ful doom I heard;
  I was for ev -- er lost,
  But for Thy gra -- cious word
  That "\"Who" -- so -- ev -- er will be -- lieve,
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  "\"Not" to con -- demn the "world\""
  The "\"Man" of Sor -- "rows\"" came;
  But that the world might have
  Sal -- va -- tion thro' His name;
  For "\"Who" -- so -- ev -- er will be -- lieve,
}
  
wordsFive = \lyricmode {
  \set stanza = "5."
  "\"Lord," help my un -- be -- "lief!\""
  Give me the peace of faith,
  To rest with child -- like trust
  On what Thy gos -- pel saith,
  That "\"Who" -- so -- ev -- er will be -- lieve,
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "The " gos "pel " "of " "Thy " "grace "
  "\nMy " stub "born " "heart " "has " "won; "
  "\nFor " "God " "so " "loved " "the " "world, "
  "\nHe " "gave " "His " on "ly " "Son, "
  "\nThat " "\"Who" so ev "er " "will " be "lieve, "
  "\nShall " ev er last "ing " "life " re "ceive\" "
  "\n\"Shall " ev er last "ing " "life " re "ceive!\"\n"

  \set stanza = "2."
  "\nThe " ser "pent " "\"lift" "ed " "up\" "
  "\nCould " "life " "and " heal "ing " "give, "
  "\nSo " Je "sus " "on " "the " "cross "
  "\nBids " "me " "to " "look " "and " "live; "
  "\nFor " "\"Who" so ev "er " "will " be "lieve, "
  "\nShall " ev er last "ing " "life " re "ceive\" "
  "\n\"Shall " ev er last "ing " "life " re "ceive!\"\n"

  \set stanza = "3."
  "\n\"The " "soul " "that " sin "neth " "dies:\" "
  "\nMy " aw "ful " "doom " "I " "heard; "
  "\nI " "was " "for " ev "er " "lost, "
  "\nBut " "for " "Thy " gra "cious " "word "
  "\nThat " "\"Who" so ev "er " "will " be "lieve, "
  "\nShall " ev er last "ing " "life " re "ceive\" "
  "\n\"Shall " ev er last "ing " "life " re "ceive!\"\n"

  \set stanza = "4."
  "\n\"Not " "to " con "demn " "the " "world\" "
  "\nThe " "\"Man " "of " Sor "rows\" " "came; "
  "\nBut " "that " "the " "world " "might " "have "
  "\nSal" va "tion " "thro' " "His " "name; "
  "\nFor " "\"Who" so ev "er " "will " be "lieve, "
  "\nShall " ev er last "ing " "life " re "ceive\" "
  "\n\"Shall " ev er last "ing " "life " re "ceive!\"\n"

  \set stanza = "5."
  "\n\"Lord, " "help " "my " un be "lief!\" "
  "\nGive " "me " "the " "peace " "of " "faith, "
  "\nTo " "rest " "with " child "like " "trust "
  "\nOn " "what " "Thy " gos "pel " "saith, "
  "\nThat " "\"Who" so ev "er " "will " be "lieve, "
  "\nShall " ev er last "ing " "life " re "ceive\" "
  "\n\"Shall " ev er last "ing " "life " re "ceive!\" "
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
            \new Voice \partCombine #'(2 . 88) { \global \soprano \bar "|." } { \global \alto }
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
                                              \wordsFive  \chorus
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
