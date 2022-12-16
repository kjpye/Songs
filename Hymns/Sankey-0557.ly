\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Hide Thou Me!"
  subtitle    = "Sankey No. 557"
  subsubtitle = "Sankey 880 No. 290"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "R. Lowry."
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

% #(set-global-staff-size 16)

global = {
  \key aes \major
  \time 3/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s4 s2.*3 s2
  \textMark \markup { \box \bold "B" } s4 s2.*3 s2
  \textMark \markup { \box \bold "C" } s4 s2.*3 s2
  \textMark \markup { \box \bold "D" } s4 s2.*3 s2
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  ees'8. 16 | aes4. c8 bes8. aes16 | ees4 aes2 | bes aes8[bes] | c2 \bar "|" \break
  bes8 aes | 4. f8 aes8. f16 | ees4 aes2 | bes2 c4 | aes2 \bar "|" \break
  aes8. 16 | des4. 8 aes8. bes16 | c4 4 bes8 aes | bes4. 8 aes8. bes16 | c4 4 \bar "|" \break
  bes8 aes | 4. f8 aes8. f16 | ees4 aes2 | c2 bes4 | aes2
}

alto = \relative {
  \autoBeamOff
  c'8. 16 | 4. ees8 des8. c16 | 4 2 | ees2 4 | 2
  ees8 8 | f4. des8 f8. des16 | c4 2 | des2 ees4 | c2
  c8. 16 | f4. 8 8. 16 | ees4 4 des8 c | ees4. 8 8. 16 | ees4 4
  ees8 8 | f4. des8 f8. des16 | c4 2 | ees2 des4 | c2
}

tenor = \relative {
  \autoBeamOff
  aes8. 16 | 4. 8 ees8. 16 | aes4 2 | g2 f8[g] | aes2
  aes8 8 | 4. 8 8. 16 | 4 2 | g2 4 | aes2
  aes8. 16 | 4. 8 8. 16 | 4 4 8 8 | g4. 8 f8. g16 | aes4 4
  aes8 8 | 4. 8 8. 16 | 4 2 | 2 g4 | aes2
}

bass = \relative {
  \autoBeamOff
  aes,8. 16 | 4. 8 8. 16 | 4 2 | ees'2 4 | aes,2
  c8 8 | des4. 8 8. 16 | aes4 2 | ees'2 4 | aes,2
  aes'8. 16 | des,4. 8 8. 16 | aes4 4 8 8 | ees'4. 8 8. 16 | aes,4 4
  c8 8 | des4. 8 8. 16 | aes4 2 | ees'2 4 | aes,2
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
}

chorusMen = \lyricmode {
}

verses = 3

wordsOne = \lyricmode {
  \set stanza = "1."
  In Thy cleft, O Rock of A -- ges,
  Hide Thou me!
  When the fit -- ful tem -- pest ra -- ges,
  Hide Thou me!
  Where no mor -- tal arm can se -- ver
  From my heart Thy love for e -- ver,
  Hide me, O Thou Rock of A -- ges,
  Safe in Thee!
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  From the snare of sin -- ful plea -- sure,
  Hide Thou me!
  Thou, my soul's e -- ter -- nal Trea -- sure,
  Hide Thou me!
  When the world its power is wield -- ing,
  And my heart is al -- most yield -- ing,
  Hide me, O Thou Rock of A -- ges,
  Safe in Thee!
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  In the lone -- ly night of sor -- row,
  Hide Thou me!
  Till in glo -- ry dawns the mor -- row,
  Hide Thou me!
  When I'm near -- ing Jor -- dan's bil -- low,
  Let Thy bo -- som be my pil -- low;
  Hide me, O Thou Rock of A -- ges,
  Safe in Thee!
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "In " "Thy " "cleft, " "O " "Rock " "of " A "ges, "
  "\nHide " "Thou " "me! "
  "\nWhen " "the " fit "ful " tem "pest " ra "ges, "
  "\nHide " "Thou " "me! "
  "\nWhere " "no " mor "tal " "arm " "can " se "ver "
  "\nFrom " "my " "heart " "Thy " "love " "for " e "ver, "
  "\nHide " "me, " "O " "Thou " "Rock " "of " A "ges, "
  "\nSafe " "in " "Thee!\n"

  \set stanza = "2."
  "\nFrom " "the " "snare " "of " sin "ful " plea "sure, "
  "\nHide " "Thou " "me! "
  "\nThou, " "my " "soul's " e ter "nal " Trea "sure, "
  "\nHide " "Thou " "me! "
  "\nWhen " "the " "world " "its " "power " "is " wield "ing, "
  "\nAnd " "my " "heart " "is " al "most " yield "ing, "
  "\nHide " "me, " "O " "Thou " "Rock " "of " A "ges, "
  "\nSafe " "in " "Thee!\n"

  \set stanza = "3."
  "\nIn " "the " lone "ly " "night " "of " sor "row, "
  "\nHide " "Thou " "me! "
  "\nTill " "in " glo "ry " "dawns " "the " mor "row, "
  "\nHide " "Thou " "me! "
  "\nWhen " "I'm " near "ing " Jor "dan's " bil "low, "
  "\nLet " "Thy " bo "som " "be " "my " pil "low; "
  "\nHide " "me, " "O " "Thou " "Rock " "of " A "ges, "
  "\nSafe " "in " "Thee! "
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
