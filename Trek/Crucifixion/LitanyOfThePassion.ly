\version "2.19.82"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "10. Litany of the Passion"
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

#(set-global-staff-size 20)

global = {
  \key a \major
  \time 4/2
  \tempo 2=70
}

chorus = \lyricmode {
  Cru- ci- fied, I turn to Thee,
  Son of Mar- y, plead for me.
}

emptychorus = \lyricmode {
  _ _ _ _ _ _ _ _ _ _ _ _ _ _
}

wordsOne = \lyricmode {
  \set stanza = "1."
  Hol- y Jes- u by Thy Pas- sion,
  By the woes which none can share,
  Borne in more than king- ly fash- ion,
  By thy love be- yond com- pare:
}

wordsTwo = \lyricmode {
  \set stanza = "2."
  By the treach- er- y and tri- al,
  By the blows and sore dis- tress,
  By des- ert- ion and den- i- al,
  By Thine aw- ful lone- li- ness:
}

wordsThree = \lyricmode {
  \set stanza = "3."
  By Thy look so sweet and low- ly,
  While they smote Thee pn the Face,
  By Thy pat- ience, calm and hol- y,
  In the midst of keen dis- grace:
}

wordsFour = \lyricmode {
  \set stanza = "4."
  By the hour of con- dem- nat- ion,
  By the blood which trick- led down,
  When, for us and our sal- vat- ion,
  They didst wear the robe and crown:
}

wordsFive = \lyricmode {
  \set stanza = "5."
  By the path of sor- rows drear- y,
  By the Cross, They dread- ful load,
  By the pain, when, faint and wear- y,
  Thou didst sink u- pon the road:
}

wordsSix = \lyricmode {
  \set stanza = "6."
  By the Spir- it which could ren- der
  Love for hate and good for ill,
  By the merc- y, sweet and ten- der,
  Ppured up- on Thy murd- erers still:
}

soprano = \relative c'' {
  \repeat volta 6 {
    a2^\mf e fis e
    a2 b cis a
    b2 cis d cis
    b2 ais b1
    b2 b cis b
    a2 gis a fis
    b2 a gis \times 2/3 {fis4(gis a)}
    gis2 fis e1
    a2.^\p^\markup Unison. a4 a2 a
    a2 a b1^\fermata
    a2.^\pp a4 a2 a
    fis2^\markup Harmony. ^\markup \italic rall. gis a1
  }
}

alto = \relative c' {
  \repeat volta 6 {
    cis2 cis4(b) a(b) cis2
    cis2 e4(d) cis(d) e2
    e2 e d g
    fis2 fis4(e) d1
    e2 e4(d) cis2 cis
    fis2 eis fis cis
    fis2 dis e e
    e2 dis e1
    a2. a4 a2 a
    a2 a b1
    a2. a4 a2 a
    fis2 e4(d) cis1
  }
}

tenor = \relative c' {
  \repeat volta 6 {
    a2 a4(gis) fis(gis) a2
    a2 gis a4(b) c2
    b2 ais b e
    d2 cis b1
    b2 b4(a) gis2 gis
    a2 cis4(b) a2 a
    fis2 fis e cis'
    b2 b4(a) gis1
    a2. a4 a2 a
    a2 a b1_\fermata
    a2. a4 a2 a
    d4(cis) b2 a1
  }
}

bass= \relative c {
  \repeat volta 6 {
    a2 cis d cis
    fis2 e a a
    g2 fis b e,
    fis2 fis b a
    gis2 gis4(fis) eis2 eis
    fis2 cis fis fis4(e)
    dis2 b cis a
    b2 b e1
    a2. a4 a2 a
    a2 a b1
    a2. a4 a2 a
    d,2 e a,1
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
            \new Voice = "soprano" { \global \voiceOne \soprano \soprano \bar "|."}
            \new Voice = "alto"    { \global \voiceTwo \alto    \alto    }
            \new Lyrics \lyricsto "soprano" { \wordsOne   \emptychorus \wordsFour         }
            \new Lyrics \lyricsto "soprano" { \wordsTwo   \chorus      \wordsFive \chorus }
            \new Lyrics \lyricsto "soprano" { \wordsThree \emptychorus \wordsSix          }
          >>
                                % Joint tenor/bass staff
          \new Staff <<
            \clef "bass"
            \new Voice = "tenor" { \global \voiceOne \tenor \tenor }
            \new Voice = "bass"  { \global \voiceTwo \bass  \bass  }
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
            \new Lyrics \lyricsto "soprano" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                              \wordsFour  \chorus
                                              \wordsFive  \chorus
                                              \wordsSix   \chorus
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