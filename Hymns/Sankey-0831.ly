\version "2.25.13"

\include "../kjp.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Leader of Faithful Souls."
  subtitle    = "Sankey No. 831"
  subsubtitle = "Sankey 880 No. 721"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Dr. Gauntlett."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "C. Wesley."
  meter       =                   "Six 8s."
  piece       = \markup\smallCaps "Dura."

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key e \major
  \time 4/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s4 s1*3 s2.
  \textMark \markup { \box \bold "B" } s4 s1*3 s2.
  \textMark \markup { \box \bold "C" } s4 s1*3 s2.
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  b'4 | 4 ais b e | gis, fis b e, | e dis e gis | fis fis gis \bar "|" \break
  b4 | 4 ais b e | gis, gis cis4 4 | fis, ais b dis | cis4 4 b \bar "|" \break
  a4 | gis fis b b | a gis fis a | gis fis b e | gis, fis e\fermata
}

alto = \relative {
  \autoBeamOff
  gis'4 | 4 fisis gis e | e dis e e | b b b e | e dis e
  gis4 | gis fisis gis gis | e e e fis | fis e dis fis | gis e dis
  fis4 | e dis e e | fis e dis fis | e dis e e | e dis e\omit\fermata
}

tenor = \relative {
  \autoBeamOff
  b4 | b cis b b | b b b cis | b a gis b | b b b
  b4 | b cis b cis | cis cis fis e | dis cis b b | b ais b
  b4 | b b b b | b b b b | b a b cis | b a gis_\fermata
}

bass = \relative {
  \autoBeamOff
  e4 | 4 4 4 gis | b a gis a | gis fis e e | b b e
  e4 | 4 4 4 cis | cis' b ais ais | b fis gis dis | e fis b,
  b4 | b' a gis gis | dis e b b | e fis gis a | b b, e_\fermata
}

chorus = \lyricmode {
}

chorusMen = \lyricmode {
}

verses = 4

wordsOne = \lyricmode {
  \set stanza = "1."
  Lead -- er of faith -- ful souls, and Guide
  Of all that tra -- vel to the sky,
  Come, and with us, e'en us a -- bide,
  Who would on Thee a -- lone re -- ly;
  On Thee a -- lone our spi -- rits stay,
  While held in life's un -- e -- ven way.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Stran -- gers and pil -- grims here be -- low,
  This earth, we know, is not our place;
  But hast -- en thro' the vale of woe,
  And, rest -- less to be -- hold Thy face,
  Swift to our heaven -- ly coun -- try move,
  Our ev -- er -- last -- ing home a -- bove.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Through Thee, who all our sins hast borne,
  Free -- ly and gra -- cious -- ly for -- given,
  With songs to Zi -- on we re -- turn,
  Con -- tend -- ing for our na -- tive heaven;
  That pal -- ace of our glo -- rious King,
  We find it near -- er while we sing.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Raised by the breath of love Di -- vine,
  We urge our way with strength re -- newed,
  The church of the first- born to join,
  We tra -- vel to the mount of God;
  With joy up -- on our heads a -- rise,
  And meet our Cap -- tain in the skies.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Lead" "er " "of " faith "ful " "souls, " "and " "Guide "
  "\nOf " "all " "that " tra "vel " "to " "the " "sky, "
  "\nCome, " "and " "with " "us, " "e'en " "us " a "bide, "
  "\nWho " "would " "on " "Thee " a "lone " re "ly; "
  "\nOn " "Thee " a "lone " "our " spi "rits " "stay, "
  "\nWhile " "held " "in " "life's " un e "ven " "way.\n"

  \set stanza = "2."
  "\nStran" "gers " "and " pil "grims " "here " be "low, "
  "\nThis " "earth, " "we " "know, " "is " "not " "our " "place; "
  "\nBut " hast "en " "thro' " "the " "vale " "of " "woe, "
  "\nAnd, " rest "less " "to " be "hold " "Thy " "face, "
  "\nSwift " "to " "our " heaven "ly " coun "try " "move, "
  "\nOur " ev er last "ing " "home " a "bove.\n"

  \set stanza = "3."
  "\nThrough " "Thee, " "who " "all " "our " "sins " "hast " "borne, "
  "\nFree" "ly " "and " gra cious "ly " for "given, "
  "\nWith " "songs " "to " Zi "on " "we " re "turn, "
  "\nCon" tend "ing " "for " "our " na "tive " "heaven; "
  "\nThat " pal "ace " "of " "our " glo "rious " "King, "
  "\nWe " "find " "it " near "er " "while " "we " "sing.\n"

  \set stanza = "4."
  "\nRaised " "by " "the " "breath " "of " "love " Di "vine, "
  "\nWe " "urge " "our " "way " "with " "strength " re "newed, "
  "\nThe " "church " "of " "the " first "born " "to " "join, "
  "\nWe " tra "vel " "to " "the " "mount " "of " "God; "
  "\nWith " "joy " up "on " "our " "heads " a "rise, "
  "\nAnd " "meet " "our " Cap "tain " "in " "the " "skies. "
}

wordsMidiMen = \lyricmode {
}

\book {
  \paper {
    output-suffix = midi
  }
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
  \paper {
    output-suffix = repeat
  }
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
  \paper {
    output-suffix = single
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

\book {
  \paper {
    output-suffix = singlepage
  }
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
