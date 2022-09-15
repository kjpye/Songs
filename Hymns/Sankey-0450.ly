\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "What will you do with Jesus?"
  subtitle    = "Sankey No. 450"
  subsubtitle = "Sankey 880 No. 581"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Geo. C. Stebbins."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Nathaniel Norton."
%  meter       = \markup\smallCaps "meter"
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key ees \major
  \time 6/8
  \partial 8
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s8 s2.*3 s4. s4
  \mark \markup { \box "B" } s8 s2.*3 s4. s4
  \mark \markup { \box "C" } s8 s2.*3 s4. s4
  \mark \markup { \box "D" } s8 s2.*4
  \mark \markup { \box "E" }    s2.*4
  \mark \markup { \box "F" }    s2.*3 s4. s4
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4.=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  g'16[aes]
  bes8 a bes ees4 c8
  bes4. g4 8
  bes4 aes8 aes[g] f
  g4.~4 \bar "|" \break g16[aes]
  bes8[a] bes ees4 c8 % B
  bes4. g4 8
  \tag #'dash    {bes4 aes8 \slurDashed 8(g) \slurSolid f}
  \tag #'(v2 v3) {bes4 aes8             8(g)            f}
  \tag #'v1      {bes4 aes8             8 g             f}
  ees4.~4 \bar "|" \break g8
  \tag #'dash    {g4 f8 \slurDashed 8(g) \slurSolid aes} % C
  \tag #'(v1 v3) {g4 f8             8(g)            aes}
  \tag #'v2      {g4 f8             8 g             aes}
  c4. bes4 8
  \tag #'dash    {\slurDashed bes8(a) \slurSolid bes d4 c8}
  \tag #'(v1 v3) {            bes8(a)            bes d4 c8}
  \tag #'v2      {            bes8 a             bes d4 c8}
  bes4.~4 \bar "|" \break aes8
  g8 8 8 bes4 ees,8 % D
  c'4(d8) ees4\fermata c8
  bes8 aes g8 4 f8
  ees4.~4 r8
  g8^\markup\smallCaps Refrain. 8 8 bes4 c8 % E
  bes4.~4 r8
  g8 8 8 bes4 g8
  f4.~4 r8
  g8 8 8 bes4 ees,8 % F
  c'4(d8) ees4\fermata c8
  bes8 aes g8 4 f8
  ees4.~4
}

alto = \relative {
  \autoBeamOff
  ees'8
  ees8 8 8 g4 a8
  g4. ees4 8
  g4 f8 f[ees] d
  ees4.~4 8
  ees4 8 g4 aes8 % B
  g4. ees4 8
  \tag #'dash    {ees4 8 \slurDashed d8(8) \slurSolid 8}
  \tag #'(v2 v3) {ees4 8             d4               8}
  \tag #'v1      {ees4 8             d8 8             8}
  ees4.~4 8
  \tag #'dash    {ees4 d8 \slurDashed d(ees) \slurSolid f} % C
  \tag #'(v1 v3) {ees4 d8             d(ees)            f}
  \tag #'v2      {ees4 d8             d ees             f}
  aes4. g4 8
  \tag #'dash    {\slurDashed f8(8) \slurSolid 8 4 ees8}
  \tag #'(v1 v3) {            f4               8 4 ees8}
  \tag #'v2      {            f8 8             8 4 ees8}
  d4.~4 8
  ees8 8 8 4 8 % D
  ees4. 4\fermata 8
  ees8 8 8 4 d8
  ees4.~4 r8
  ees8 8 8 g4 aes8 % E
  g4.~4 r8
  ees8 8 8 g4 ees8
  d4.~4 r8
  ees8 8 8 4 8 % F
  ees4. 4\fermata 8
  ees8 8 8 4 d8
  ees4.~4
}

tenor = \relative {
  \autoBeamOff
  ees16[f]
  g8 fis g bes4 ees8
  ees4. bes4 8
  bes4 8 4 8
  bes4.~4 ees,16[f]
  g8[fis] g bes4 ees8 % B
  ees4. bes4 8
  \tag #'dash    {g4 c8 \slurDashed c8(bes) \slurSolid aes}
  \tag #'(v2 v3) {g4 c8             c8(bes)            aes}
  \tag #'v1      {g4 c8             c8 bes             aes}
  g4.~4 bes8
  \tag #'dash    {bes4 8 \slurDashed 8(8) \slurSolid d8} % C
  \tag #'(v1 v3) {bes4 8             4               d8}
  \tag #'v2      {bes4 8             8 8             d8}
  ees4. 4 c8
  \tag #'dash    {\slurDashed d8(c) \slurSolid d bes4 a8}
  \tag #'(v1 v3) {            d8(c)            d bes4 a8}
  \tag #'v2      {            d8 c             d bes4 a8}
  bes4.~4 8
  bes8 8 8 g4 8 % D
  aes4(bes8) c4\fermata aes8
  g8 c bes8 4 aes8
  g4.~4 r8
  bes8 8 8 ees4 8 % E
  ees4.~4 r8
  bes8 8 8 ees4 bes8
  bes4.~4 r8
  aes8 8 8 g4 8 % F
  aes4(bes8) c4\fermata aes8
  g8 c bes8 4 aes8
  g4.~4
}

bass = \relative {
  \autoBeamOff
  ees8
  ees8 8 8 4 8
  ees4. 4 8
  bes4 8 4 8
  ees4.~4 8
  ees4 8 4 8 % B
  ees4. 4 8
  \tag #'dash    {bes4 8 \slurDashed 8(8) \slurSolid 8}
  \tag #'(v2 v3) {bes4 8             4               8}
  \tag #'v1      {bes4 8             8 8             8}
  ees4.~4 8
  \tag #'dash    {bes4 8 \slurDashed 8(8) \slurSolid 8} % C
  \tag #'(v1 v3) {bes4 8             4               8}
  \tag #'v2      {bes4 8             8 8             8}
  ees4. 4 8
  \tag #'dash    {\slurDashed f8(8) \slurSolid 8 4 8}
  \tag #'(v1 v3) {            f4               8 4 8}
  \tag #'v2      {            f8 8             8 4 8}
  bes,4.~4 8
  ees8 8 8 4 8 % D
  aes,4. 4\fermata 8
  bes8 8 8 4 8
  ees4.~4 r8
  ees8 8 8 4 8 % E
  ees4.~4 r8
  ees8 8 8 4 8
  bes4.~4 r8
  ees8 8 8 4 8 % F
  aes,4. 4\fermata 8
  bes8 8 8 4 8
  ees4.~4
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  What shall the an -- swer be?
  What shall the an -- swer be?
  What will you do with Je -- sus?
  Oh, what shall the an -- swer be?
}

verses = 3

wordsOne = \lyricmode {
  \set stanza = "1."
  Oh, what will you do with Je -- sus?
  The call comes low and sweet;
  And ten -- der -- ly He bids you
  Your bur -- dens \nom lay at \yesm His feet;
  O soul, so sad and wea -- ry,
  That sweet voice speaks to thee:
  Then what will you do with Je -- sus?
  Oh, what shall the an -- swer be?
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Oh, what will you do with Je -- sus?
  The call comes low and clear;
  The sol -- emn words are sound -- ing
  In ev -- 'ry list -- 'ning ear;
  Im -- mor -- tal \nom life's in \yesm the ques -- tion,
  And \nom joy thro' \yesm e -- ter -- ni -- ty:
  Then what will you do with Je -- sus?
  Oh, what shall the an -- swer be?
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Oh, think of the King of Glo -- ry—
  From heav'n to earth come down;
  His klife so pure and ho -- ly;
  His death, His cross, His crown;
  Of His Di -- vine com -- pas -- sion,
  His sac -- ri -- fice for thee:
  Then what will you do with Je -- sus?
  Oh, what shall the an -- swer be?
}
  
wordsSingle = \lyricmode {
  \set stanza = "1."
  Oh, what will you do with Je -- sus?
  The call comes low and sweet;
  And ten -- der -- ly He bids you
  Your bur -- dens lay at His feet;
  O soul, so sad and wea -- ry,
  That sweet voice speaks to thee:
  Then what will you do with Je -- sus?
  Oh, what shall the an -- swer be?
  What shall the an -- swer be?
  What shall the an -- swer be?
  What will you do with Je -- sus?
  Oh, what shall the an -- swer be?

  \set stanza = "2."
  Oh, what will you do with Je -- sus?
  The call comes low and clear;
  The sol -- emn words are sound -- ing
  In ev -- 'ry list -- 'ning ear;
  Im -- mor -- tal life's in the ques -- tion,
  And joy thro' e -- ter -- ni -- ty:
  Then what will you do with Je -- sus?
  Oh, what shall the an -- swer be?
  What shall the an -- swer be?
  What shall the an -- swer be?
  What will you do with Je -- sus?
  Oh, what shall the an -- swer be?

  \set stanza = "3."
  Oh, think of the King of Glo -- ry—
  From heav'n to earth come down;
  His klife so pure and ho -- ly;
  His death, His cross, His crown;
  Of His Di -- vine com -- pas -- sion,
  His sac -- ri -- fice for thee:
  Then what will you do with Je -- sus?
  Oh, what shall the an -- swer be?
  What shall the an -- swer be?
  What shall the an -- swer be?
  What will you do with Je -- sus?
  Oh, what shall the an -- swer be?
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Oh, " "what " "will " "you " "do " "with " Je "sus? "
  "\nThe " "call " "comes " "low " "and " "sweet; "
  "\nAnd " ten der "ly " "He " "bids " "you "
  "\nYour " bur "dens " "lay " "at " "His " "feet; "
  "\nO " "soul, " "so " "sad " "and " wea "ry, "
  "\nThat " "sweet " "voice " "speaks " "to " "thee: "
  "\nThen " "what " "will " "you " "do " "with " Je "sus? "
  "\nOh, " "what " "shall " "the " an "swer " "be? "
  "\nWhat " "shall " "the " an "swer " "be? "
  "\nWhat " "shall " "the " an "swer " "be? "
  "\nWhat " "will " "you " "do " "with " Je "sus? "
  "\nOh, " "what " "shall " "the " an "swer " "be?\n"

  \set stanza = "2."
  "\nOh, " "what " "will " "you " "do " "with " Je "sus? "
  "\nThe " "call " "comes " "low " "and " "clear; "
  "\nThe " sol "emn " "words " "are " sound "ing "
  "\nIn " ev "'ry " list "'ning " "ear; "
  "\nIm" mor "tal " "life's " "in " "the " ques "tion, "
  "\nAnd " "joy " "thro' " e ter ni "ty: "
  "\nThen " "what " "will " "you " "do " "with " Je "sus? "
  "\nOh, " "what " "shall " "the " an "swer " "be? "
  "\nWhat " "shall " "the " an "swer " "be? "
  "\nWhat " "shall " "the " an "swer " "be? "
  "\nWhat " "will " "you " "do " "with " Je "sus? "
  "\nOh, " "what " "shall " "the " an "swer " "be?\n"

  \set stanza = "3."
  "\nOh, " "think " "of " "the " "King " "of " Glo "ry— "
  "\nFrom " "heav'n " "to " "earth " "come " "down; "
  "\nHis " "klife " "so " "pure " "and " ho "ly; "
  "\nHis " "death, " "His " "cross, " "His " "crown; "
  "\nOf " "His " Di "vine " com pas "sion, "
  "\nHis " sac ri "fice " "for " "thee: "
  "\nThen " "what " "will " "you " "do " "with " Je "sus? "
  "\nOh, " "what " "shall " "the " an "swer " "be? "
  "\nWhat " "shall " "the " an "swer " "be? "
  "\nWhat " "shall " "the " an "swer " "be? "
  "\nWhat " "will " "you " "do " "with " Je "sus? "
  "\nOh, " "what " "shall " "the " an "swer " "be? "
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
            \new Voice { \global
                         \keepWithTag #'v1 \soprano
                         \keepWithTag #'v2 \soprano
                         \keepWithTag #'v3 \soprano
                         \bar "|." }
            \addlyrics \wordsMidi
          >>
                                % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global
                         \keepWithTag #'v1 \alto \nl
                         \keepWithTag #'v2 \alto \nl
                         \keepWithTag #'v3 \alto \nl
                         \bar "|." }
          >>
                                % Tenor staff
          \new Staff = tenor
          <<
            \clef "treble_8"
            \new Voice { \global
                         \keepWithTag #'v1 \tenor
                         \keepWithTag #'v2 \tenor
                         \keepWithTag #'v3 \tenor
                       }
          >>
                                % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Voice { \global
                         \keepWithTag #'v1 \bass
                         \keepWithTag #'v2 \bass
                         \keepWithTag #'v3 \bass
                       }
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
            \new NullVoice = "aligner" \keepWithTag #'dash \soprano
            \new Voice \partCombine { \global \keepWithTag #'dash \soprano \bar "|." } { \global \keepWithTag #'dash \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne \chorus }
            \new Lyrics \lyricsto "aligner"   \wordsTwo
            \new Lyrics \lyricsto "aligner"   \wordsThree
          >>
                                  % Joint tenor/bass staff
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice \partCombine { \global \keepWithTag #'dash \tenor } { \global \keepWithTag #'dash \bass }
            \new NullVoice = alignerT { \keepWithTag #'dash \tenor }
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
            \new NullVoice = "aligner" { 
                                         \keepWithTag #'v1 \soprano
                                         \keepWithTag #'v2 \soprano
                                         \keepWithTag #'v3 \soprano
                                       }
            \new Voice \partCombine { \global
                                      \keepWithTag #'v1 \soprano
                                      \keepWithTag #'v2 \soprano
                                      \keepWithTag #'v3 \soprano
                                      \bar "|." }
            { \global
              \keepWithTag #'v1 \alto \nl
              \keepWithTag #'v2 \alto \nl
              \keepWithTag #'v3 \alto \nl
              \bar "|." }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice \partCombine { \global
                                      \keepWithTag #'v1 \tenor
                                      \keepWithTag #'v2 \tenor
                                      \keepWithTag #'v3 \tenor
                                    }
            { \global
              \keepWithTag #'v1 \bass
              \keepWithTag #'v2 \bass
              \keepWithTag #'v3 \bass
            }
            \new NullVoice = alignerT {
              \keepWithTag #'v1 \tenor
              \keepWithTag #'v2 \tenor
              \keepWithTag #'v3 \tenor
            }
          >>
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
