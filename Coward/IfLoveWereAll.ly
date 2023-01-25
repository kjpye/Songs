\version "2.25.0"

\include "predefined-guitar-fretboards.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "If Love Were All"
  subtitle    = \markup{from \italic "Bitter Sweet"}
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Noel Coward"
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

global = {
  \key ees \major
  \time 4/4
}

TempoTrack = {
  \global
  \set Score.tempoHideNote = ##t
  \repeat segno 2 {
    \tempo "Assai moderato" 4=120
    s1*7 \tempo 4=110 s1*2 \tempo 4=120
    s1*15
    s4 \tempo "poco rit" 4=115 s2.
    \tempo 4=120 s1*7 \tempo 4=110 s1 \tempo 4=120
    \repeat volta 2 {
      s1*29
      \tempo 4=110 s1 \tempo 4=120
      \alternative {
        {s1*2}
        s4 \tempo 4=110 s2. | s1 |{}
      }
    }
  }
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
  \repeat segno 2 {
    \textMark \markup { \box "60a" } s1*4
    \textMark \markup { \box "60b" } s1*5
    \textMark \markup { \box "60c" } s1*4
    \textMark \markup { \box "60d" } s1*4
    \textMark \markup { \box "61a" } s1*4
    \textMark \markup { \box "61b" } s1*4
    \textMark \markup { \box "61c" } s1*4
    \textMark \markup { \box "61d" } s1*4
    \repeat volta 2 {
      \textMark \markup { \box "62a" } s1*4
      \textMark \markup { \box "62b" } s1*5
      \textMark \markup { \box "62c" } s1*4
      \textMark \markup { \box "62d" } s1*4
      \textMark \markup { \box "63a" } s1*4
      \textMark \markup { \box "63b" } s1*5
      \textMark \markup { \box "63c" } s1*4
      \alternative {
        { s1 \textMark \markup { \box "63d" } s1 }
        { s1*2 }
      }
    }
  }
}

melody = \relative {
  \global
  \repeat segno 2 {
    R1*9 \section
    r4 d''8. ees16 d8. ees16 d8. c16 | bes4 aes2 ces8. aes16 | g4 fis2 bes4 | f1 |
    r8. ees16 f8. ees16 f8. ees16 f8. ees16 | c'4 bes r d | c bes r d | g,1 |
    g8 aes bes4 2 | g8 f ees4 2 | g8 aes bes4 4 g | c2. r4 | % 61a
    aes8 bes c4 d bes | f'2~8 ees c g | d'2~8 c aes c, | bes'2 f |
    r4 d'8. ees16 d8. ees16 d8. c16 | bes4 aes r ces8. aes16 | g4 fis2 bes4 | ees1~ |
    ees8. ees,16 f8. ees16 f8. ees16 f8. ees16 | c'1~ | 8. f,16 g8. f16 g8. f16 g8. f16 | bes2~4 r \section \break
    \repeat volta 2 {
      bes4 g f4. aes8 | g8 8 8 ees aes4. d,8 | bes'8 8 8 ees, c'4. f,8 | bes8 8 8 8 g2 | % 63a
      ees'2 aes,~ | 4 4 bes c | g2~8 bes, c ees | c'2 bes | 4 g f4. aes8 |
      g8 8 8 ees aes4. d,8 | bes'8 8 8 ees, c'4. f,8 | bes8 8 8 8 g2 | ees' aes,~ |
      aes4 4 bes c | d2~8 fis, g bes | des2 2 | c4 d8. ees16 f8. ees16 des8. c16 |
      bes8. g16 bes2. | c4 d8. ees16 f8. ees16 d8. c16 | bes2. r4 | f4 aes8. bes16 c8. bes16 aes8. g16 | % 93a
      g8. ees16 g2. | ees'4 c8 ees g,4 ges | f2. <<{bes,4} \new Voice {\tiny \parenthesize bes'}>> | bes4 g f4. aes8 | g8 8 8 ees aes4. d,8 |
      bes'8 8 8 ees, c'4. f,8 | bes8 8 8 8 <<{g2} \new Voice {\tiny \parenthesize g'2}>> | ees2 c~ | 4 4 d bes
      \alternative {
        {ees1 | R |}
        {ees1~ | <<{\voiceTwo 2~4 r} \new Voice {\voiceOne \tiny g2~4 r}>> }
      }
    }
  }
  \bar "|."
}

dynamicsMelody = {
  \override DynamicTextSpanner.style = #'none
  s1*9
  s4 s2.\p | s1 | s | s |
  \repeat segno 2 {
    \repeat volta 2 {
      \alternative {
        {}
        {}
      }
    }
  }
}

chorus = \lyricmode {
  \repeat volta 2 {
    I be -- lieve in do -- ing what I can,
    In cry -- ing when I must,
    in laugh -- ing when I choose.
    Heigh -- o, __
    If love were all __ I should be lone -- ly.
    I be -- lieve the more you love a man,
    The more you give your trust,
    The more you're bound to lose:
    Al -- though __ when sha -- dows fall __
    I think of on -- ly
    Some -- bo -- dy splen -- did real -- ly need -- ed me,
    Some -- one af -- fec -- tion -- ate and dear,
    Cares would be end -- ed if I knew that he
    Want -- ed to have me near.
    But I be -- lieve that since ny life be -- gan
    The nost I've had is just a tal -- ent to a -- muse.
    Heigh -- o, __
    If love were
    \alternative {
      { all. }
      { all. __ }
    }
  }
}

wordsOne = \lyricmode {
  Life is ve -- ry tough and tum -- ble
  For a hum -- ble di -- scuse;
  One can be -- tray one's trou -- bles nev -- er,
  What -- ev -- er oc -- curs.
  Night af -- ter night have to look bright
  Whe -- ther you're well or ill;
  peo -- ple must laugh their fill __
  You must -- n't sleep __ till dawn comes creep -- ing.
  Tho' I nev -- er real -- ly grum -- ble,
  Life's a jum -- ble in -- deed __
  And in my ef -- forts to suc -- ceed __
  I've had to furm -- u -- late a creed. __
}

wordsTwo = \lyricmode {
  Tho' life buf -- fets me ob -- scene -- ly
  It se -- rene -- ly goes on;
  Al -- tho' I ques -- tion its con -- clu -- sion,
  Il -- lu -- sion is gone.
  Fre -- quent -- ly I put a bit by
  Safe for a rain -- y day.
  Bo -- bo -- dy here can say __
  To what in -- deed __
  the years are lead -- ing.
  Fate may of -- ten treat me mean -- ly,
  But I keen -- ly pur -- sue, __
  A lit -- tle mi -- rage in the blue. __
  De -- ter -- min -- a -- tion helps me through.
}

chorusMidi = \lyricmode {
  \repeat volta 2 {
    I be -- lieve in do -- ing what I can,
    In cry -- ing when I must,
    in laugh -- ing when I choose.
    Heigh -- o, __
    If love were all __ I should be lone -- ly.
    I be -- lieve the more you love a man,
    The more you give your trust,
    The more you're bound to lose:
    Al -- though __ when sha -- dows fall __
    I think of on -- ly
    Some -- bo -- dy splen -- did real -- ly need -- ed me,
    Some -- one af -- fec -- tion -- ate and dear,
    Cares would be end -- ed if I knew that he
    Want -- ed to have me near.
    But I be -- lieve that since ny life be -- gan
    The nost I've had is just a tal -- ent to a -- muse.
    Heigh -- o, __
    If love were
    \alternative {
      { all. }
      { all. __ }
    }
  }
}

midiWords = \lyricmode {
  \wordsOne
  \chorusMidi
  \wordsTwo
  \chorusMidi
}

pianoRHone = \relative {
  \global \voiceOne 
  \repeat segno 2 {
    r4 bes bes'2\fermata~ | 4 c(f c | bes c f, g) | <d g bes>(c'8 d g4 bes |
    <bes d>1) | d4(c8 bes) 4-- g-- | <d ees a>1 | \appoggiatura c8 <aes' c>4(<g bes>8 <f aes> <ees g> <d f> <c ees>4 | <ees, aes c>2 <d bes'>) \section |
    r4 d'8.(ees16 d8. ees16 d8. ees16 | bes4 aes2) ces8.(aes16 | g4 fis2 bes4 | f1) |
    r8. ees16(f8. ees16 f8. ees16 f8. ees16 | c'4 bes2) d4( | c bes r d | <g,, g'>1) |
    g'8-> aes bes4 2 | <ees, g>8-> f ees4 2 | g8-> aes bes4 4 g | <c, c'>1 | % 61a
    aes'8(bes c4 d bes | f'2)~8 ees(c g | d'2)~8 c(aes c, | bes'2 f) |
    r4 d'8.(ees16 d8. ees16 d8. c16 | bes4 aes2) ces8.(aes16 | g4 fis2 bes4 | ees1)~ |
    ees8. ees,16(f8.) ees16 f8. ees16(f8.) ees16( | c'1)~ | 8. f,16(g8.) f16(g8.) f16(g8.) f16( | <bes, bes'>1) \section \break
    \repeat volta 2 {
      bes'4(g f4.) aes8( | g8-. 8-. 8-. ees-. aes4.) d,8( | bes'8-. 8-. 8-. ees,-. c'4.) f,8( | bes8-. 8-. 8-. 8-. <bes, g'>2->) | % 63a
      ees'2(aes,~) | 4 4(bes c | g2)~8 bes,(c ees | c'2 <g, bes'>) | bes'4(g f4.) aes8( |
      g8-. 8-. 8-. ees-. aes4.) d,8( | bes'8-. 8-. 8-. ees, c'4.) f,8 | bes8-.(8-. 8-. 8-. <bes, g'>2->) | ees'(aes,~) |
      aes4 4(bes c | d2)~8 fis,(g bes | des2-- 2--) | <aes c>4(d8. ees16 f8. ees16 des8. c16 |
      <g bes>8. <ees g>16 <g bes>2.) | <aes c>4(<bes d>8. <c ees>16 <d f>8. <c ees>16 <bes d>8. <aes c>16 | <g bes>2) r4 <bes, f' g>-- | f4(aes8. bes16 c8. bes16 aes8. g16 | % 93a
      <ees g>8. <c ees>16 <ees g>2.) | ees'4(c8 ees g,4 ges | f2.) bes'4-- | bes4(g f4.) aes8( | g8-. 8-. 8-. ees-. aes4.) d,8( |
      bes'8-. 8-. 8-. ees,-. c'4.) f,8 | bes8-.(8-. 8-. 8-. <bes, g'>2->) | ees'2-> c->( | ees4) c4-- d4-- bes--
      \alternative {
        {<ees, g ees'>2~4. g8~ | 8 ges( f c'~8 ces bes4) |}
        {<ees, g ees'>1 | <ees' g ees'>2\arpeggio ~4 r | }
      }
    }
  }
}

pianoRHtwo = \relative {
  \global
  \voiceTwo
  \repeat segno 2 {
    s1 | <ees' g>2 <aes c>4 <ees g> | f2(c4 d) | s1 |
    \arpeggioBracket <d' e g>\arpeggio | e2. cis4 | a1 | s1 | s2 g4(f) |
    s4 <ees bes'> q <ees a> | r4 <bes d>2 4 | r4 <aes d>2. | <g c>1 |
    r4 <g bes> bes(a) | r <d aes'>2 <d aes' bes>4 | r <d aes'>2 <d fis bes>4 | r4 <bes ees>2 4 |
    ees1 | s | <des ees> | g2.(f4) | % 61a
    ees2 <d aes'> | <f g c>2~8 s4. | <ees aes>2~8 s4. | c4(cis d bes) |
    r4 <ees bes'> q <ees a> | r4 <ces ees>2 4 | r <aes d>2. | <g' des'>1~ |
    q8. s16 s4 <g, des'>4 <g b> | <ees' g>2 <ees f>~ | 4 <a, ees'> q q | r4 <d f>4 <d fis>2 |
    \repeat volta 2 {
      \alternative {
        {}
        {}
      }
    }
  }
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  \repeat segno 2 {
    s4 s2.\p | s1-\markup "poco espressivo" | s | s\< |
    s1\mf | s | s2.\> s4\< | s1\!-\markup\italic "poco rall." | s2\< s\> |
    s4.\!\omit\p-\markup{\dynamic p \italic "a tempo"} s8\< s2 | s4 s2.\> | s1\! | s |
    s2 s\< | s1\! | s4 s2.\< | s1\! |
    s1 | s | s | s\< | % 61a?
    s4\mp s2.\< | s1\mf | s | s4\< s\!-\markup\italic "poco rit." s2\> |
    s4.\omit\p-\markup{\dynamic p \italic "a tempo"} s8\< s2 | s4\! s2.\> | s4\! s2.\< | s1\mf\< |
    s2\! s\> | s1\< | s\! | s1-\markup\italic "poco rit." |
    \repeat volta 2 {
      s1 -\markup {\dynamic p - \dynamic mf \italic "a tempo"} | s1 | s2\< s\> | s4.\< s8 s2\> | % 62a
      s1\! | s | s | s2\< s\> | s1\p |
      s1 | s8 s2\< s4.\> | s4.\< s8\! s2\> | s1\! |
      s1 | s4 s2.\< | s4\! s2.\> | s1\mp\< |
      s2.\> s4\! | s1 | s | s2.\< s4\! | % 63a
      s2.\> s4\! | s1 | s | s\p | s |
      s8 s2\< s4.\> | s2\< s\> | s1\mf | s1-\markup\italic "poco rit." 
      \alternative {
        {s2\< -\markup\italic "a tempo" s\> | s2\< s4...\> s32\! |}
        {s4 s2.\<-\markup\italic "poco rall." | s1\! |}
      }
    }
  }
}

pianoLHone = \relative {
  \global
  \repeat segno 2 {
    R1\fermata | bes | <des, aes'>2(<bes aes'>) | <g d' bes'>1\arpeggio |
    c4 g' e' g \clef treble | bes1 \clef bass | f,,4(c' g'8 gis b4) | f,(c' f aes) | \voiceOne f2(bes4 aes) \oneVoice \section |
    g,4 <ees' bes'> <g, g'> <ges ges'> | f2(f') | bes,2(c4 bes) | ees,8.( bes'16 c8. d16 f8. ees16 c8. d16) |
    bes2(g4 ges | f2) bes4(bes,) | f'2 bes4(aes') | ees,(ees' d des) |
    g1-> | g-> | ees | aes,4( ees' bes' aes) | % 61a
    <f c'>2(<bes, aes'>) | c4(g' ees') r | f,,(c' aes') r | f2(aes) |
    g,4 <ees' bes'> <g, g'> <ges ges'> | f2(f') | bes,2(c4 bes) | ees,8.( bes'16 ees8. f16 g4 c |
    bes2 ees,) | f,8.(c'16 f8. g16 a4 d | c) r f,, r | bes, bes'(aes' bes,) \section |
    \repeat volta 2 {
      ees,4(bes' aes bes) | ees,(bes' f' bes,) | ees,( g' f <bes, aes'>) | ees,(g' c,2) | % 62a
      \voiceOne r4 f2 4 \oneVoice | f,(f') bes,(bes') | <ees,, bes'>2 g4(ees') | f,(f') <bes, aes'>2 | ees,4( bes' aes bes) |
      \voiceOne ees,4( bes' f' bes,) \oneVoice | ees,(g' f <bes, aes'>) | es,(g' c,2) | \voiceOne r4 f2 4 \oneVoice |
      f,4( f') bes,(aes') | g,(d' bes'2) | ees,4 r ees, r | a <ees' aes c> bes <aes' bes d> |
      \voiceOne r4 ees'(d des) \oneVoice | aes, <ees' aes c> bes <aes' bes d> | ees, <g' bes ees> g,(d'--) | c, <e' bes' c>2 q4 | % 63a
      f,4(c' a' c,) | f4 r s2 | \voiceOne r4 aes2. \oneVoice | ees,4(bes' aes bes) | ees,( bes' f' bes,) |
      ees,4(g' f <bes, aes'>) | ees,(g' c,2) | f,8(c' f g aes4 f) | f, <f' c'>-- \voiceOne bes-- aes-- \oneVoice |
      \alternative {
        {ees,8(bes' g' c)~c ces-- bes-- a~ | 4. <bes, aes'>8~2}
        {ees,8(bes' g' c~c ces bes4) | <ees, bes' g'>2\arpeggio ~ 4 r}
      }
    }
  }
}

pianoLHtwo = \relative {
  \global \voiceTwo
  \repeat segno 2 {
    s1*4
    s1 | c'2.(e4) | s1 | s | bes, |
    s1*8 |
    c2. 4 | ces2. 4 | bes2. 4 | s1 | % 61a
    s1 | s | s | bes |
    s1 | s | s | s |
    s1 | s | s | s |
    \repeat volta 2 {
      s1*4 | % 62a
      f1 | s | s | s | s |
      s1 | s | s | f1 |
      s1 | s | s | s |
      ees'1 | s | s | s | % 63a
      s1 | s2 \voiceOne c4_(ces | \voiceTwo bes2.) 4 | s1 | s |
      s1 | s | s | s2 bes |
      \alternative {
        {s1 | s |}
        {s1 | s |}
      }
    }
  }
  \bar "|."
}

\book {
  #(define output-suffix "repeat")
  \score {
    <<
      <<
        \new ChoirStaff
        <<
          \new Dynamics \TempoTrack
          \new Dynamics \dynamicsMelody
          \new Staff \with { \consists "Volta_engraver" }
          <<
            \new Voice \RehearsalTrack
            \new Voice = "melody" \melody
            \new Lyrics \lyricsto "melody" {\wordsOne \chorus}
            \new Lyrics \lyricsto "melody" \wordsTwo
          >>
        >>
        \new PianoStaff
        <<
          \new Staff
          <<
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff
          <<
            \clef "bass"
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
          >>
        >>
      >>
    >>
    \layout {
      #(layout-set-staff-size 19)
      indent = 1.5\cm
      \context {
        \Score
        \remove "Volta_engraver"
        }
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}

\book {
  #(define output-suffix "single")
%  \paper {
%    top-margin = 0
%    left-margin = 7
%    right-margin = 1
%    paper-width = 190\mm
%    page-breaking = #ly:one-page-breaking
%    system-system-spacing.basic-distance = #15
%    system-separator-markup = \slashSeparator
%  }
  \score {
    \unfoldRepeats
    <<
      <<
        \new ChoirStaff
        <<
          \new Dynamics \TempoTrack
          \new Dynamics \dynamicsMelody
          \new Staff
          <<
            \new Voice \RehearsalTrack
            \new Voice = "melody" \melody
            \new Lyrics \lyricsto "melody" { \wordsOne \chorus \wordsTwo \chorus }
          >>
        >>
        \new PianoStaff
        <<
          \new Staff
          <<
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff
          <<
            \clef "bass"
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
          >>
        >>
      >>
    >>
    \layout {
      #(layout-set-staff-size 20)
      indent = 1.5\cm
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}

\book {
  #(define output-suffix "midi")
  \score {
    \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChoirStaff
        <<
          \new Dynamics \TempoTrack
          \new Dynamics \dynamicsMelody
          \new Staff
          <<
            \new Voice = "melody" \melody
            \new Lyrics \lyricsto "melody" { \midiWords }
          >>
        >>
        \new PianoStaff
        <<
          \new Staff
          <<
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff
          <<
            \clef "bass"
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
          >>
        >>
      >>
    >>
    \midi {}
  }
}
