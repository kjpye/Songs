\version "2.20.2"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Holy, Holy! Lord God Almighty."
  subtitle    = "Sankey No. 22"
  subsubtitle = "Sankey 880 No. 715"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Dr J. B. Dykes, by per."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = "R. Heber, D.D."
  meter       = "11.12.10.10"
  piece       = "Nicæa"

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
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
% \mark \markup { \circle "1a" }
  \repeat volta \verses {
    \mark \markup { \box "A" } s1*5
    \mark \markup { \box "B" } s1*5
    \mark \markup { \box "C" } s1*6
  }
}

TempoTrack = {
  \repeat volta \verses {
  }
}

soprano = \relative c' {
  \global
  \repeat volta \verses {
    ees4 ees g g
    bes2 bes
    c4. c8 c4 c
    bes2 g
    bes4. 8 4 4 \break
    ees4 ees d bes % B
    f4 bes c4. bes8
    bes1
    ees,4 ees g g
    bes4 bes bes2 \break
    c4. 8 4 4 % C
    bes2 bes
    ees2 bes4 bes
    c2 g
    aes4 f f4. ees8
    ees1 \break
  }
}

alto = \relative c' {
  \global
  \repeat volta \verses {
    bes4 bes ees ees
    d4(f) ees(d)
    c4 d ees f
    g2 ees
    f4 f g f
    ees4 f f g % B
    f4 d ees4. d8
    d1
    bes4 bes ees ees
    d4(f) ees(d)
    c4 d ees f % D
    g2 ees
    ees2 ees4 ees
    ees2 ees4(des)
    c4 c d4. ees8
    ees1
  }
}

tenor = \relative c' {
  \global
  \repeat volta \verses {
    g4 g ees ees
    f4(aes) g(bes)
    aes4(bes) c d
    ees4(bes) bes2
    bes4 bes bes bes
    g4 a bes bes % B
    d4 bes a4. bes8
    bes2(aes)
    g4 g ees ees
    f4(aes) g(bes)
    aes4 bes c d % C
    ees4(bes) g2
    g4(aes) bes des
    c2 bes
    aes4 aes aes4. g8
    g1
  }
}

bass= \relative c {
  \global
  \repeat volta \verses {
    ees4 ees c c
    bes2 ees
    aes,4. aes8 aes'4 aes
    ees2 ees
    d4 d ees d
    c4 c d ees % B
    f4 f f4. bes,8
    bes1
    ees4 ees c c
    bes4 bes ees2
    aes,4. aes8 aes'4 aes % C
    ees2 ees
    c2 g4 g
    aes2 ees'
    aes,4 aes bes4. ees8
    ees1
  }
}

chorus = \lyricmode {
}

wordsOne = \lyricmode {
  \set stanza = "1."
  Ho- ly, Ho- ly, Ho- ly!
  Lord _ God Al- migh- ty!
  Ear- ly in the morn- _ ing
  our song shall rise to Thee;
  Ho- ly, Ho- ly, Ho- _ ly!
  Mer- ci- ful and Migh- ty!
  God in Three Per- sons,
  bless- ed Trin- i- ty!
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Ho- ly, Ho- ly, Ho- ly!
  all the saints a- dore Thee,
  Cast- ing down their gold- en crowns
  a- round the glass- y sea:
  Che- ru- bim and Se- ra- phim
  fall- ing down be- fore Thee,
  Which wert and art,
  and ev- er- more shalt be.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Ho- ly, Ho- ly, Ho- ly!
  tho' the dark- ness hide Thee,
  Tho' the eye of sin- ful man
  Thy glo- ry may not see:
  On- ly Thou art Ho- _ ly,
  there is none be- side Thee,
  Per- fect in power, in love, and pu- ri- ty.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Ho- ly, Ho- ly, Ho- ly!
  Lord _ God Al- migh- ty!
  All Thy works shall praise Thy name
  in earth, and sky, and sea;
  Ho- ly, Ho- ly, Ho- _ ly!
  Mer- ci- ful and Migh- ty!
  God in Three Per- sons,
  bless- ed Trin- i- ty!
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "\nHo" "ly, " Ho "ly, " Ho "ly! "
  "\nLord " "" "God " Al migh "ty! "
  "\nEar" "ly " "in " "the " morn "" "ing "
  "\nour " "song " "shall " "rise " "to " "Thee; "
  "\nHo" "ly, " Ho "ly, " Ho "" "ly! "
  "\nMer" ci "ful " "and " Migh "ty! "
  "\nGod " "in " "Three " Per "sons, "
  "\nbless" "ed " Trin i "ty! "

  \set stanza = "2."
  "\nHo" "ly, " Ho "ly, " Ho "ly! "
  "\nall " "the " "saints " a "dore " "Thee, "
  "\nCast" "ing " "down " "their " gold "en " "crowns "
  "\na" "round " "the " glass "y " "sea: "
  "\nChe" ru "bim " "and " Se ra "phim "
  "\nfall" "ing " "down " be "fore " "Thee, "
  "\nWhich " "wert " "and " "art, "
  "\nand " ev er "more " "shalt " "be. "

  \set stanza = "3."
  "\nHo" "ly, " Ho "ly, " Ho "ly! "
  "\ntho' " "the " dark "ness " "hide " "Thee, "
  "\nTho' " "the " "eye " "of " sin "ful " "man "
  "\nThy " glo "ry " "may " "not " "see: "
  "\nOn" "ly " "Thou " "art " Ho "" "ly, "
  "\nthere " "is " "none " be "side " "Thee, "
  "\nPer" "fect " "in " "power, " "in " "love, " "and " pu ri "ty. "

  \set stanza = "4."
  "\nHo" "ly, " Ho "ly, " Ho "ly! "
  "\nLord " "" "God " Al migh "ty! "
  "\nAll " "Thy " "works " "shall " "praise " "Thy " "name "
  "\nin " "earth, " "and " "sky, " "and " "sea; "
  "\nHo" "ly, " Ho "ly, " Ho "" "ly! "
  "\nMer" ci "ful " "and " Migh "ty! "
  "\nGod " "in " "Three " Per "sons, "
  "\nbless" "ed " Trin i "ty! "
}
  
\book {
  \bookOutputSuffix "repeat"
  \score {
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
  \bookOutputSuffix "single"
  \score {
    \unfoldRepeats
%    \articulate
    <<
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
    <<
    \context GrandStaff <<
      <<
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff <<
            \new Voice \TempoTrack
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
    >>
    \midi {}
  }
}
