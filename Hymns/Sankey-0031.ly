\version "2.20.2"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Oh Come, all ye Faithful."
  subtitle    = "Sankey No. 31"
  subsubtitle = "Sankey 880 No. 740"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "John Reading"
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = "Mercer (tr.)"
%  meter       = "mete"
  piece       = \markup \smallCaps {Adeste Fidelis.}

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

#(set-global-staff-size 19)

verses = 3

global = {
  \key a \major
  \time 2/2
  \tempo 4=120
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \repeat volta \verses {
    \mark \markup { \box "A" } s4 s1*3 s2. \bar "|" \break
    \mark \markup { \box "B" } s4 s1*4 \break
    \mark \markup { \box "C" } s1*3 s2. \bar "|" \break
    \mark \markup { \box "D" } s4 s1*3 s2. \bar "|" \break
    \mark \markup { \box "E" } s4 s1*3 s2. \bar "|" \break
  }
  \bar "|."
}

soprano = \relative {
  \global
  \repeat volta \verses {
    a'4
    a2  e4 a
    b2 e,
    cis'4 b cis d
    c2 b4 a
    \slurDashed a2 gis4(fis) \slurSolid % B
    gis4 a b cis
    gis2(fis4.) e8
    e1
    e'2 d4 cis % C
    d2 cis
    b4 cis a b
    gis4.(fis8) e4 a4
    a4 gis a b % D
    a2 e4 cis'
    cis4 b cis d
    cis2 b4 cis4
    d4 cis b a % E
    gis2 a4(d)
    cis2(b4.) a8
    a2.
  }
}

alto = \relative {
  \global
  \repeat volta \verses {
    cis'4
    cis2 e4 cis
    e2 e
    e4 e e fis
    e2 e4 cis
    cis4(dis) \slurDashed e4(d) \slurSolid % B
    e4 e e e
    e2(dis4.) e8
    e1
    e2 e4 e % C
    e2 e
    e4 e e fis
    e2 e4 r
    R1 % D
    r2 r4 a
    a4 gis a b
    a2 e4 a
    b4 a gis fis % E
    e2 e4(a)
    a2(gis4.) a8
    a2.
  }
}

tenor = \relative {
  \global
  \repeat volta \verses {
    a4
    a2 a4 a
    gis2 gis
    a4 b a a
    a2 gis4 a
    a2 \slurDashed b4(b) \slurSolid % B
    b4 b e cis
    b2(a4.) gis8
    gis1
    cis2 b4 a % C
    b2 a
    gis4 a cis b
    b4.(a8) gis4 a
    a4 gis a b
    a2 e4 cis'
    cis4 b cis d
    cis2 b4 cis
    d4 cis b a % E
    b2 a4(fis')
    e2(d4.) cis8
    cis2.
    
  }
}

bass= \relative {
  \global
  \repeat volta \verses {
    a,4
    a2 cis4 a
    e'2 e
    a4 gis a d,
    e2 e4 fis
    fis2 \slurDashed e4(b) \slurSolid % B
    e4 fis gis a
    b2(b,4.) e8
    e1
    e2 e4 e % C
    e2 e
    e4 a cis, d
    e2 gis4 r4
    R1 % D
    r2 r4 a
    a4 gis a b
    a2 e4 a
    b4 a gis fis % E
    e4(d) cis(d)
    e2~4. a,8 a2.
  }
}

chorus = \lyricmode {
  Oh come, let us a -- dore Him,
  Oh come, let us a -- dore Him,
  Oh come, let us a -- dore Him,
  Christ the Lord!
}

wordsOne = \lyricmode {
  \set stanza = "1."
  Oh come, all ye faith -- ful,
  Joy -- ful -- ly tri -- umph -- ant.
  \set ignoreMelismata = ##t
  To Beth -- le -- hem hast -- en now
  \unset ignoreMelismata
  with glad __ ac -- cord:
  Lo! in a man -- ger
  Lies the King of an -- gels;
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Raise, raise, choirs of an -- gels,
  Songs of loud -- est tri -- umph;
  Thro' heaven's high arch -- es
  be your prais -- __ es pour'd:
  Now to our God
  be glo -- ry in the high -- est;
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  A -- men! Lord, we bless Thee,
  Born for our sal -- va -- tion;
  \set ignoreMelismata = ##t
  O Je -- sus! for ev -- er
  \unset ignoreMelismata
  be Thy name __ a -- dored;
  Word of the Fath -- er,
  Late in flesh ap -- pear -- ing;
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "\nOh " "come, " "all " "ye " faith "ful, "
  "\nJoy" ful "ly " tri umph "ant. "
  \set ignoreMelismata = ##t
  "\nTo " Beth le "hem " hast "en " "now "
  \unset ignoreMelismata
  "\nwith " "glad "  ac "cord: "
  "\nLo! " "in " "a " man "ger "
  "\nLies " "the " "King " "of " an "gels; "
  "\nOh " "come, " "let " "us " a "dore " "Him, "
  "\nOh " "come, " "let " "us " a "dore " "Him, "
  "\nOh " "come, " "let " "us " a "dore " "Him, "
  "\nChrist " "the " "Lord! "
  \set stanza = "2."
  "\nRaise, " "raise, " "choirs " "of " an "gels, "
  "\nSongs " "of " loud "est " tri "umph; "
  "\nThro' " "heaven's " "high " arch "es "
  "\nbe " "your " prais  "es " "pour'd: "
  "\nNow " "to " "our " "God "
  "\nbe " glo "ry " "in " "the " high "est; "
  "\nOh " "come, " "let " "us " a "dore " "Him, "
  "\nOh " "come, " "let " "us " a "dore " "Him, "
  "\nOh " "come, " "let " "us " a "dore " "Him, "
  "\nChrist " "the " "Lord! "
  \set stanza = "3."
  "\nA" "men! " "Lord, " "we " "bless " "Thee, "
  "\nBorn " "for " "our " sal va "tion; "
  \set ignoreMelismata = ##t
  "\nO " Je "sus! " "for " ev "er "
  \unset ignoreMelismata
  "\nbe " "Thy " "name "  a "dored; "
  "\nWord " "of " "the " Fath "er, "
  "\nLate " "in " "flesh " ap pear "ing; "
  "\nOh " "come, " "let " "us " a "dore " "Him, "
  "\nOh " "come, " "let " "us " a "dore " "Him, "
  "\nOh " "come, " "let " "us " a "dore " "Him, "
  "\nChrist " "the " "Lord! "
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
    \context GrandStaff <<
      <<
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff <<
            \new Voice \RehearsalTrack
            \new Voice = "soprano" { \voiceOne \soprano }
            \new Voice = "alto"    { \voiceTwo \alto    }
            \new Lyrics \lyricsto "soprano" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
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
