\version "2.20.2"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Sitting by the Wayside"
  subtitle    = "Sankey No. 37"
  subsubtitle = "Sankey 880 No. 569"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Wm. F. Sherwin"
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = "Rev. W. O. Cushing"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

#(set-global-staff-size 17)

verses = 4

global = {
  \key aes \major
  \time 4/4
  \tempo 4=120
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
% \mark \markup { \circle "1a" }
  \repeat volta \verses {
    \mark \markup { \box "A" } s1*2 s2
    \mark \markup { \box "B" } s2 s1*2
    \mark \markup { \box "C" } s1*3
    \mark \markup { \box "D" } s1*2 s2
    \mark \markup { \box "E" } s2 s1*2
    \mark \markup { \box "F" } s1*3
  }
}

soprano = \relative {
  \global
  \voiceOne
  \repeat volta \verses {
    ees'8 ees f ees ees4 aes
    bes8 bes aes bes c2
    f,8 f aes f \bar "" \break ees aes g aes
    bes2. \oneVoice r4 \voiceOne % B
    ees,8 ees f ees ees4 aes \break
    bes8 bes aes bes c2 % C
    des8 c bes aes f g aes bes
    aes2. \oneVoice r4 \voiceOne \bar "||" \break
    bes8^\markup \smallCaps Chorus.  bes bes bes des4 des % D
    aes8 aes aes bes c2
    ees8 ees d c \bar "" \break b8 c d bes % E
    c2. \oneVoice r4 \voiceOne
    c8 des c bes aes4 ees \break
    c'8 des c bes aes2 % F
    f8 aes ees aes c aes bes8. aes16
    aes2. \oneVoice r4
  }
}

alto = \relative {
  \global
  \voiceTwo
  \repeat volta \verses {
    c'8 c des c c4 c
    des8 des c ees ees2
    des8 des f des ees ees des c
    ees2. r4 % B
    ees8 c des c c4 ees
    ees8 ees ees ees ees2 % C
    f8 ees des c des des c des
    c2. r4
    ees8 ees ees ees f4 f % D
    f8 f f f ees2
    ees8 ees f g f ees f f
    ees2. r4 % E
    ees8 f ees des c4 c
    ees8 f ees d c2 % F
    des8 des ees c ees c des8. c16
    c2. r4
  }
}

tenor = \relative {
  \global
  \voiceOne
  \repeat volta \verses {
    aes8 aes aes aes aes4 ees
    g8 g aes g aes2
    aes8 aes aes aes aes aes f aes
    g2. \oneVoice r4 \voiceOne % B
    aes8 aes aes aes aes4 aes
    g8 g aes g aes2 % C
    aes8 aes g aes aes bes aes g
    aes2. \oneVoice r4 \voiceOne
    g8 g g g bes4 bes % D
    aes8 aes aes aes aes2
    c8 c d ees d c b d
    c2. \oneVoice r4 \voiceOne % E
    aes8 aes g g aes4 aes
    aes8 aes g g aes2 % F
    aes8 f aes aes aes aes g8. aes16
    aes2. \oneVoice r4
  }
}

bass= \relative {
  \global
  \voiceTwo
  \repeat volta \verses {
    aes,8 aes aes aes aes4 aes
    ees'8 ees ees ees aes2
    des,8 des des des c c bes aes
    ees'2. r4 % B
    aes,8 aes aes aes aes4 c
    ees8 ees c ees aes2 % C
    aes8 aes ees f des bes ees ees
    aes,2. r4
    ees'8 ees ees ees bes4 bes % D
    des8 des des des aes'2
    g8 g g g g g g g
    c,2. r4 % E
    aes'8 aes ees ees aes,4 aes
    aes'8 aes ees ees f2 % F
    des8 des c aes ees' ees ees8. aes,16
    aes2. r4
  }
}

chorus = \lyricmode {
  No one knows my sor -- row,
  no one cares for me—
  Wait -- ing in the dark -- ness for the day;
  Hear a sin -- ner plead -- ing.
  plead -- ing, Lord, with Thee—
  Je -- sus, come and take my sins a -- way!
  
  
}

wordsOne = \lyricmode {
  \set stanza = "1."
  Sit -- ting by the way -- side,
  sin -- ful, weak and blind,
  Wait -- ing in my dark -- ness for the day;
  O Thou Sa -- viour, Je -- sus,
  mer -- ci -- ful and kind,
  Hear me now, and take my sins a -- way!
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Long in dark -- ness wait -- ing,
  wea -- ry, sad and lone,
  How I long Thy glo -- rious face to see!
  O Thou bles -- sed Je -- sus,
  make me all Thine ownl
  Speak the word, and Thou canst set me free!
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Wea -- ry with my blind -- ness,
  wait -- ing all the day,
  Wea -- ry with my sor -- row and my pain'
  O Thou Son of Da -- vid,
  pass me not, I pray:
  Leave me not in hope -- less might a -- gain!
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Sit -- ting by the way -- side,
  sin -- ful, weak and blind,
  Is there a -- ny hope for one like me?
  Some -- thing seems to whis -- per in my dark -- ened mind,
  "\"Christ" has power to set the sin -- ner "free.\""
}
  
wordsMidi = \lyricmode {
}
  
\book {
  \bookOutputSuffix "repeat"
  \score {
%    \unfoldRepeats
%    \articulate
    \context GrandStaff <<
      <<
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff <<
            \set Staff.soloText   = #""
            \set Staff.soloIIText = #""
            \set Staff.aDueText   = #""
            \new Voice \RehearsalTrack
            \partCombine \soprano \alto
            \new NullVoice = "aligner" \soprano
            \new Lyrics \lyricsto "aligner" { \wordsOne \chorus }
            \new Lyrics \lyricsto "aligner"   \wordsTwo
            \new Lyrics \lyricsto "aligner"   \wordsThree
            \new Lyrics \lyricsto "aligner"   \wordsFour
%            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
%                                              \wordsTwo   \chorus
%                                              \wordsThree \chorus
%                                              \wordsFour  \chorus
%                                              \wordsFive  \chorus
%                                              \wordsSix   \chorus
%                                            }
%            \new Lyrics \lyricsto "soprano" \wordsMidi
          >>
                                  % Joint tenor/bass staff
          \new Staff <<
            \set Staff.soloText   = #""
            \set Staff.soloIIText = #""
            \set Staff.aDueText   = #""
            \clef "bass"
            \partCombine \tenor \bass
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
  \bookOutputSuffix "single"
  \score {
    \unfoldRepeats
%    \articulate
    \context GrandStaff <<
      <<
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff <<
            \set Staff.soloText   = #""
            \set Staff.soloIIText = #""
            \set Staff.aDueText   = #""
            \new Voice \RehearsalTrack
            \partCombine \soprano \alto
            \new NullVoice = "aligner" \soprano
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                              \wordsFour  \chorus
                                            }
%            \new Lyrics \lyricsto "soprano" \wordsMidi
          >>
                                  % Joint tenor/bass staff
          \new Staff <<
            \set Staff.soloText   = #""
            \set Staff.soloIIText = #""
            \set Staff.aDueText   = #""
            \clef "bass"
            \partCombine \tenor \bass
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
            \set Staff.soloText   = #""
            \set Staff.soloIIText = #""
            \set Staff.aDueText   = #""
            \new Voice \RehearsalTrack
            \partCombine \soprano \alto
            \new NullVoice = "aligner" \soprano
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                              \wordsFour  \chorus
                                            }
%            \new Lyrics \lyricsto "soprano" \wordsMidi
          >>
                                  % Joint tenor/bass staff
          \new Staff <<
            \set Staff.soloText   = #""
            \set Staff.soloIIText = #""
            \set Staff.aDueText   = #""
            \clef "bass"
            \partCombine \tenor \bass
          >>
        >>

      >>
    >>
    \midi {}
  }
}
