\version "2.19.82"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "15. The Adoration of the Crucified"
  subtitle    = "The Crucifixion"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Sir John Stainer"
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = "Rev. James Sparrow-Simpson, M.A."
%  meter       = "meter"
%  piece       = "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

#(set-global-staff-size 20)

global = {
  \key ees \major
  \time 4/2
  \tempo 2=86
  \partial 1
}

wordsOne = \lyricmode {
  \set stanza = "1."
  I a- dore Thee, I a- dore Thee!
  Glor- ious ere the world be- gan;
  Yet more won- der- ful Thou shin- est,
  Though div- ine, yet still div- in- est
  In Thy dy- ing love for man.
}

wordsTwo = \lyricmode {
  \set stanza = "2."
  I a- dore Thee, I a- dore Thee!
  Thank- ful at Thy feet to be;
  I have heard They ac- cent thrill- ing,
  Lo! I come, for Thou art will- ing
  Me to par- don, e- ven me.
}

wordsThree = \lyricmode {
  \set stanza = "3."
  I a- dore Thee, I a- dore Thee!
  Born of wo- man, yet Div- ine:
  Stained with sin I kneel be- fore Thee,
  Sweet- est Je- su, I im- plore Thee,
  Make me e- ver on- ly Thine.
}

soprano = \relative c'' {
  \repeat volta 3 {
    g2. f4
    f2 ees aes2. g4
    g2 f g aes
    bes2 c bes aes
    g1 bes2. a4
    a2 g d' c
    c2 bes bes ees
    ees2 d c b
    c2 g aes f
    ees2 g f d
    ees1
  }
}

alto = \relative c' {
  \repeat volta 3 {
    d2. d4
    d2 ees d ees
    ees2 d ees f
    g2 g g f
    ees1 fis2. fis4
    fis2 g fis fis
    fis2 g ees ees
    aes2 aes g f
    ees2 e f c
    ees2 d c bes
    bes1
  }
}

tenor = \relative c' {
  \repeat volta 3 {
    bes2. aes4
    aes2 g aes bes
    bes2 bes bes aes
    g2 c c d
    ees2(bes) d2. c4
    c2 bes bes a
    a2 bes bes bes
    aes2 f' ees d
    c2 c c aes
    g2 bes a aes
    g1
  }
}

bass= \relative c {
  \repeat volta 3 {
    bes2. bes4
    c2 c f ees
    bes'2 aes g f
    ees2 e f bes,
    ees1 d2. d4
    ees2 ees d d
    g2 g g g
    f2 f g g
    c,2 c f aes,
    bes2 bes bes bes
    ees1
  }
}

\book {
  \bookOutputSuffix "repeat"
  \score {
      <<
        \new ChoirStaff <<
                                % Joint soprano/alto staff
          \new Staff <<
            \new Voice = "soprano" { \global \voiceOne \soprano \bar "|."}
            \new Voice = "alto"    { \global \voiceTwo \alto             }
            \new Lyrics \lyricsto "soprano" { \wordsOne   }
            \new Lyrics \lyricsto "soprano" { \wordsTwo   }
            \new Lyrics \lyricsto "soprano" { \wordsThree }
          >>
                                % Joint tenor/bass staff
          \new Staff <<
            \clef "bass"
%            \new Voice = "tenor" { \global \voiceOne \tenor \tenor }
%            \new Voice = "bass"  { \global \voiceTwo \bass  \bass  }
            \new Voice = "tenor" { \global \voiceOne \tenor  }
            \new Voice = "bass"  { \global \voiceTwo \bass   }
          >>
        >>
      >>
    \layout {
      indent = 1.5\cm
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}

\book {
  \bookOutputSuffix "single"
  \score {
      <<
        \new ChoirStaff <<
                                % Joint soprano/alto staff
          \new Staff <<
            \new Voice = "soprano" { \global \voiceOne \unfoldRepeats \soprano \bar "|."}
            \new Voice = "alto"    { \global \voiceTwo \unfoldRepeats \alto    }
            \new Lyrics \lyricsto "soprano" { \wordsOne  
                                              \wordsTwo  
                                              \wordsThree
                                            }
          >>
                                % Joint tenor/bass staff
          \new Staff <<
            \clef "bass"
            \new Voice = "tenor" { \global \voiceOne \unfoldRepeats \tenor }
            \new Voice = "bass"  { \global \voiceTwo \unfoldRepeats \bass  }
          >>
        >>
      >>
    \layout {
      indent = 1.5\cm
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
    system-system-spacing.basic-distance = #22
    system-separator-markup = \slashSeparator
  }
  \score {
      <<
        \new ChoirStaff <<
                                % Joint soprano/alto staff
          \new Staff <<
            \new Voice = "soprano" { \global \voiceOne \unfoldRepeats \soprano \bar "|."}
            \new Voice = "alto"    { \global \voiceTwo \unfoldRepeats \alto    }
            \new Lyrics \lyricsto "soprano" { \wordsOne  
                                              \wordsTwo  
                                              \wordsThree
                                            }
          >>
                                % Joint tenor/bass staff
          \new Staff <<
            \clef "bass"
            \new Voice = "tenor" { \global \voiceOne \unfoldRepeats \tenor }
            \new Voice = "bass"  { \global \voiceTwo \unfoldRepeats \bass  }
          >>
        >>
      >>
    \layout {
      indent = 1.5\cm
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}
