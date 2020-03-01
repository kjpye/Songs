\version "2.19.82"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "13. The Mystery of Intercession"
  subtitle    = "The Crucifixion"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Stainer"
%  arranger    = "arranger"
%  opus        = "opus"

%  poet        = "poet"
%  meter       = "meter"
%  piece       = "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

#(set-global-staff-size 18)

global = {
  \key des \major
  \time 3/2
  \tempo 2=80
}

wordsOne = \lyricmode {
  \set stanza = "1."
  Jes- us, the Cru- cif- ied, pleads for me,
  While He is nailed to the shame- ful tree,
  Scorned and for- sak- en, de- rid- ed and curst,
  See how His en- em- ies do their worst!
  Yet, in the midst of the tor- ture and shame,
  Jes- us, the Cru- cif- ied, breathes my name!
  Won- der of won- ders, oh! how can it be?
  Jes- us, the Cru- cif- ied, pleads for me!
}

wordsTwo = \lyricmode {
  \set stanza = "2."
  Lord, I have left Thee, I have den- ied,
  Fol- lowed the world in my self- ish pride;
  Lord, I have joined in the hate- _ ful cry,
  Slay Him, a- way with Him, cru- ci- fy.
  Lord, I have done it, oh! ask me not how;
  Wov- en the thorns for Thy tor- tured Brow!
  Yet in His pit- y so bound- less and free,
  Jes- us, the Cru- cif- ied, pleads for me!
}

wordsThree = \lyricmode {
  \set stanza = "3."
  Though thou has left Me and wandered a- way,
  Chos- en the dark- ness in- "stead of" the day;
  Though thou art cov- ered with man- y a stain,
  Though thou hast wound- ed Me oft and a- gain,
  Though thou hast fol- lowed thy way- ward will,
  Yet, in My pit- y, I love thee still.
  Won- der of win- ders it e- ver must be!
  Jes- us, the Cru- cif- ied, pleads for me!
}

wordsFour = \lyricmode {
  \set stanza = "4."
  Jes- us is dy- ing, in agon- y sore,
  Jes- us is suf- fer- ing more and more,
  Jes- us is bowed with the weight of His woe,
  Jes- us is faint with each bit- ter throe,
  Jes- us is bear- ing it all in my stead,
  Pit- y in- car- nate for me has bled;
  Won- der of won- ders it e- ver must be!
  Jes- us, the Cru- cif- ied, pleads for me!
}

soprano = \relative c' {
  \repeat volta 3 {
    f2^\mp des ees
    f2 aes ges
    f1 ees2
    des1.
    des2^\cresc ges f
    bes2 aes des
    c1 bes2
    aes1.
    f2^\mf aes des
    des2 c c^\f
    f2 ees des
    c1.
    des2^\dim c bes
    aes2. bes4 c2
    aes1 g2
    f1.
    aes2^\p aes bes
    g2 f ees
    c'2 c^\cresc des
    des2(c1)
    c2 ees des
    c2^\dim c bes
    aes^\p(f) g
    aes1.
    f2^\mf ^\markup Unison. ees des
    des2^\cresc ges bes
    bes2 g ees
    c'1.
    des2^\mf c ^\markup \italic rall. ees
    des2 c bes^\fermata
    aes2^\pp ^\markup Harmony. (ges) ees
    des1.
  }
}

alto = \relative c' {
  \repeat volta 3 {
    des2 des c
    des2 des des
    c1 c2
    des1.
    des2 bes c
    des2 des aes'
    aes2(f) g
    aes1.
    f2 f aes
    bes2 g e
    c'2 bes aes
    g1.
    g2 g g
    f2. g4 aes2
    f1 e2
    f1.c2 des d
    ees2 d des
    c2 e f
    g1.
    f2 ees e
    f2 ges f
    ees1 des2
    c1.
%    ces1.
%    bes2 des d
%    ees1 des2
%    <c ees>1(<ees aes>2)
%    f1(<f a>2)
%    <f bes>2 ees des
    f2 ees des
    des2 ges bes
    bes2 g ees
    c'1.
    des,2 c ees
    des2 c bes
    des2(bes) c
    des1.
  }
}

tenor = \relative c' {
  \repeat volta 3 {
    aes2 aes ges
    aes2 f ges
    aes1 ges2
    f1.
    f2 des' c
    bes2 des des
    ees1 des2
    c1.
    c2 aes aes
    g2 e' c
    c2 c c
    c1.
    bes2 c c
    c2. bes4 aes2
    c2(des) bes
    aes1.
    aes2 aes aes
    bes2 aes bes
    c2 bes aes
    bes1.
    aes2 bes bes
    c2 ees des
    c1 bes2
    aes1.
%    aes2 ges f
%    bes1 aes2
%    g2 bes g
%    aes1 ges2
%    aes2 a c
%    bes2 a bes_\fermata
    f2 ees des
    des2 ges bes
    bes2 g ees
    c'1.
    des2 c ees
    des2 c bes^\fermata
    f2(ees) ges
    f1.
  }
}

bass= \relative c {
  \repeat volta 3 {
    des2 f ees
    des2 c bes
    aes1 a2
    bes1.
    bes2 bes' aes
    ges2 f fes
    ees1 ees2
    aes1.
    aes2 f f
    e2 g bes
    aes2 g f
    e1.
    e2 e e
    f2. f4 aes,2
    aes2(bes) c
    f1.
    f2 f fes
    ees2 f g
    aes2 g f
    e1.
    f2 g g
    aes2 aes des,
    ees1 ees2
    aes,1.
%    des1.
%    ges1 fes2
%    ees1.
%    s1.
%    f1 f2
%    bes2 f ges
    f'2 ees des
    des2 ges bes
    bes2 g ees
    c'1.
    des,2 c ees
    des2 c bes_\fermata
    aes1 aes2
    des1.
  }
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
            \new Lyrics \lyricsto "soprano" { \wordsFour  }
          >>
                                % Joint tenor/bass staff
          \new Staff <<
            \clef "bass"
            \new Voice = "tenor" { \global \voiceOne \tenor }
            \new Voice = "bass"  { \global \voiceTwo \bass  }
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
 %                                             \wordsThree
                                              \wordsFour
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
