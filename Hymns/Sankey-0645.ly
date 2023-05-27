\version "2.25.0"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "The Heavenly Secret."
  subtitle    = "Sankey No. 645"
%  subsubtitle = "Sankey 880 No. "
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "J. Mountain."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Edith Gilling Cherry."
%  meter       = \markup\smallCaps "meter"
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key ees \major
  \time 4/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s4 s1*4
  \textMark \markup { \box \bold "B" }    s1*4 s2
  \textMark \markup { \box \bold "C" } s2 s1*4 s2.
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  g'8. aes16 | bes4 4 ees4. g,8 | g4 f r f8. g16 | aes4 4 c c | 2. d8. c16 |
  bes4 4 4. aes8 | 4 g r g8. 16 | 4 f f ees | d2. 8. 16 | ees4 4 \bar "|" \break
  f4 4 | g g r aes | bes c d ees | c2. 4 | bes ees, ees d | ees2.
}

alto = \relative {
  \autoBeamOff
  ees'8. 16 | 4 d ees4. 8 | 4 4 r d8. ees16 | f4 4 ees e | f2. d8. 16 |
  ees4 f ees4. d8 | f4 ees r cis8. 16 | d4 4 4 c | bes2. 8. 16 | 4 4
  bes4 d | ees ees r d | ees ees f g | ees2. d4 | ees c c bes | 2.
}

tenor = \relative {
  \autoBeamOff
  bes8. 16 | 4 aes g4. ges8 | c4 4 r bes8. 16 | c4 c c bes | aes2. 8. 16 |
  g4 f g4. bes8 | 4 4 r4 8. 16 | 4 4 a a | f2. aes8. 16 | 4 4
  aes4 bes | 4 4 r bes | 4 aes aes bes | c2. aes4 | bes c8[bes] aes4 4 | g2.
}

bass = \relative {
  \autoBeamOff
  ees8. f16 | g4 f ees4. g8 | aes4 4 r4 8. g16 | f4 4 aes g | f2. bes,8. 16 |
  c4 d ees4. bes8 | ees4 4 r e8. 16 | f4 4 4 4 | bes,2. 8. 16 | c4 4
  d4 bes | ees4 4 r f | g4 aes f ees | aes2. f4 | g aes8[g] f4 bes, | ees2.
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
  I have learnt a heaven -- ly se -- cret,
  Yet I know not how or where;
  But I know 'tis sweet and pre -- cious,
  Ev -- er true, and glad, and fair;
  And that God in heaven re -- veals it
  To all whose ears can hear,
  To all whose ears can hear.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  And I know that ere I learnt it
  Oft my way was lone and hard;
  And a -- non in life's glad mu -- sic
  There was al -- ways that which jarred,
  And a hid -- den, dre -- ry dis -- cord
  That all its sweet -- ness marred,
  That all its sweet -- ness marred.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  But my harp of life was lift -- ed
  By the Lord who knew the range
  Of its ma -- ny strings who made it,
  And He struck a key -- note strange:
  At the touch of Christ my Mas -- ter
  I heard the mu -- sic change,
  I heard the mu -- sic change,
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Then no more it failed and falt -- ered,
  And no long -- er sobbed and strove;
  But it seemed to soar and min -- gle
  With the song of heaven a -- bove;
  For the pier -- ced hand of Je -- sus
  Had struck the key -- note— Love,
  Had struck the key -- note— \markup\smallCaps Love.
}
  
wordsFive = \lyricmode {
  \set stanza = "5."
  All thy heart's long- pris -- oned mu -- sic
  Let the Mas -- ter's hand set free—
  Let Him whis -- per now His sec -- ret,
  As He whis -- pered once to me;
  "\"Child," My love's the gol -- den key -- note
  Of all My will for thee,
  Of all My will for "thee!\""
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "I " "have " "learnt " "a " heaven "ly " se "cret, "
  "\nYet " "I " "know " "not " "how " "or " "where; "
  "\nBut " "I " "know " "'tis " "sweet " "and " pre "cious, "
  "\nEv" "er " "true, " "and " "glad, " "and " "fair; "
  "\nAnd " "that " "God " "in " "heaven " re "veals " "it "
  "\nTo " "all " "whose " "ears " "can " "hear, "
  "\nTo " "all " "whose " "ears " "can " "hear.\n"

  \set stanza = "2."
  "\nAnd " "I " "know " "that " "ere " "I " "learnt " "it "
  "\nOft " "my " "way " "was " "lone " "and " "hard; "
  "\nAnd " a "non " "in " "life's " "glad " mu "sic "
  "\nThere " "was " al "ways " "that " "which " "jarred, "
  "\nAnd " "a " hid "den, " dre "ry " dis "cord "
  "\nThat " "all " "its " sweet "ness " "marred, "
  "\nThat " "all " "its " sweet "ness " "marred.\n"

  \set stanza = "3."
  "\nBut " "my " "harp " "of " "life " "was " lift "ed "
  "\nBy " "the " "Lord " "who " "knew " "the " "range "
  "\nOf " "its " ma "ny " "strings " "who " "made " "it, "
  "\nAnd " "He " "struck " "a " key "note " "strange: "
  "\nAt " "the " "touch " "of " "Christ " "my " Mas "ter "
  "\nI " "heard " "the " mu "sic " "change, "
  "\nI " "heard " "the " mu "sic " "change,\n"

  \set stanza = "4."
  "\nThen " "no " "more " "it " "failed " "and " falt "ered, "
  "\nAnd " "no " long "er " "sobbed " "and " "strove; "
  "\nBut " "it " "seemed " "to " "soar " "and " min "gle "
  "\nWith " "the " "song " "of " "heaven " a "bove; "
  "\nFor " "the " pier "ced " "hand " "of " Je "sus "
  "\nHad " "struck " "the " key "note— " "Love, "
  "\nHad " "struck " "the " key "note— " "Love.\n"

  \set stanza = "5."
  "\nAll " "thy " "heart's " long pris "oned " mu "sic "
  "\nLet " "the " Mas "ter's " "hand " "set " "free— "
  "\nLet " "Him " whis "per " "now " "His " sec "ret, "
  "\nAs " "He " whis "pered " "once " "to " "me; "
  "\n\"Child, " "My " "love's " "the " gol "den " key "note "
  "\nOf " "all " "My " "will " "for " "thee, "
  "\nOf " "all " "My " "will " "for " "thee!\" "
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

#(set-global-staff-size 18)

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

#(set-global-staff-size 20)

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
