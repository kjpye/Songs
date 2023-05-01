\version "2.25.4"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Draw me Nearer."
  subtitle    = "Sankey No. 607"
  subsubtitle = "Sankey 880 No. 165"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "W. H. Doane."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Fanny J. Crosby."
%  meter       = \markup\smallCaps "meter"
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key aes \major
  \time 4/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s4 s1*2 s2
  \textMark \markup { \box \bold "B" } s2 s1*2 s2.
  \textMark \markup { \box \bold "C" } s4 s1*3
  \textMark \markup { \box \bold "D" }    s1*3 s2
  \textMark \markup { \box \bold "E" } s2 s1*2 s2.
}


TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff \partial 4
  c''8. des16 | c4 bes bes bes8. c16| bes4 aes aes aes8. g16 | f4 f \bar "|" \break
  f4 aes8.[f16] | ees2 r4 c'8. des16 | c4 bes4 4 8. c16 | bes4 aes aes \bar "|" \break
  bes8 c | des4 4 g, g | aes2 r4 \section \sectionLabel \markup\smallCaps Refrain. c8. des16 | ees2 c |
  bes8 aes g f ees4 aes8 g | f4 aes des c | bes2 r4 c8. des16 | ees4 8 r \bar "|" \break
  c4 8 r | bes aes g f des'4\fermata c8. bes16 | aes4 4 c4. bes8 | aes2 r4
}

alto = \relative {
  \autoBeamOff \partial 4
  ees'8. f16 | ees4 des4 4 8. ees16 | des4 c c ees8. 16 | des4 4
  des4 4 | c2 r4 ees8. f16 | ees4 des4 4 8. ees16 | des4 c c
  des8 ees | f4 f ees ees | 2 r4 \section 8. 16 | aes2 ees |
  f8 f ees des c4 ees8 8 | des4 ees d ees | 2 r4 8. 16 | aes4 8 r 
  ees4 8 r | f f ees des f4\fermata 8. 16 | ees4 4 4. des8 | c2 r4
}

tenor = \relative {
  \autoBeamOff \partial 4
  aes8. 16 | 4 g g g8. 16 | 4 aes4 4 8. 16 | 4 4
  aes4 f8.[aes16] | 2 r4 8. 16 | 4 g4 4 8. 16 | 4 aes4 4
  aes8 8 | 4 bes4 4 des | c2 r4 \section aes8. bes16 | c4 8 r aes4 8 r |
  aes8 8 8 8 4 8 8 | 4 4 g aes | g2 r4 aes8. bes16 | c4 8 r
  aes4 8 r | 8 8 8 8 4\fermata ees'8. des16 | c4 4 aes4. g8 | aes2 r4
}

bass = \relative {
  \autoBeamOff \partial 4
  aes,8. 16 | 4 ees'4 4 8. 16 | ees4 aes,4 4 c8. 16 | d4 4
  d4 4 | aes2 r4 8. 16 | ees'4 4 4 8. 16 | 4 aes, aes
  aes8 8 | des4 bes ees ees | aes,2 r4 \section aes'8. 16 | 4 8 r aes,4 8 r
  des8 8 8 8 aes4 c8 8 | des4 c bes aes | ees'2 r4 aes8. 16 | 4 8 r
  aes,4 8 r | des8 8 8 8 4\fermata 8. 16 | ees4 4 4. 8 | aes,2 r4
  
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  Draw me near -- er, near -- er, Bles -- sed Lord,
  To the cross where Thou hast died;
  Draw me near -- er, near -- er, near -- er, Bles -- sed Lord,
  To Thy pre -- cious bleed -- ing side.
}

chorusMen = \lyricmode {
  \small
  \repeat unfold 36 { \skip 1 }
  near -- er near -- er
  \repeat unfold 30 { \skip 1 }
}

verses = 4

wordsOne = \lyricmode {
  \set stanza = "1."
  I am Thine, O Lord, I have heard Thy voice,
  And it told Thy love to me;
  But I long to rise in the arms of faith,
  And be clo -- ser drawn to Thee.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Con -- se -- crate me now to Thy ser -- vice, Lord,
  By the power of grace Di -- vine;
  Let my soul look up with a stead -- fast hope,
  And my will be lost in Thine.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Oh, the pure de -- light of a sin -- gle hour
  That be -- fore Thy throne I spend.
  When I kneel in prayer, and with Thee, my God,
  I com -- mune as friend with friend.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  There are depths of love that I can -- not know
  Till I cross the nar -- row sea;
  There are heights of joy that I may not reach
  Till I rest in peace with Thee.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "I " "am " "Thine, " "O " "Lord, " "I " "have " "heard " "Thy " "voice, "
  "\nAnd " "it " "told " "Thy " "love " "to " "me; "
  "\nBut " "I " "long " "to " "rise " "in " "the " "arms " "of " "faith, "
  "\nAnd " "be " clo "ser " "drawn " "to " "Thee. "
  "\nDraw " "me " near "er, " near "er, " Bles "sed " "Lord, "
  "\nTo " "the " "cross " "where " "Thou " "hast " "died; "
  "\nDraw " "me " near "er, " near "er, " near "er, " Bles "sed " "Lord, "
  "\nTo " "Thy " pre "cious " bleed "ing " "side.\n"

  \set stanza = "2."
  "\nCon" se "crate " "me " "now " "to " "Thy " ser "vice, " "Lord, "
  "\nBy " "the " "power " "of " "grace " Di "vine; "
  "\nLet " "my " "soul " "look " "up " "with " "a " stead "fast " "hope, "
  "\nAnd " "my " "will " "be " "lost " "in " "Thine. "
  "\nDraw " "me " near "er, " near "er, " Bles "sed " "Lord, "
  "\nTo " "the " "cross " "where " "Thou " "hast " "died; "
  "\nDraw " "me " near "er, " near "er, " near "er, " Bles "sed " "Lord, "
  "\nTo " "Thy " pre "cious " bleed "ing " "side.\n"

  \set stanza = "3."
  "\nOh, " "the " "pure " de "light " "of " "a " sin "gle " "hour "
  "\nThat " be "fore " "Thy " "throne " "I " "spend. "
  "\nWhen " "I " "kneel " "in " "prayer, " "and " "with " "Thee, " "my " "God, "
  "\nI " com "mune " "as " "friend " "with " "friend. "
  "\nDraw " "me " near "er, " near "er, " Bles "sed " "Lord, "
  "\nTo " "the " "cross " "where " "Thou " "hast " "died; "
  "\nDraw " "me " near "er, " near "er, " near "er, " Bles "sed " "Lord, "
  "\nTo " "Thy " pre "cious " bleed "ing " "side.\n"

  \set stanza = "4."
  "\nThere " "are " "depths " "of " "love " "that " "I " can "not " "know "
  "\nTill " "I " "cross " "the " nar "row " "sea; "
  "\nThere " "are " "heights " "of " "joy " "that " "I " "may " "not " "reach "
  "\nTill " "I " "rest " "in " "peace " "with " "Thee. "
  "\nDraw " "me " near "er, " near "er, " Bles "sed " "Lord, "
  "\nTo " "the " "cross " "where " "Thou " "hast " "died; "
  "\nDraw " "me " near "er, " near "er, " near "er, " Bles "sed " "Lord, "
  "\nTo " "Thy " pre "cious " bleed "ing " "side. "
}

wordsMidiMen = \lyricmode {
  \set stanza = "1."
  "I " "am " "Thine, " "O " "Lord, " "I " "have " "heard " "Thy " "voice, "
  "\nAnd " "it " "told " "Thy " "love " "to " "me; "
  "\nBut " "I " "long " "to " "rise " "in " "the " "arms " "of " "faith, "
  "\nAnd " "be " clo "ser " "drawn " "to " "Thee. "
  "\nDraw " "me " near "er, " near "er, " near "er, " Bles "sed " "Lord, "
  "\nTo " "the " "cross " "where " "Thou " "hast " "died; "
  "\nDraw " "me " near "er, " near "er, " near "er, " Bles "sed " "Lord, "
  "\nTo " "Thy " pre "cious " bleed "ing " "side.\n"

  \set stanza = "2."
  "\nCon" se "crate " "me " "now " "to " "Thy " ser "vice, " "Lord, "
  "\nBy " "the " "power " "of " "grace " Di "vine; "
  "\nLet " "my " "soul " "look " "up " "with " "a " stead "fast " "hope, "
  "\nAnd " "my " "will " "be " "lost " "in " "Thine. "
  "\nDraw " "me " near "er, " near "er, " near "er, " Bles "sed " "Lord, "
  "\nTo " "the " "cross " "where " "Thou " "hast " "died; "
  "\nDraw " "me " near "er, " near "er, " near "er, " Bles "sed " "Lord, "
  "\nTo " "Thy " pre "cious " bleed "ing " "side.\n"

  \set stanza = "3."
  "\nOh, " "the " "pure " de "light " "of " "a " sin "gle " "hour "
  "\nThat " be "fore " "Thy " "throne " "I " "spend. "
  "\nWhen " "I " "kneel " "in " "prayer, " "and " "with " "Thee, " "my " "God, "
  "\nI " com "mune " "as " "friend " "with " "friend. "
  "\nDraw " "me " near "er, " near "er, " near "er, " Bles "sed " "Lord, "
  "\nTo " "the " "cross " "where " "Thou " "hast " "died; "
  "\nDraw " "me " near "er, " near "er, " near "er, " Bles "sed " "Lord, "
  "\nTo " "Thy " pre "cious " bleed "ing " "side.\n"

  \set stanza = "4."
  "\nThere " "are " "depths " "of " "love " "that " "I " can "not " "know "
  "\nTill " "I " "cross " "the " nar "row " "sea; "
  "\nThere " "are " "heights " "of " "joy " "that " "I " "may " "not " "reach "
  "\nTill " "I " "rest " "in " "peace " "with " "Thee. "
  "\nDraw " "me " near "er, " near "er, " near "er, " Bles "sed " "Lord, "
  "\nTo " "the " "cross " "where " "Thou " "hast " "died; "
  "\nDraw " "me " near "er, " near "er, " near "er, " Bles "sed " "Lord, "
  "\nTo " "Thy " pre "cious " bleed "ing " "side. "
}

\book {
  \bookOutputSuffix "midi-women"
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
    \midi {}
  }
}

\book {
  \bookOutputSuffix "midi-men"
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
      #(layout-set-staff-size 18)
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
