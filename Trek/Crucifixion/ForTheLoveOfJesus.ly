\version "2.19.82"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "20. For the Love of Jesus"
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
  \key e \major
  \time 4/2
  \tempo 2=84
}

wordsOne = \lyricmode {
  \set stanza = "1."
  All for Jes- us, all for Jes- us,
  This our song shall e- ver be;
  For we have no hope, nor Sav- iour,
  If we have not hope in Thee.
}

wordsTwo = \lyricmode {
  \set stanza = "2."
  All for Jes- us, Thou wilt give us
  Strength to serve Thee, hour by hour;
  None can move us from They pres- ence,
  While we trust Thy love and power.
}

wordsThree = \lyricmode {
  \set stanza = "3."
  All for Jes- us, at Thine al- tar
  Thou wilt give us sweet con- tent;
  There, dear Lord, we shall re- ceive Thee
  In the sol- emn Sac- ra- ment.
}

wordsFour = \lyricmode {
  \set stanza = "4."
  All for Jes- us, Thou hast loved us;
  All for Jes- us, Thou hast died;
  All for Jes- us, Thou art with us;
  All for Jes- us cruc- if- ied.
}

wordsFive = \lyricmode {
  \set stanza = "5."
  All for Jes- us, all for Jes- us,
  This the Church- "'s" song must be;
  Till, at last, her sons are gath- ered
  One in love and one in Thee.
  A- men.
}

soprano = \relative c'' {
  \repeat volta 4 {
    gis2 b e dis
    cis2 b b a
    gis2 b e, gis
    fis2 e fis1
    fis2 gis a cis
    fis2 e e dis
    e2 b b a
    gis2 fis e1
  }
  e2 e
}

alto = \relative c'' {
  \repeat volta 4 {
    gis2 fis e e
    e2 e e dis
    gis2 fis e d
    cis2 e dis1
    dis2 eis fis fis
    a2 a a a
    gis2 e e fis
    e2 dis e1
  }
  cis2 b
}

tenor = \relative c' {
  \repeat volta 4 {
    e2 dis cis b
    a2 b cis b
    b2 b gis b
    cis2 gis b1
    b2 b a a
    b2 cis fis fis
    e2 gis, a4(b) cis2
    b2 b4(a) gis1
  }
  a2 gis
}

bass= \relative c {
  \repeat volta 4 {
    e2 e e e
    a2 gis fis b,
    e2 dis cis b
    a2 cis b1
    a'2 gis fis e
    dis2 cis b bis
    cis2 d cis a
    b2 b e1
  }
  a2 e
}

\book {
  \bookOutputSuffix "3"
  \score {
    \context GrandStaff <<
      <<
        \new ChoirStaff <<
                                % Joint soprano/alto staff
          \new Staff <<
            \new Voice = "soprano" { \global \voiceOne \soprano \bar "|."}
            \new Voice = "alto"    { \global \voiceTwo \alto             }
            \new Lyrics \lyricsto "soprano" { \wordsOne   }
            \new Lyrics \lyricsto "soprano" { \wordsTwo   }
%            \new Lyrics \lyricsto "soprano" { \wordsThree }
            \new Lyrics \lyricsto "soprano" { \wordsFour }
            \new Lyrics \lyricsto "soprano" { \wordsFive }
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
  \bookOutputSuffix "1"
  \score {
    \context GrandStaff <<
      <<
        \new ChoirStaff <<
                                % Joint soprano/alto staff
          \new Staff <<
            \new Voice = "soprano" { \global \voiceOne \unfoldRepeats \soprano \bar "|."}
            \new Voice = "alto"    { \global \voiceTwo \unfoldRepeats \alto    }
            \new Lyrics \lyricsto "soprano" { \wordsOne  
                                              \wordsTwo  
%                                              \wordsThree
                                              \wordsFour 
                                              \wordsFive 
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
    >>
    \layout {
      indent = 1.5\cm
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}
