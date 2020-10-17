\version "2.20.2"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Hark! the Glad Sound!"
  subtitle    = "Sankey No. 25"
  subsubtitle = "Sankey 880 No. 659"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "W. Wheall"
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = "P. Doddridge"
  meter       = "C.M."
  piece       = \markup \smallCaps Bedford

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

verses = 4

global = {
  \key ees \major
  \time 4/4
  \tempo 4=120
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
% \mark \markup { \circle "1a" }
  \repeat volta \verses {
    \mark \markup { \box "A" } s4 s1*3 s2.
    \mark \markup { \box "B" } s4 s1*3 s2.
  }
}

soprano = \relative {
  \global
  \repeat volta \verses {
    bes'4
    g4 ees c' bes
    aes4 g f bes
    ees4 d c c
    bes2. \bar "||" \break g4
    aes4 bes c bes % B
    aes4 g f bes
    ees4 g, aes f
    ees2.
  }
}

alto = \relative {
  \global
  \repeat volta \verses {
    ees'4
    ees4 ees ees ees
    ees8 d ees4 d f
    ees4 f g f8 ees
    d2. \bar "||" \break ees4
    ees4 ees ees d % B
    ees8 f ees4 d d
    ees4 ees ees d
    ees2.
  }
}

tenor = \relative {
  \global
  \repeat volta \verses {
    g4
    bes4 bes c g
    aes4 bes bes bes
    bes8 a bes4 bes a
    bes2. \bar "||" \break bes4
    aes4 g aes f % B
    aes8[f] g[aes] bes4 bes
    bes4 c c bes8 aes
    g2.
  }
}

bass= \relative {
  \global
  \repeat volta \verses {
    ees4
    ees4 g aes g
    f4 ees bes d
    c4 bes ees f
    bes,2. \bar "||" \break ees4
    c4 ees aes, bes % B
    c8 d ees4 bes bes
    aes4 c aes bes
    ees2.
  }
}

chorus = \lyricmode {
}

wordsOne = \lyricmode {
  \set stanza = "1."
  Hark, the glad sound-- the Sa -- iour comes!
  The Sa -- viour pro -- mised long;
  Let ev -- 'ry heart ex -- ult with joy,
  And ev -- 'ry voice be sung!
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  He comes! the pris -- 'ners to re -- lease,
  In Sa -- tan's bin -- dage held;
  The gates of brass be -- fore Him burst,
  The i -- ron fet -- ters yield.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  He comes! the bro -- ken hearts to bind,
  The bleed -- ing souls to curel
  And with the treas -- ures of His grace
  To enrich the hum -- ble poor.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Our glad ho -- san -- nas, Prince of Peace!
  They wel -- come shall pro -- claim;
  And heaven's ex -- alt -- ed arch -- es ring
  With Thy most hon -- oured name.
}
  
wordsMidi = \lyricmode {
}
  
\book {
  \bookOutputSuffix "repeat"
  \score {
%    \unfoldRepeats
%    \articulate
%    <<
    \context GrandStaff <<
      <<
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff <<
            \new Voice \RehearsalTrack
            \new Voice = "soprano" { \voiceOne \soprano }
            \new Voice = "alto"    { \voiceTwo \alto    }
            \new Lyrics \lyricsto "soprano" { \wordsOne \chorus }
            \new Lyrics \lyricsto "soprano"   \wordsTwo
            \new Lyrics \lyricsto "soprano"   \wordsThree
            \new Lyrics \lyricsto "soprano"   \wordsFour
%            \new Lyrics \lyricsto "soprano" { \wordsOne   \chorus
%                                              \wordsTwo   \chorus
%                                              \wordsThree \chorus
%                                              \wordsFour  \chorus
%                                            }
%            \new Lyrics \lyricsto "soprano" \wordsMidi
          >>
                                  % Joint tenor/bass staff
          \new Staff <<
            \clef "bass"
            \new Voice = "tenor" { \voiceOne \tenor }
            \new Voice = "bass"  { \voiceTwo \bass  }
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
    \midi {}
  }
}

\book {
  \bookOutputSuffix "single"
  \score {
    \unfoldRepeats
%    \articulate
    \context GrandStaff <<
      <<
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff <<
            \new Voice \RehearsalTrack
            \new Voice = "soprano" { \voiceOne \soprano \bar "|." }
            \new Voice = "alto"    { \voiceTwo \alto    }
            \new Lyrics \lyricsto "soprano" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                              \wordsFour  \chorus
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Staff <<
            \clef "bass"
            \new Voice = "tenor" { \voiceOne \tenor }
            \new Voice = "bass"  { \voiceTwo \bass  }
          >>
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
  \bookOutputSuffix "midi"
  \score {
    \unfoldRepeats
%    \articulate
    \context GrandStaff <<
      <<
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff <<
            \new Voice \RehearsalTrack
            \new Voice = "soprano" { \voiceOne \soprano }
            \new Voice = "alto"    { \voiceTwo \alto    }
            \new Lyrics \lyricsto "soprano" \wordsMidi
          >>
                                  % Joint tenor/bass staff
          \new Staff <<
            \clef "bass"
            \new Voice = "tenor" { \voiceOne \tenor }
            \new Voice = "bass"  { \voiceTwo \bass  }
          >>
        >>
      >>
    >>
    \midi {}
  }
}
