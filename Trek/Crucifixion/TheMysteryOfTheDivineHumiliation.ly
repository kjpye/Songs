\version "2.19.82"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "5. The Mystery of the Divine Humiliation"
  subtitle    = "The Crucifixion"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "J. Stainer"
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = "Rev. J. Sparrow-Simpson, M.A."
%  meter       = "meter"
%  piece       = "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

#(set-global-staff-size 20)

% \paper {
%   #(set-paper-size "a4")
%   line-width = 180\mm
%   left-margin = 20\mm
%   bottom-margin = 10\mm
%   top-margin = 10\mm
% }

global = {
  \key aes \major
  \time 4/2
  \tempo 2=68
}

wordsOne = \lyricmode {
  \set stanza = "1."
  Cross of Jes- us, Cross of sor- row,
  Where the blood of Christ was shed,
  Per- fect man on thee was tor- tured,
  Per- fect God on thee has bled.
}

wordsTwo = \lyricmode {
  \set stanza = "2."
  Here the King of all the a- ges,
  Throned in light ere worlds could be
  Robed in mor- tal flesh is dy- ing,
  Cru- ci- fied by sin for me.
}

wordsThree = \lyricmode {
  \set stanza = "3."
  O mys- ter- ious con- desc- end- ing!
  O ab- and- on- ment sub- lime!
  Ver- y God Him- self is bear- ing
  All the Suf- fer- ings of time!
}

wordsFour = \lyricmode {
  \set stanza = "4."
  Ev- er- more for hu- man fail- ure
  By His Pas- sion we can plead;
  God has borne all mor- tal ang- uish,
  Sure- ly He will know our need.
}

wordsFive = \lyricmode {
  \set stanza = "5."
  This― all hu- man thought sur- pas- sing—
  This is earth's most aw- ful hour,
  God has tak- en mor- tal weak- ness!
  God has laid a- side His Power!
}

wordsSix = \lyricmode {
  \set stanza = "6."
  Once the Lord of bril- liant ser- aphs,
  Winged with Love to do His Will,
  Now the scorn of all His crea- tures,
  And the aim of eve- ry ill.
}

wordsSeven = \lyricmode {
  \set stanza = "7."
  Up in heaven, sub- lim- est glor- y
  Circ- led round Him from the first;
  But the earth finds none to serve Him,
  None to quench His rag- ing thirst.
}

wordsEight = \lyricmode {
  \set stanza = "8."
  Who shall fath- om that desc- end- ing,
  From the rain- bow– circ- led throne,
  Down to earth's most base pro- fan- ing,
  Dy- ing des- o- late a- lone.
}

wordsNine = \lyricmode {
  \set stanza = "9."
  From the "\"Hol-" y, Hol- y, Hol- y,
  We a- dore Thee, O most "High,\""
  Down to earth's blas- phem- ing voic- es
  And the shout of "\"Cru-" ci- "fy.\""
}

wordsTen = \lyricmode {
  \set stanza = "10."
  Cross of Jes- us, Cross of sor- row,
  Where the blood of Christ was shed,
  Per- fect man on thee was tor- tured,
  Per- fect God on thee has bled.
}

soprano = \relative c'' {
  \repeat volta 10 {
    c2 aes ees ees
    ees2 aes aes g \bar "||"
    aes2 c f,4(g) aes2
    des2 c c(bes) \bar "||"
    aes2 des des c
    bes2 f' f des \bar "||"
    ees2 des c4(bes) aes2
    aes2 g aes1
  }
}

alto = \relative c' {
  \repeat volta 10 {
    ees2 c des des
    c2 c4(d) ees2 ees \bar "||"
    ees2 c f ees4(f)
    g2 aes aes(g) \bar "||"
    aes4(g) f2 ees aes4(ges)
    f2 f4(g) aes2 ges \bar "||"
    f2 g4(f) e2 c4(d)
    ees2 ees4(des) c1
  }
}

tenor = \relative c' {
  \repeat volta 10 {
    aes2 aes bes bes
    aes2 aes4(bes) c2 bes \bar "||"
    aes2 aes aes4(bes) c2
    des2 ees ees1 \bar "||"
    c2 des4(c) bes2 c
    des2 bes c aes \bar "||"
    aes2 bes4(aes) g2 aes4(bes)
    c2 bes aes1
  }
}

bass= \relative c {
  \repeat volta 10 {
    aes2 aes' aes g
    aes2 f ees ees4(des) \bar "||"
    c2 aes des c
    bes2 aes ees'1 \bar "||"
    f2 bes4(aes) g2 aes
    des,2 des c c \bar "||"
    des2 bes c f
    ees2 ees aes,1
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
            \new Voice = "soprano" { \global \voiceOne \soprano \soprano \soprano \bar "|."}
            \new Voice = "alto"    { \global \voiceTwo \alto    \alto    \alto    }
            \new Lyrics \lyricsto "soprano" { \wordsOne   \wordsFive  \wordsEight }
            \new Lyrics \lyricsto "soprano" { \wordsTwo   \wordsSix   \wordsNine  }
            \new Lyrics \lyricsto "soprano" { \wordsThree \wordsSeven \wordsTen   }
            \new Lyrics \lyricsto "soprano" { \wordsFour                          }
          >>
                                % Joint tenor/bass staff
          \new Staff <<
            \clef "bass"
            \new Voice = "tenor" { \global \voiceOne \tenor \tenor \tenor }
            \new Voice = "bass"  { \global \voiceTwo \bass  \bass  \bass  }
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
                                              \wordsThree
                                              \wordsFour
                                              \wordsFive
                                              \wordsSix
                                              \wordsSeven
                                              \wordsEight
                                              \wordsNine
                                              \wordsTen
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
