\version "2.25.0"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "When the Pearly Gates Enfold."
  subtitle    = "Sankey No. 590"
%  subsubtitle = "Sankey 880 No. Y"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

%  composer    = \markup\smallCaps "composer"
%  arranger    = "arranger"
%  opus        = "opus"

%  poet        = \markup\smallCaps "poet"
  meter       = \markup\smallCaps "8.7."
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key a \major
  \time 4/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s4 s1*2 s2
  \textMark \markup { \box \bold "B" } s2 s1*3
  \textMark \markup { \box \bold "C" }    s1*3 s2.
  \textMark \markup { \box \bold "D" } s4 s1*3
  \textMark \markup { \box \bold "E" }    s1*4
  \textMark \markup { \box \bold "F" }    s1*3
  \textMark \markup { \box \bold "G" }    s1*3 s2.
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

dynamicsPrint = {
}

dynamicsOmit = {
}

soprano = \relative {
  \autoBeamOff
  \sectionLabel \markup\smallCaps Solo.
  e'8^\markup\italic Andante. a | cis4 4 d4. e,8 | d'8 cis4. r4 gis8 a | b4 4 \bar "|" \break
  d4. gis,8 | a2. e8 a | cis4 4 d4. e,8 | d'8 cis4. r4 gis8 a |
  b4 4 d4. gis,8 | a2 r4 gis8 a | b4 4 d4. gis,8 | a8 cis4. r4 \bar "|" \break
  cis8 8 | 4. 8 e[d] cis[d] | b2. e8. 16 | 4. cis8 a4 e |
  fis4 d'2 cis8. b16 | a4 e cis'4. b8 | a2.
  \section \sectionLabel \markup\smallCaps Chorus.
  cis4 | b4. cis8 d4 gis, |
  a4 cis2 8. 16 | 4. 8 e[d] cis[d] | b2. e8. 16 |
  e4. cis8 a4 e | fis d'2 cis8 b | a4 e cis'4. b8 | a2.
}

alto = \relative {
  \autoBeamOff
  cis'8 8 | e4 4 4. 8 | 8 4. r4 e8 8 | 4 4
  e4. d8 |cis2. 8 8 | e4 4 4. 8 | 8 4. r4 8 8 |
  e4 4 4. d8 | cis2 r4 e8 8 | 4 4 4. d8 | cis8 e4. r4
  e8 8 |a4. 8 cis[b] a[b] | gis2. 8. 16 | a4. 8 e4 4 |
  d4 fis2 e8. d16 | cis4 4 e4. d8 | cis2. e4 | 4. 8 4. d8 |
  cis4 e2 8. 16 | a4. 8 cis[b] a[b] | gis2. 8. 16 |
  a4. 8 e4 4 | d fis2 e8 d | cis4 4 e4. d8 | cis2.
}

tenor = \relative {
  \autoBeamOff
  a8 8 | 4 4 b4. 8 | a8 4. r4 b8 fis | gis4 4
  b4. 8 | a2. 8 8 | 4 4 b4. 8 | a8 4. r4 8 fis |
  gis4 4 b4. 8 | a2 r4 b8 fis | gis4 4 b4. 8 | a8 4. r4
  a8 8 | e'4. 8 4 4 | 2. d8. 16 | cis4. e8 cis4 a |
  a4 2 8. g16 | a4 4 g4. 8 | a2. 4 | gis4. a8 b4 4 |
  a4 2 8. 16 | e'4. 8 4 4 | 2. d8. 16 |
  cis4. e8 cis4 a | 4 2 8 gis | a4 4 gis4. 8 | a2.
}

bass = \relative {
  \autoBeamOff
  a,8 8 | 4 a' gis4. 8 | a8 4. r4 e8 8 | 4 4
  e4. 8 | a,2. 8 8 | 4 a' gis4. 8 | a8 4. r4 e8 8 |
  e4 4 4. 8 | a, 2 r4 e'8 8 | 4 4 4. 8 |a,8 4. r4
  a'8 8 | 4. 8 4 4 | e2. 8. 16 | a4. 8 4 c, |
  d4 2 e8. 16 | 4 4 4. 8 | a,2. a'4 | e4. 8 4 4 |
  a,4 2 a'8. 16 | 4. 8 4 4 | e2. 8. 16 |
  a4. 8 4 cis, | d4 2 e8 8 | 4 4 4. 8 | a,2. |
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  Life's morn will soon be wa -- ning,
  And its ev -- 'ning bells be toll'd;
  But my heart will know no sad -- ness
  When the pear -- ly gates un -- fold.
}

chorusMen = \lyricmode {
}

verses = 3

wordsOne = \lyricmode {
  \set stanza = "1."
  I have giv'n up all for Je -- sus—
  This vain world is naught to me;
  All its plea -- sures are for -- got -- ten
  In re -- mem -- b'ring Cal -- va -- ry.
  Tho' my friends de -- spise, for -- sake me.
  And on me the world looks cold;
  I've a Friend that will stand by me
  When the pear -- ly gates un -- fold.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  When the voice of Je -- sus calls me,
  And the an -- gels whis -- per low,
  I will lean up -- on my Sa -- viour
  Thro' the val -- ley as I go;
  I will claim His pre -- cious pro -- mise,
  Worth to me the world of gold:
  "\"Fear" no e -- vil. I'll be with thee
  When the pear -- ly gates un -- "fold.\""
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Just be -- yond the waves of Jor -- dan,
  Just be -- yond its chill -- ing tide,
  Blooms the Tree of Life im -- mor -- tal,
  And the liv -- ing wa -- ters glide:
  In that hap -- py land of spi -- rits
  Are there stores of bliss un -- told,
  And the an -- gels are a -- wait -- ing
  Where the pear -- ly gates un -- fold.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "I " "have " "giv'n " "up " "all " "for " Je "sus— "
  "\nThis " "vain " "world " "is " "naught " "to " "me; "
  "\nAll " "its " plea "sures " "are " for got "ten "
  "\nIn " re mem "b'ring " Cal va "ry. "
  "\nTho' " "my " "friends " de "spise, " for "sake " "me. "
  "\nAnd " "on " "me " "the " "world " "looks " "cold; "
  "\nI've " "a " "Friend " "that " "will " "stand " "by " "me "
  "\nWhen " "the " pear "ly " "gates " un "fold. "
  "\nLife's " "morn " "will " "soon " "be " wa "ning, "
  "\nAnd " "its " ev "'ning " "bells " "be " "toll'd; "
  "\nBut " "my " "heart " "will " "know " "no " sad "ness "
  "\nWhen " "the " pear "ly " "gates " un "fold.\n"

  \set stanza = "2."
  "\nWhen " "the " "voice " "of " Je "sus " "calls " "me, "
  "\nAnd " "the " an "gels " whis "per " "low, "
  "\nI " "will " "lean " up "on " "my " Sa "viour "
  "\nThro' " "the " val "ley " "as " "I " "go; "
  "\nI " "will " "claim " "His " pre "cious " pro "mise, "
  "\nWorth " "to " "me " "the " "world " "of " "gold: "
  "\n\"Fear " "no " e "vil. " "I'll " "be " "with " "thee "
  "\nWhen " "the " pear "ly " "gates " un "fold.\" "
  "\nLife's " "morn " "will " "soon " "be " wa "ning, "
  "\nAnd " "its " ev "'ning " "bells " "be " "toll'd; "
  "\nBut " "my " "heart " "will " "know " "no " sad "ness "
  "\nWhen " "the " pear "ly " "gates " un "fold.\n"

  \set stanza = "3."
  "\nJust " be "yond " "the " "waves " "of " Jor "dan, "
  "\nJust " be "yond " "its " chill "ing " "tide, "
  "\nBlooms " "the " "Tree " "of " "Life " im mor "tal, "
  "\nAnd " "the " liv "ing " wa "ters " "glide: "
  "\nIn " "that " hap "py " "land " "of " spi "rits "
  "\nAre " "there " "stores " "of " "bliss " un "told, "
  "\nAnd " "the " an "gels " "are " a wait "ing "
  "\nWhere " "the " pear "ly " "gates " un "fold. "
  "\nLife's " "morn " "will " "soon " "be " wa "ning, "
  "\nAnd " "its " ev "'ning " "bells " "be " "toll'd; "
  "\nBut " "my " "heart " "will " "know " "no " sad "ness "
  "\nWhen " "the " pear "ly " "gates " un "fold. "
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
            \new Dynamics \repeat unfold \verses \dynamicsOmit
            \new Voice { \repeat unfold \verses \TempoTrack     }
            \new Voice { \global \repeat unfold \verses \soprano \bar "|." }
            \addlyrics \wordsMidi
          >>
                                % Alto staff
          \new Staff = alto
          <<
            \new Dynamics \repeat unfold \verses \dynamicsOmit
            \new Voice { \global \repeat unfold \verses { \alto \nl } \bar "|." }
          >>
                                % Tenor staff
          \new Staff = tenor
          <<
            \clef "treble_8"
            \new Dynamics \repeat unfold \verses \dynamicsOmit
            \new Voice { \global \repeat unfold \verses \tenor }
            \addlyrics \wordsMidiMen
          >>
                                % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Dynamics \repeat unfold \verses \dynamicsOmit
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
            \new Dynamics \with {alignAboveContext = women} \dynamicsPrint
            \new Voice \RehearsalTrack
            \new Voice \TempoTrack
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
            \new Dynamics \dynamicsOmit
            \new Voice \partCombine #'(2 . 88) { \global \tenor } { \global \bass }
            \new NullVoice = alignerT { \tenor }
          >>
          \new Lyrics \with {alignAboveContext = men} \lyricsto alignerT \chorusMen
        >>
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

singlescore = {
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff = women \with { printPartCombineTexts = ##f }
          <<
            \new Dynamics \with {alignAboveContext = women} \repeat unfold \verses \dynamicsPrint
            \new Voice { \repeat unfold \verses \RehearsalTrack }
            \new Voice { \repeat unfold \verses \TempoTrack }
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
            \new Dynamics \repeat unfold \verses \dynamicsOmit
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
