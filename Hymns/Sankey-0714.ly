\version "2.25.0"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Thy Lord is Near."
  subtitle    = "Sankey No. 714"
%  subsubtitle = "Sankey 880 No. Y"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Edward M. Fuller."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Emma G. Dietrick."
  meter       = \markup\smallCaps "8.6."
%  piece       = \markup\smallCaps "piece"

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
  \textMark \markup { \box \bold "D" } s4 s1*4 s2.
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  e'4^\markup\smallCaps "Duet." | gis4. 8 b4 a | gis4. 8 e4 4 | gis4. e8 dis4 fis | e2. \bar "|" \break
  e4 | gis4. 8 b4. 8 | a4 e gis4. 8 | 4. fis8 4 gis | fis2. \bar "|" \break
  a4 | 4. gis8 a4 fis | b4. gis8 b\fermata b, e a | gis2. fis4 | e2.
  \section \sectionLabel \markup\smallCaps "Refrain." \break
  b'4 | 2. 4 | 2. 4 | cis2. fis,4 | a2. dis,4 | e2.
}

alto = \relative {
  \autoBeamOff \tiny
  gis4 | b4. e8 dis4 cis | b4. 8 gis4 4 | b4. gis8 fis4 a | gis2.
  gis4 | b4. e8 d4. 8 | cis4 c b4. 8 | ais4. 8 4 4 | a(dis cis)
  b4 | 2. 4 | 4. e8 8\fermata r r cis | <<{\voiceFour b8 e dis2 s4} \new Voice {\voiceTwo \tiny b2.(<a dis>4)}>> | <gis b>2. \section
  \normalsize r4 | r e' dis r | r fis e e | 2. 4 | 4(dis cis) b | 2.
}

tenor = \relative {
  \autoBeamOff
  gis4 | b4. e8 dis4 cis | b4. 8 gis4 4 | b4. gis8 fis4 a | gis2.
  gis4 | b4. e8 d4. 8 | cis4 c b4. 8 | ais4. 8 4 4 | 2.
  a4 | fis4. eis8 fis4 a | gis4 e8 gis r4 r8 cis | b e b2 a4 | gis2. \section
  r4 | r gis fis r | r a gis gis | a2. cis4 | 4(b a) a | gis2.
}

bass = \relative {
  \autoBeamOff \tiny
  r4 | e,4 e'2 4 | e, e'2 4 | r4 e8 gis fis4 dis | e(b e,)
  r4 | e e'2 4~ | 4 2 4 | fis, fis' fis,2 | <<{\voiceThree f'4\rest fis(e)} \new Voice {\voiceTwo b2.}>>
  \voiceTwo <b d>4 | b2. 4 | e2~<a, e'>8\fermata r8 r4 | b1( | e,2.) \section
  \normalsize r4 | r e' b r | r b e e | a,2. 4 | b2. 4 | e2.
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  He knows, He knows; Thy Lord is near: __ He knows.
}

chorusMen = \lyricmode {
  \repeat unfold 36 _
  Thy Lord is near: He knows.
  He knows, He knows;
  _ _ _ _ _ _.
}

verses = 4

wordsOne = \lyricmode {
  \set stanza = "1."
  O ach -- ing heart, with sor -- row torn,
  Thy Lord is near and knows!
  He knows it all— the feet way- worn,
  The wea -- ry cares and woes,
  The load of grief in an -- guish borne,
  Thy Lord is near: __ He knows.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  O faint -- ing soul, with doubts op -- pressed,
  Thy Lord is near and knows!
  He knows it all— how art thou pressed
  On ev -- 'ry side with foes,
  He waits to be thy cher -- ished Guest;
  Thy Lord is near: __ He knows.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  O wea -- ry head, that fain would rest,
  Thy Lord is near and knows!
  He knows it all, and on His breast
  Thou may -- est now re -- pose:
  Drop ev -- 'ry care at His be -- hest;
  Thy Lord is near: __ He knows!
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  O lone -- ly one, live thou thy best,
  Thy Lord is near and knows!
  He knows it all, sees ev -- 'ry test—
  Yes, ev -- 'ry tear that flows:
  Re -- joice, faint heart, His way is best;
  Thy Lord is near: __ He knows!
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "O " ach "ing " "heart, " "with " sor "row " "torn, "
  "\nThy " "Lord " "is " "near " "and " "knows! "
  "\nHe " "knows " "it " "all— " "the " "feet " way "worn, "
  "\nThe " wea "ry " "cares " "and " "woes, "
  "\nThe " "load " "of " "grief " "in " an "guish " "borne, "
  "\nThy " "Lord " "is " "near: "  "He " "knows. "
  "\nHe " "knows, " "He " "knows; " "Thy " "Lord " "is " "near: "  "He " "knows.\n"

  \set stanza = "2."
  "\nO " faint "ing " "soul, " "with " "doubts " op "pressed, "
  "\nThy " "Lord " "is " "near " "and " "knows! "
  "\nHe " "knows " "it " "all— " "how " "art " "thou " "pressed "
  "\nOn " ev "'ry " "side " "with " "foes, "
  "\nHe " "waits " "to " "be " "thy " cher "ished " "Guest; "
  "\nThy " "Lord " "is " "near: "  "He " "knows. "
  "\nHe " "knows, " "He " "knows; " "Thy " "Lord " "is " "near: "  "He " "knows.\n"

  \set stanza = "3."
  "\nO " wea "ry " "head, " "that " "fain " "would " "rest, "
  "\nThy " "Lord " "is " "near " "and " "knows! "
  "\nHe " "knows " "it " "all, " "and " "on " "His " "breast "
  "\nThou " may "est " "now " re "pose: "
  "\nDrop " ev "'ry " "care " "at " "His " be "hest; "
  "\nThy " "Lord " "is " "near: "  "He " "knows! "
  "\nHe " "knows, " "He " "knows; " "Thy " "Lord " "is " "near: "  "He " "knows.\n"

  \set stanza = "4."
  "\nO " lone "ly " "one, " "live " "thou " "thy " "best, "
  "\nThy " "Lord " "is " "near " "and " "knows! "
  "\nHe " "knows " "it " "all, " "sees " ev "'ry " "test— "
  "\nYes, " ev "'ry " "tear " "that " "flows: "
  "\nRe" "joice, " "faint " "heart, " "His " "way " "is " "best; "
  "\nThy " "Lord " "is " "near: "  "He " "knows! "
  "\nHe " "knows, " "He " "knows; " "Thy " "Lord " "is " "near: "  "He " "knows. "
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

#(set-global-staff-size 19)

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
            \new Voice { \global \voiceOne \soprano \bar "|." }
            \new Voice { \global \voiceTwo \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne \chorus }
            \new Lyrics \lyricsto "aligner"   \wordsTwo
            \new Lyrics \lyricsto "aligner"   \wordsThree
            \new Lyrics \lyricsto "aligner"   \wordsFour
          >>
                                  % Joint tenor/bass staff
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice { \global \voiceOne \tenor }
            \new Voice { \global \voiceTwo \bass }
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
            \new Voice { \global \voiceOne \repeat unfold \verses \soprano \bar "|." }
            \new Voice { \global \voiceTwo \repeat unfold \verses { \alto \nl } \bar "|." }
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
            \new Voice { \global \voiceOne \repeat unfold \verses \tenor }
            \new Voice { \global \voiceTwo \repeat unfold \verses \bass }
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
