\version "2.25.12"

\include "../kjp.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Strength for To-Day."
  subtitle    = "Sankey No. 800"
%  subsubtitle = "Sankey 880 No. Y"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Victor H. Benke."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "E. E. Rexford."
  meter       = \markup\smallCaps "L.M."
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key ees \major
  \time 3/4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s2.*6
  \textMark \markup { \box \bold "B" } s2.*6
  \textMark \markup { \box \bold "C" } s2.*6
  \textMark \markup { \box \bold "D" } s2.*7
  \textMark \markup { \box \bold "E" } s2.*7
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  g'4 ees f | g2 bes4 | d2 c4 bes2 r4 | ees,4 aes g | c2 aes4 |
  f2 e4 | f2. | g4 ees d | g2 bes4 | b2 d4 | c2 r4 |
  ees4 d c | bes2 ees,4 | g2 f4 | ees2. |
  \section \sectionLabel \markup\smallCaps Chorus.
  f4 g aes | bes2 g4 |
  g2 f4 | bes2 r4 | a c ees | d2 c4 | c2 ces4 | bes2. | 4 d c |
  bes2 g4 | g(bes) aes | g2 r4 | f4 aes c | bes2 g4 | 2 f4 | ees2.\fermata |
}

alto = \relative {
  \autoBeamOff
  ees'4 4 d | ees2 g4 | fis2 4 | g2 r4 | bes,4 ees4 4 | 2 4 |
  d2 cis4 | d2. | ees4 4 d | ees2 4 | f2 4 | ees2 r4 |
  fis4 4 4 | g2 c,4 | d2 4 | ees2. \section | d4 4 4 | ees2 4 |
  d2 4 | ees2 r4 | ees aes4 4 | a2 4 | aes2 4 | 2. | g4 fis4 4 |
  g2 ees4 | 2 4 | 2 r4 | 4 4 4 | 2 4 | d2 4 | ees2.\fermata |
}

tenor = \relative {
  \autoBeamOff
  bes4 g aes | bes2 4 | a2 4 | bes2 r4 | g c bes | aes2 c4 |
  aes2 g4 | aes2. | bes4 g aes | bes2 g4 | 2 4 | 2 r4 |
  c4 d \chord <\tweak font-size #-2  a ees'> | % C
  <\tweak font-size #-2 bes ees>2 g4 \auto |
  bes2 aes4 g2. \section bes4 4 4 | 2 4 |
  bes2 4 | 2 r4 | c ees c | f2 ees4 | d2 4 | 2. | ees4 c a | % D
  bes2 4 | des4(c) ces | bes2 r4 | c c f, | g2 bes4 | 2 aes4 | g2. |
}

bass = \relative {
  \autoBeamOff
  ees4 4 4 | 2 4 | 2 4 | 2 r4 | 4 4 4 | aes2 c4 |
  aes2 g4 | aes2. | bes4 g a | bes2 g4 | 2 4 | 2 r4 |
  a4 4 a, | bes2 c4 | bes2 4 | ees2. \section | bes4 4 4 | 2 4 |
  bes'2 aes4 | g2 r4 | f f f | 2 4 | bes,2 4 | 2. | ees4 4 4 |
  ees2 4 | 2 4 | 2 r4 | aes f aes, | bes2 4 | 2 4 | ees2. |
}

chorus = \lyricmode {
  Strength for each tri -- al and each task,
  What more, my Fa -- ther, should I ask?
  Just as I need it, day by day,
  Strength for my weak -- ness— this I pray.
}

chorusMen = \lyricmode {
}

verses = 4

wordsOne = \lyricmode {
  \set stanza = "1."
  My Fa -- ther, this I ask of Thee,
  Know -- ing that Thou wilt grant the plea;
  For this, and on -- ly this, I pray:
  Strength for to -- day— just for to -- day.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  I do not ask a lift -- ed load,
  Nor for a smooth and thorn -- less road;
  Sim -- ply for strength e -- nough to bear
  Life's dai -- ly bur -- dens a -- ny -- where.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Strength for the pres -- ent hour and need—
  This giv -- en, then I'm blest in -- deed;
  For each day, as it comes, will bring
  Suf -- fi -- cient strength for an -- y -- thing.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Strength for to -- day, that I may make
  Some sad souls glad for Je -- sus' sake;
  Then they with me at eve shall say,
  Thank God for strength He gave to -- day.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "My " Fa "ther, " "this " "I " "ask " "of " "Thee, "
  "\nKnow" "ing " "that " "Thou " "wilt " "grant " "the " "plea; "
  "\nFor " "this, " "and " on "ly " "this, " "I " "pray: "
  "\nStrength " "for " to "day—" "just " "for " to "day. "
  "\nStrength " "for " "each " tri "al " "and " "each " "task, "
  "\nWhat " "more, " "my " Fa "ther, " "should " "I " "ask? "
  "\nJust " "as " "I " "need " "it, " "day " "by " "day, "
  "\nStrength " "for " "my " weak "ness—" "this " "I " "pray.\n"

  \set stanza = "2."
  "\nI " "do " "not " "ask " "a " lift "ed " "load, "
  "\nNor " "for " "a " "smooth " "and " thorn "less " "road; "
  "\nSim" "ply " "for " "strength " e "nough " "to " "bear "
  "\nLife's " dai "ly " bur "dens " a ny "where. "
  "\nStrength " "for " "each " tri "al " "and " "each " "task, "
  "\nWhat " "more, " "my " Fa "ther, " "should " "I " "ask? "
  "\nJust " "as " "I " "need " "it, " "day " "by " "day, "
  "\nStrength " "for " "my " weak "ness—" "this " "I " "pray.\n"

  \set stanza = "3."
  "\nStrength " "for " "the " pres "ent " "hour " "and " "need— "
  "\nThis " giv "en, " "then " "I'm " "blest " in "deed; "
  "\nFor " "each " "day, " "as " "it " "comes, " "will " "bring "
  "\nSuf" fi "cient " "strength " "for " an y "thing. "
  "\nStrength " "for " "each " tri "al " "and " "each " "task, "
  "\nWhat " "more, " "my " Fa "ther, " "should " "I " "ask? "
  "\nJust " "as " "I " "need " "it, " "day " "by " "day, "
  "\nStrength " "for " "my " weak "ness—" "this " "I " "pray.\n"

  \set stanza = "4."
  "\nStrength " "for " to "day, " "that " "I " "may " "make "
  "\nSome " "sad " "souls " "glad " "for " Je "sus' " "sake; "
  "\nThen " "they " "with " "me " "at " "eve " "shall " "say, "
  "\nThank " "God " "for " "strength " "He " "gave " to "day. "
  "\nStrength " "for " "each " tri "al " "and " "each " "task, "
  "\nWhat " "more, " "my " Fa "ther, " "should " "I " "ask? "
  "\nJust " "as " "I " "need " "it, " "day " "by " "day, "
  "\nStrength " "for " "my " weak "ness—" "this " "I " "pray. "
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
