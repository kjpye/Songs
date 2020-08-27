\version "2.20.2"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "O, Worship the King"
  subtitle    = "Sankey No. 11"
  subsubtitle = "Sankey 880 No. 736"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Dr. Gauntlett"
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = "Sir Robert Grant"
  meter       = "5.5.6.5"
  piece       = "Houghton"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key g \major
  \time 3/4
  \tempo 4=120
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
% \mark \markup { \circle "1a" }
  \mark \markup { \box "A" } s4 s2.*5
  \mark \markup { \box "B" } s2.*5
  \mark \markup { \box "C" } s2.*5 s2
}

TempoTrack = {
}

soprano = \relative c' {
  \global
  \repeat volta 6 {
    d4
    b'4 g e
    d2 d4
    b'4 g e
    d2 g4
    c4 c a \break
    d2 b4
    a4 fis e
    d2 a'4
    fis4 g b
    b4 a b \break
    c4 d e
    d2 d4
    d4 c c
    c4 b b
    a4 g fis
    g2
  }
}

dynamicsWomen = {
  \override DynamicTextSpanner.style = #'none
}

alto = \relative c' {
  \global
  \repeat volta 6 {
    d4
    d4 d c
    b2 d4
    d4 d c
    b2 g'4
    g4 g fis
    g2 g4
    fis4 d cis
    d2 d4
    d4 d g
    g4 fis g
    g4 g g g2 f4
    e4 e e
    d4 d d
    e4 d d
    d2
  }
}

tenor = \relative c' {
  \global
  \repeat volta 6 {
    b4
    b4 d g,
    a2 b4
    b4 d g,
    g2 b4
    e4 e d \break
    d2 d4 % B
    d4 a g
    fis2 fis4
    a4 g d'
    d4 d d \break
    c4 b c
    b2 b4
    b4 a a
    a4 g d'
    c4 b a
    b2
  }
}

dynamicsMen = {
  \override DynamicTextSpanner.style = #'none
}

bass= \relative c {
  \global
  \repeat volta 6 {
    g4
    g4 b c
    g2 g4
    g4 b c
    g2 e'4
    a,4 a d
    b2 g4
    a4 a a
    d2 d4
    d4 b g
    d'4 d g
    e4 d c
    g'2 gis4
    gis4 a g
    fis4 g g,
    c4 d d
    g,2
  }
}

wordsOne = \lyricmode {
  \set stanza = "1."
  Oh, wor- ship the King,
  All glo- rious a- bove!
  Oh, grate- ful- ly sing
  His power and His love;
  Our Shield and De- fend- er,
  The An- cient of days,
  Pa- vil- ion'd in splen- dour,
  And gird- ed with praise.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Oh, tell of His might,
  Oh, sing of his grace!
  Whose robe is the light,
  Whose can- o- py space;
  His cha- riots of wrath
  The deep thun- der- clouds form,
  And dark is His path
  On the wings of the storm.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  The earth with it's store
  Of won- ders un- fold,
  Al- might- y! Thy power
  Hath found- ed of old:
  Hath 'stab- lish'd it fast
  By a change- less dec- ree
  And round it hath cast,
  Like a man- tle, the sea.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  The boun- ti- ful care,
  What tongue can re- cite?
  It breathes in the air,
  It shines in the light;
  It streams from the hills,
  It des- cends to the plain,
  And sweet- ly dis- tils in
  The dew and the rain.
}
  
wordsFive = \lyricmode {
  \set stanza = "5."
  Frail child- ren of dust,
  And feeb- le as frail—
  In Thee do we trust,
  Nor find thee to fail:
  Thy merc- ies how ten- der,
  How firm to the end!
  Or Mak- er, Def- end- er,
  Re- deem- er, and Friend!
}
  
wordsSix = \lyricmode {
  \set stanza = "6."
  O meas- ure- less Might!
  In- eff- ab- le Love!
  While an- gels de- light
  To hymn Thee a- bove,
  The humb- ler cre- a- tion,
  Though feeb- le their lays,
  With true a- dor- a- tion
  Shall sing to Thy praise.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "\nOh, " wor "ship " "the " "King, "
  "\nAll " glo "rious " a "bove! "
  "\nOh, " grate ful "ly " "sing "
  "\nHis " "power " "and " "His " "love; "
  "\nOur " "Shield " "and " De fend "er, "
  "\nThe " An "cient " "of " "days, "
  "\nPa" vil "ion'd " "in " splen "dour, "
  "\nAnd " gird "ed " "with " "praise. "

  \set stanza = "2."
  "\nOh, " "tell " "of " "His " "might, "
  "\nOh, " "sing " "of " "his " "grace! "
  "\nWhose " "robe " "is " "the " "light, "
  "\nWhose " can o "py " "space; "
  "\nHis " cha "riots " "of " "wrath "
  "\nThe " "deep " thun der "clouds " "form, "
  "\nAnd " "dark " "is " "His " "path "
  "\nOn " "the " "wings " "of " "the " "storm. "

  \set stanza = "3."
  "\nThe " "earth " "with " "it's " "store "
  "\nOf " won "ders " un "fold, "
  "\nAl" might "y! " "Thy " "power "
  "\nHath " found "ed " "of " "old: "
  "\nHath " 'stab "lish'd " "it " "fast "
  "\nBy " "a " change "less " dec "ree "
  "\nAnd " "round " "it " "hath " "cast, "
  "\nLike " "a " man "tle, " "the " "sea. "

  \set stanza = "4."
  "\nThe " boun ti "ful " "care, "
  "\nWhat " "tongue " "can " re "cite? "
  "\nIt " "breathes " "in " "the " "air, "
  "\nIt " "shines " "in " "the " "light; "
  "\nIt " "streams " "from " "the " "hills, "
  "\nIt " des "cends " "to " "the " "plain, "
  "\nAnd " sweet "ly " dis "tils " "in "
  "\nThe " "dew " "and " "the " "rain. "

  \set stanza = "5."
  "\nFrail " child "ren " "of " "dust, "
  "\nAnd " feeb "le " "as " "frail— "
  "\nIn " "Thee " "do " "we " "trust, "
  "\nNor " "find " "thee " "to " "fail: "
  "\nThy " merc "ies " "how " ten "der, "
  "\nHow " "firm " "to " "the " "end! "
  "\nOr " Mak "er, " Def end "er, "
  "\nRe" deem "er, " "and " "Friend! "

  \set stanza = "6."
  "\nO " meas ure "less " "Might! "
  "\nIn" eff ab "le " "Love! "
  "\nWhile " an "gels " de "light "
  "\nTo " "hymn " "Thee " a "bove, "
  "\nThe " humb "ler " cre a "tion, "
  "\nThough " feeb "le " "their " "lays, "
  "\nWith " "true " a dor a "tion "
  "\nShall " "sing " "to " "Thy " "praise. "
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
          \new Dynamics \dynamicsWomen
          \new Staff <<
            \new Voice \RehearsalTrack
%            \new Voice \TempoTrack
            \new Voice = "soprano" { \voiceOne \soprano }
            \new Voice = "alto"    { \voiceTwo \alto    }
            \new Lyrics \lyricsto "soprano" \wordsOne
            \new Lyrics \lyricsto "soprano" \wordsTwo
            \new Lyrics \lyricsto "soprano" \wordsThree
            \new Lyrics \lyricsto "soprano" \wordsFour
            \new Lyrics \lyricsto "soprano" \wordsFive
            \new Lyrics \lyricsto "soprano" \wordsSix
          >>
                                  % Joint tenor/bass staff
          \new Dynamics \dynamicsMen
          \new Staff <<
            \clef "bass"
            \new Voice = "tenor" { \voiceOne \tenor }
            \new Voice = "bass"  { \voiceTwo \bass  }
          >>
        >>
%        >>
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
          \new Dynamics \dynamicsWomen
          \new Staff <<
            \new Voice \RehearsalTrack
%            \new Voice \TempoTrack
            \new Voice = "soprano" { \voiceOne \soprano  \bar "|." }
            \new Voice = "alto"    { \voiceTwo \alto    }
            \new Lyrics \lyricsto "soprano" { \wordsOne
                                              \wordsTwo
                                              \wordsThree
                                              \wordsFour
                                              \wordsFive
                                              \wordsSix
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Dynamics \dynamicsMen
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
          \new Dynamics \dynamicsWomen
          \new Staff <<
            \new Voice \RehearsalTrack
%            \new Voice \TempoTrack
            \new Voice = "soprano" { \voiceOne \soprano }
            \new Voice = "alto"    { \voiceTwo \alto    }
            \new Lyrics \lyricsto "soprano" \wordsMidi
          >>
                                  % Joint tenor/bass staff
          \new Dynamics \dynamicsMen
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
