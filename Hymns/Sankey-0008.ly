\version "2.20.2"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Grace! 'tis a Charming Sound!"
  subtitle    = "Sankey No. 8"
  subsubtitle = "Sankey 880 No. 81"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Ira D. Sankey"
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = "P. Doddridge & A. M. Toplady"
%  meter       = "meter"
%  piece       = "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key d \major
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
  \repeat volta 5 {
    s4\tempo 4=120
    s2.*5
    s4\tempo 4=40 s4\tempo 4=120 s4
    s2.*7
    s4\tempo 4=40 s4\tempo 4=120 s4
    s2.\tempo 4=50
    s2\tempo 4=120
  }
}

soprano = \relative c'' {
  \global
  \repeat volta 5 {
    a4
    a4. gis8 b a
    fis2 d4
    e4. fis8 g a
    fis2 a4
    a4. a8 g fis
    b8 cis d4\fermata b % B
    a4. d,8 e fis
    d2 r4 \bar "||"
    d'4. d8 e cis
    d2 r4
    b4. d8 cis b % C
    a2 r4
    a4. a8 g fis
    b8 cis d4\fermata b
    a4. d,8 e fis
    d2\fermata
  }
}

dynamicsWomen = {
  \override DynamicTextSpanner.style = #'none
}

alto = \relative c' {
  \global
  \repeat volta 5 {
    d4
    d4. d8 d d
    d2 d4
    cis4. d8 e cis
    d2 d4
    d4. d8 cis d
    d8 g fis4\fermata d % B
    d4. d8 cis cis
    d2 r4
    fis4. fis8 g e
    fis2 r4
    g4. b8 a g % C
    fis2 r4
    d4. d8 cis d
    d8 g fis4\fermata d
    d4. d8 cis cis
    d2\fermata
  }
}

tenor = \relative c {
  \global
  \repeat volta 5 {
    fis4
    fis4. eis8 g fis
    a2 fis4
    a4. a8 a a
    a2 fis4
    fis4. a8 a d
    b8 a a4\fermata g % B
    fis4. fis8 g a
    fis2 r4
    a4. a8 b a
    a2 r4
    d4. d8 d d % C
    d2 r4
    fis,4. a8 a d
    b8 a a4\fermata g
    fis4. fis8 g a
    fis2
  }
}

dynamicsMen = {
  \override DynamicTextSpanner.style = #'none
}

bass= \relative c {
  \global
  \repeat volta 5 {
    d4
    d4. d8 d d
    d2 d4
    a4. a8 a a
    d2 d4
    d4. e8 fis d
    g8 e d4\fermata g, % B
    a4. a8 a a
    d2 r4
    d4. d8 g, a
    d2 r4
    g,4. g8 g g % C
    d'2 r4
    d4. fis8 e d
    g8 e d4\fermata g,
    a4. a8 a a
    d2\fermata
  }
}

chorus = \lyricmode {
  Saved by grace a- lone!
  This is all my plea:
  Je- sus died for all man- kind,
  And Je- sus died for me.
}

wordsOne = \lyricmode {
  \set stanza = "1."
  Grace! 'tis a charm- ing sound,
  Har- mon- ious to the ear;
  Heav'n with the ech- o shall re- sound,
  And all the earth shall hear.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  'Twas grace that wrote my name
  In life's e- ter- nal book;
  'Twas grace that gave me to the Lamb,
  Who all my sor- rows took.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Grace taught my wand'- ring feet
  To tread the Heav'n- ly road!
  And new sup- plies each hour I meet,
  While press- ing on to God.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Grace taught my soul to pray,
  And made my eyes o'er- flow;
  'Tis grace has kept me to this day,
  And will not let me go.
}
  
wordsFive = \lyricmode {
  \set stanza = "5."
  Oh, let Thy grace in- spire
  My soul with strength Div- ine;
  May all my powers to Thee a- spire,
  And all my days be Thine.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1. "
  "Grace! " "'tis " "a " charm "ing " "sound, "
  "\nHar" mon "ious " "to " "the " "ear; "
  "\nHeav'n " "with " "the " ech "o " "shall " re "sound, "
  "\nAnd " "all " "the " "earth " "shall " "hear. "
  "\nSaved " "by " "grace " a "lone! "
  "\nThis " "is " "all " "my " "plea: "
  "\nJe" "sus " "died " "for " "all " man "kind, "
  "\nAnd " Je "sus " "died " "for " "me.\n"

  \set stanza = "2. "
  "\n'Twas " "grace " "that " "wrote " "my " "name "
  "\nIn " "life's " e ter "nal " "book; "
  "\n'Twas " "grace " "that " "gave " "me " "to " "the " "Lamb, "
  "\nWho " "all " "my " sor "rows " "took. "
  "\nSaved " "by " "grace " a "lone! "
  "\nThis " "is " "all " "my " "plea: "
  "\nJe" "sus " "died " "for " "all " man "kind, "
  "\nAnd " Je "sus " "died " "for " "me.\n"

  \set stanza = "3. "
  "\nGrace " "taught " "my " wand' "ring " "feet "
  "\nTo " "tread " "the " Heav'n "ly " "road! "
  "\nAnd " "new " sup "plies " "each " "hour " "I " "meet, "
  "\nWhile " press "ing " "on " "to " "God. "
  "\nSaved " "by " "grace " a "lone! "
  "\nThis " "is " "all " "my " "plea: "
  "\nJe" "sus " "died " "for " "all " man "kind, "
  "\nAnd " Je "sus " "died " "for " "me.\n"

  \set stanza = "4. "
  "\nGrace " "taught " "my " "soul " "to " "pray, "
  "\nAnd " "made " "my " "eyes " o'er "flow; "
  "\n'Tis " "grace " "has " "kept " "me " "to " "this " "day, "
  "\nAnd " "will " "not " "let " "me " "go. "
  "\nSaved " "by " "grace " a "lone! "
  "\nThis " "is " "all " "my " "plea: "
  "\nJe" "sus " "died " "for " "all " man "kind, "
  "\nAnd " Je "sus " "died " "for " "me.\n"

  \set stanza = "5. "
  "\nOh, " "let " "Thy " "grace " in "spire "
  "\nMy " "soul " "with " "strength " Div "ine; "
  "\nMay " "all " "my " "powers " "to " "Thee " a "spire, "
  "\nAnd " "all " "my " "days " "be " "Thine. "
  "\nSaved " "by " "grace " a "lone! "
  "\nThis " "is " "all " "my " "plea: "
  "\nJe" "sus " "died " "for " "all " man "kind, "
  "\nAnd " Je "sus " "died " "for " "me. "
}
  
\book {
  \bookOutputSuffix "repeat"
  \score {
%    \unfoldRepeats \articulate <<
    \context GrandStaff <<
      <<
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Dynamics \dynamicsWomen
          \new Staff <<
            \new Voice \RehearsalTrack
            \new Voice = "soprano" { \voiceOne \soprano }
            \new Voice = "alto"    { \voiceTwo \alto    }
            \new Lyrics \lyricsto "soprano" \wordsOne
            \new Lyrics \lyricsto "soprano" \wordsTwo
            \new Lyrics \lyricsto "soprano" { \wordsThree \chorus }
            \new Lyrics \lyricsto "soprano" \wordsFour
            \new Lyrics \lyricsto "soprano" \wordsFive
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
    <<
    \context GrandStaff <<
      <<
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Dynamics \dynamicsWomen
          \new Staff <<
            \new Voice \RehearsalTrack
            \new Voice = "soprano" { \voiceOne \soprano }
            \new Voice = "alto"    { \voiceTwo \alto    }
            \new Lyrics \lyricsto "soprano" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                              \wordsFour  \chorus
                                              \wordsFive  \chorus
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
    % \articulate
    <<
    \context GrandStaff <<
      <<
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Dynamics \dynamicsWomen
          \new Staff <<
            \new Voice \TempoTrack
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
