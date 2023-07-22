\version "2.25.0"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Faith is the Victory!"
  subtitle    = "Sankey No. 682"
  subsubtitle = "N. H. No. 34"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Ira D. Sankey."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "John H. Yates."
  meter       = \markup\smallCaps "C.M.D."
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key f \major
  \time 6/8
  \partial 8
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s8 s2.*3 s4. s4
  \textMark \markup { \box \bold "B" } s8 s2.*3 s4. s4
  \textMark \markup { \box \bold "C" } s8 s2.*3 s4. s4
  \textMark \markup { \box \bold "D" } s8 s2.*4
  \textMark \markup { \box \bold "E" }    s2.*4
  \textMark \markup { \box \bold "F" }    s2.*3 s4. s4
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  c''8 | 4 f,8 4 g8 | f4 e8 4 bes'8 | 4 g8 c4 bes8 | a4.~4 \bar "|" \break
  c8 | 4 f,8 4 g8 | f4 e8 4 bes'8 | 4 g8 c4 e,8 | f4.~4 \bar "|" \break
  a8 | 4 g8 4 bes8 | 4 a8 4 c8 | 4 g8 a4 b8 | c4.~4 \bar "|" \break
  bes8 | a4 c8 f4 c8 e4 d8 4\fermata 8 | c4 f,8 a4 g8 | f4.~4 r8 |
  \section \sectionLabel \markup\smallCaps Chorus. \break
  c'4.~8 d a | c4 bes8 4. | 4.~8 c g | bes4 a8 4. |
  d4. 8 e f | 4 c8 4 bes8 | a4 8 bes4 g8 | f4.~4
}

alto = \relative {
  \autoBeamOff
  f'8 | 4 c8 4 8 | 4 8 4 e8 | a4 e8 f4 g8 | f4.~4
  f8 | 4 c8 4 8 | 4 8 4 e8 | 4 8 4 c8 | 4.~4
  f8 | 4 e8 4 g8 | 4 f8 4 8 | e4 8 f4 8 | e4(f8 g4)
  g8 | f4 8 a4 f8 | 4 8 4\fermata 8 | 4 8 4 e8 | f4.~4 r8 |
  r4 r8 f f f | e4 8 4. | r4 r8 e e e | f4 8 4. |
  f4. 8 8 8 | a4 8 f4 8 | 4 8 e4 8 | f4.~4
}

tenor = \relative {
  \autoBeamOff
  a8 | 4 8 4 bes8 |  a4 g8 4 8 | c4 bes8 a4 c8 | 4.~4
  a8 | 4 8 4 bes8 | a4 g8 4 8 | c4 8 4 bes8 | a4.~4
  c8 | 4 8 4 8 | 4 8 4 a8 | g4 c8 b4 g8 | 4.(c4)
  c8 | 4 a8 c4 8 | 4 bes8 4\fermata 8 | a4 8 c4 bes8 | a4.~4 r8 |
  r4 r8 a a f | g4 8 4. | r4 r8 g g c | d4 c8 4. |
  bes4. 8 c d | c4 8 ees4 d8 | c4 f,8 g4 bes8 | a4.~4
}

bass = \relative {
  \autoBeamOff
  f8 | 4 8 4 8 |c4 8 4 8 | 4 8 4 8 | f4.~4
  f8 | 4 8 4 8 | c4 8 4 8 | 4 8 4 8 | f4.~4
  f8 | c4 8 4 8 | f4 8 4 8 | g4 8 4 8 | c,4(d8 e4)
  c8 | f4 8 4 a,8 | bes4 8 4\fermata 8 | c4 d8 c4 8 | f4.~4 r8 \section |
  r4 r8 f f f | c4 8 4. | r4 r8 c c c | f4 8 4. |
  bes,4. 8 8 8 | f'4 8 a,4 bes8 | c4 a8 c4 8 | f4.~4
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  Faith is the vic -- to -- ry!
  Faith is the vic -- to -- ry!
  Oh, glo -- ri -- ous vic -- to -- ry,
  That o -- ver -- comes the world.
}

chorusMen = \lyricmode {
  \repeat unfold 56 _
  Faith is the vic -- to -- ry!
  Faith is the vic -- to -- ry!
  \repeat unfold 13 _
}

verses = 4

wordsOne = \lyricmode {
  \set stanza = "1."
  En -- camped a -- long the hills of light,
  Ye Chris -- tian sol -- diers rise,
  And press the bat -- tle ere the night
  Shall veil the glow -- ing skies;
  A -- gainst the foe in vales be -- low,
  Let all our strength be hurled;
  Faith is the vic -- to -- ry, we know,
  That o -- ver -- comes the world!
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  His ban -- ner o -- ver us is Love,
  Our sword, the Word of Godl
  We tread the road the saints a -- bove
  With shouts of tri -- umph trod;
  By faith they, like a whirl -- winds breath,
  Swept on o'er ev -- 'ry field;
  The faith by which they con -- quered
  Death is still our shi -- ning shield.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  On ev -- 'ry hand the foe we find
  Drawn up in dread ar -- ray;
  Let tents of ease be left be -- hind,
  And— on -- ward to the fray!
  Sal -- va -- tion's hel -- met on each head,
  With truth all girt a -- bout,
  The earth shall trem -- ble 'neath our tread,
  And ech -- o with our shout!
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  To him that o -- ver -- comes the foe,
  White rai -- ment shall be giv'n;
  Be -- fore the an -- gels he shall know
  His name con -- fessed in heav'n;
  Then on -- ward from the hills of light,
  Our hearts with love a -- flame;
  We'll van -- quish all the hosts of night,
  In Je -- sus' con -- q'ring name!
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "En" "camped " a "long " "the " "hills " "of " "light, "
  "\nYe " Chris "tian " sol "diers " "rise, "
  "\nAnd " "press " "the " bat "tle " "ere " "the " "night "
  "\nShall " "veil " "the " glow "ing " "skies; "
  "\nA" "gainst " "the " "foe " "in " "vales " be "low, "
  "\nLet " "all " "our " "strength " "be " "hurled; "
  "\nFaith " "is " "the " vic to "ry, " "we " "know, "
  "\nThat " o ver "comes " "the " "world! "
  "\nFaith " "is " "the " vic to "ry! "
  "\nFaith " "is " "the " vic to "ry! "
  "\nOh, " glo ri "ous " vic to "ry, "
  "\nThat " o ver "comes " "the " "world.\n"

  \set stanza = "2."
  "\nHis " ban "ner " o "ver " "us " "is " "Love, "
  "\nOur " "sword, " "the " "Word " "of " "Godl "
  "\nWe " "tread " "the " "road " "the " "saints " a "bove "
  "\nWith " "shouts " "of " tri "umph " "trod; "
  "\nBy " "faith " "they, " "like " "a " whirl "winds " "breath, "
  "\nSwept " "on " "o'er " ev "'ry " "field; "
  "\nThe " "faith " "by " "which " "they " con "quered "
  "\nDeath " "is " "still " "our " shi "ning " "shield. "
  "\nFaith " "is " "the " vic to "ry! "
  "\nFaith " "is " "the " vic to "ry! "
  "\nOh, " glo ri "ous " vic to "ry, "
  "\nThat " o ver "comes " "the " "world.\n"

  \set stanza = "3."
  "\nOn " ev "'ry " "hand " "the " "foe " "we " "find "
  "\nDrawn " "up " "in " "dread " ar "ray; "
  "\nLet " "tents " "of " "ease " "be " "left " be "hind, "
  "\nAnd— " on "ward " "to " "the " "fray! "
  "\nSal" va "tion's " hel "met " "on " "each " "head, "
  "\nWith " "truth " "all " "girt " a "bout, "
  "\nThe " "earth " "shall " trem "ble " "'neath " "our " "tread, "
  "\nAnd " ech "o " "with " "our " "shout! "
  "\nFaith " "is " "the " vic to "ry! "
  "\nFaith " "is " "the " vic to "ry! "
  "\nOh, " glo ri "ous " vic to "ry, "
  "\nThat " o ver "comes " "the " "world.\n"

  \set stanza = "4."
  "\nTo " "him " "that " o ver "comes " "the " "foe, "
  "\nWhite " rai "ment " "shall " "be " "giv'n; "
  "\nBe" "fore " "the " an "gels " "he " "shall " "know "
  "\nHis " "name " con "fessed " "in " "heav'n; "
  "\nThen " on "ward " "from " "the " "hills " "of " "light, "
  "\nOur " "hearts " "with " "love " a "flame; "
  "\nWe'll " van "quish " "all " "the " "hosts " "of " "night, "
  "\nIn " Je "sus' " con "q'ring " "name! "
  "\nFaith " "is " "the " vic to "ry! "
  "\nFaith " "is " "the " vic to "ry! "
  "\nOh, " glo ri "ous " vic to "ry, "
  "\nThat " o ver "comes " "the " "world. "
}

\book {
  \bookOutputSuffix "midi-sop"
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
          >>
                                % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Voice { \global \repeat unfold \verses \bass }
          >>
        >>

  }
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
            \addlyrics \wordsMidi
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
