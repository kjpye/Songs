\version "2.25.13"

\include "kjp.ly"
\include "predefined-guitar-fretboards.ly"
\include "swing.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "I've Got My Love to Keep Me Warm"
%  subtitle    = "subtitle"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Irving Berlin"
  arranger    = "Arr. Kirby Shaw"
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
  \partial 4.
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo \markup {
    \concat {
      \bold "In a bright four ("
      \smaller \general-align #Y #DOWN \note {4} #1
      " = 138) {"
      \rhythm { 8[8] }
      " = "
      \rhythm { \tuplet 3/2 {4[8]} }
      ")"
    }
  } 4=138
  s1
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
  \mark \markup { \box "2a" } s4. s1*3
  \mark \markup { \box "2b" } s1
  \repeat volta 2 {
    s1*2
    \mark \markup { \box "3a" } s1*3
    \mark \markup { \box "3b" } s1*3
    \mark \markup { \box "3c" } s1*4
    \mark \markup { \box "4a" } s1*3
    \alternative {
      {
        s1
      }
      {
        \mark \markup { \box "4b" } s1
      }
    }
  }
  \repeat segno 2 {
    s1*2
    \mark \markup { \box "4c" } s1*4
    \mark \markup { \box "5a" } s1*4
    \mark \markup { \box "5b" } s1*4
    \mark \markup { \box "5c" } s1*3
    \mark \markup { \box "6a" } s1*3
    \alternative {
      \volta 1 {
        \mark \markup { \box "6b" } s1*3
        \mark \markup { \box "6c" } s1*3
      }
      \volta 2 {
        \mark \markup { \box "7a" } s1*3
        \mark \markup { \box "7b" } s1*4
        \mark \markup { \box "7c" } s1*3
      }        
    }
  }
}

ChordTrack = \chordmode {
  s4.
  ees2:maj9 c:m7 | f:m9 bes:9 | ees:maj9 c:m7
  f2:m7 bes:7
  \repeat volta 2 {
    ees2:maj9 ees:6 | e4:m7.5- e:dim c:7.9- c:7
    f2:m9 f:m7 | fis4:m7.5- fis:dim d:7.9- d:7 | ees2:maj9 ees:6 % 3a
    d2:7.9- d4:7 d:7.9- | s1 | s2 d:7
    f2:m7sus bes:6 | f4:7 f:m7sus bes2:6 | f2:m7sus bes:6 | f:m7sus bes:6
    g2:m7 c:7.9- | f:m7 bes:9 | ees:maj9 c:m7 % 4a
    \alternative {
      {
        f2:m7 bes:13
      }
      {
        a2:m7.5- bes:7
      }
    }
  }
  \repeat segno 2 {
    g1:m | a2:m7sus d:7
    g1:m | c:9 | f:m | g2:m7 c:9
    f1:m | aes2:2/bes bes:13 | ees2:maj9 ees:6 e4:m7.5- e:dim c:7.9- c:7 % 5a
    f2:m9 f:m7 | fis4:m7.5- fis:dim d:7.9- d:7 | ees2:maj9 ees:6 | d:7.9- d4:7 d:7.9-
    s1 | s2 d:7 | f:m7sus bes:6
    f4:7 f:m7sus bes2:6 | f:m7sus bes:6 | f:m7sus bes:6 % 6a
     \alternative {
       {
         g2:m7 c:7.9- | f:m7 bes:9 | ees:maj9 c:m7
         f2:m9 bes:9 | ees:maj9 c:m7 | a:m7.5- d:7
      }
       {
         g2:m7 c:7.9- | f:m7 bes:13 | g2.:m7sus des4:6 % 7a
         bes2/c c:7.9- | f1:m7 | bes:13 | ees2:maj7 c:m7
         f2:m7 aes4:maj7/bes bes:9 | ees2:maj7 c:m6 | f4:m7 bes:7 ees2
      }
    }
  }
}

soprano = \relative {
  \global
  r8 r4
  f'2^\mf^\markup Unis. es
  g2 f4 r
  f2 ees
  f8 g aes a bes4-. bes,
  \repeat volta 2 {
    ees2 2 | d8 des4. r4 c
    f2 2 | e8 ees4. r4 d | g2 2 % 3a
    fis4 a c ees~ | ees1~ | ees4 r d8 ees c4
    bes2.^\markup Unis. 4 | a4 bes g4. f8~ | f1 | R1
    r8 bes4. 4 b | c4. aes8 f d4^\markup Unis. ees8~ | ees1
    \alternative {
      \volta 1 { r2 r4 bes }
      \volta 2 { R1        } % 4b
    }
  }
  \repeat segno 2 {
    r4 d^\markup Unis. ^\markup "(Duet second time)" g g | g8 4 fis8~2
    r4 d^\markup\italic mel. 8 dis4 e8~ | e2 r | r4 c' c, c | d8 4 e8~2
    r4 f f8 g f bes~ | bes2^\markup "(end duet)" r4 bes,4^\markup "All (both times)" | ees2 2 | d8 des4. r4 c % 5a
    f2 2 | e8 ees4. r4 d | g2 2 | fis4 a c ees~
    ees1~ | ees4 r d8 ees c4 | bes2.^\markup Unis. bes4
    a4 bes g4. f8~ | f1 | R1 % 6a
    \alternative {
      \volta 1 {
        r8 bes4. 4 b | c4. a8 f d4^\markup Unis. ees8~ | ees1
        R1 | f2 ees | ees2 d
      }
      \volta 2 {
        r8 bes'4. 4 b | c4. aes8 f d4. | r8 c'4. 4 cis % 7a
        d4. bes8 aes g4. | r8 c,4. ees4 f8 g~ | % 7b
        <<{g4\glissando \hideNotes d8 \unHideNotes} \new Voice {s4 b'8\rest}>> bes,^\markup Unis. g'4-. 8 ees~ | ees1 ~
        ees2. r4_\markup\bold\italic STOP | \bar "|." g4-. g-- bes-. bes-- | \tuplet 3/2 {f8 g aes} \tuplet 3/2 {bes c d} ees4-. | % 7c
r
      }
    }
  }
  \bar "|."
}

wordsOne = \lyricmode {
  Doo doo doo doo,
  doo doo doo doo doo doo doot.
  \set stanza = "1."
  The snow is snow -- ing,
  the wind is blow -- ing,
  but I will weath -- er the storm. __
  What do I care how much it may storm? __
  I've got my love to keep me warm. __
  \set stanza = "2."
  I

  Off with my o -- ver -- coat. __
  off with my glove. __
  I need no o -- ver -- coat, __
  I'm burn -- ing with love. __
  My heart's on fi -- re,
  the flame grows high -- er.
  So I will weath -- er the storm. __

  What do I care how much it may storm? __
  I've got my love to keep me warm. __
  Doo doo doo doo.

  I've got my love to keep me,
  I've got my love to keep me,
  I've got my love __ _ to keep me warm. __
  Doot doo doot doo
  doo -- dle -- oo doo -- dle -- oo doot!
}

wordsTwo = \lyricmode {
  _ _ _ _ _ _ _ _ _ _ _
  \set stanza = "2."
  "(I)" can't re -- mem -- ber a worse De -- cem -- ber;
  just watch those i -- ci -- cles form. __
  What do I care how i -- ci -- cles form? __
}

wordsSingle = \lyricmode {
  Doo doo doo doo,
  doo doo doo doo doo doo doot.
  \set stanza = "1."
  The snow is snow -- ing,
  the wind is blow -- ing,
  but I will weath -- er the storm. __
  What do I care how much it may storm? __
  I've got my love to keep me warm. __

  \set stanza = "2."
  I can't re -- mem -- ber a worse De -- cem -- ber;
  just watch those i -- ci -- cles form. __
  What do I care how i -- ci -- cles form? __
  I've got my love to keep me warm. __

  Off with my o -- ver -- coat. __
  off with my glove. __
  I need no o -- ver -- coat, __
  I'm burn -- ing with love. __
  My heart's on fi -- re,
  the flame grows high -- er.
  So I will weath -- er the storm. __
  What do I care how much it may storm? __

  I've got my love to keep me warm. __
  Doo doo doo doo.

  Off with my o -- ver -- coat. __
  off with my glove. __
  I need no o -- ver -- coat, __
  I'm burn -- ing with love. __
  My heart's on fi -- re,
  the flame grows high -- er.
  So I will weath -- er the storm. __
  What do I care how much it may storm? __

  I've got my love to keep me,
  I've got my love to keep me,
  I've got my love __ _ to keep me warm. __
  Doot doo doot doo
  doo -- dle -- oo doo -- dle -- oo doot!
}

wordsMidi = \lyricmode {
  "Doo " "doo " "doo " "doo, "
  "\ndoo " "doo " "doo " "doo " "doo " "doo " "doot. "
  \set stanza = "1."
  "\nThe " "snow " "is " snow "ing, "
  "\nthe " "wind " "is " blow "ing, "
  "\nbut " "I " "will " weath "er " "the " "storm. " 
  "\nWhat " "do " "I " "care " "how " "much " "it " "may " "storm? " 
  "\nI've " "got " "my " "love " "to " "keep " "me " "warm.\n" 

  \set stanza = "2."
  "\nI " "can't " re mem "ber " "a " "worse " De cem "ber; "
  "\njust " "watch " "those " i ci "cles " "form. " 
  "\nWhat " "do " "I " "care " "how " i ci "cles " "form? " 
  "\nI've " "got " "my " "love " "to " "keep " "me " "warm.\n" 

  "\nOff " "with " "my " o ver "coat. " 
  "\noff " "with " "my " "glove. " 
  "\nI " "need " "no " o ver "coat, " 
  "\nI'm " burn "ing " "with " "love. " 
  "\nMy " "heart's " "on " fi "re, "
  "\nthe " "flame " "grows " high "er. "
  "\nSo " "I " "will " weath "er " "the " "storm. " 
  "\nWhat " "do " "I " "care " "how " "much " "it " "may " "storm? " 

  "\nI've " "got " "my " "love " "to " "keep " "me " "warm. " 
  "\nDoo " "doo " "doo " "doo. "

  "\nOff " "with " "my " o ver "coat. " 
  "\noff " "with " "my " "glove. " 
  "\nI " "need " "no " o ver "coat, " 
  "\nI'm " burn "ing " "with " "love. " 
  "\nMy " "heart's " "on " fi "re, "
  "\nthe " "flame " "grows " high "er. "
  "\nSo " "I " "will " weath "er " "the " "storm. " 
  "\nWhat " "do " "I " "care " "how " "much " "it " "may " "storm? " 

  "\nI've " "got " "my " "love " "to " "keep " "me, "
  "\nI've " "got " "my " "love " "to " "keep " "me, "
  "\nI've " "got " "my " "love "  "to " "keep " "me " "warm. " 
  "\nDoot " "doo " "doot " "doo "
  "\ndoo" dle "oo " doo dle "oo " "doot! "
}

alto = \relative {
  \global
  r8 r4
  f'2^\mf ees
  g2 f4 r
  f2 ees
  f8 g aes a bes4-. bes,
  \repeat volta 2 {
    ees2 2 | d8 des4. r4 c
    f2 2 | e8 ees4. r4 d | g2 2 % 3a
    fis4 a a fis~ | fis1~ | fis4 r fis8 8 a4
    bes2. 4 | a4 bes g4. f8~ | f1 | R1
    r8 d4. des4 4 | c4. 8 d8 4 ees8~ | ees1 % 4a
    \alternative {
      \volta 1 { r2 r4 bes }
      \volta 2 { R1        } % 4b
    }
  }
  \repeat segno 2 {
    r4 d g g | g8 4 fis8~2
    r4 d4 8 dis4 e8~ | e2 r | r4 c' c, c | d8 4 e8~2
    r4 f f8 g f bes~ | bes2 r4 bes, | ees2 2 | d8 des4. r4 c % 5a
    ees2 2 | e8 ees4. r4 d | g2 2 | fis4 a a f~
    f1 ~ | f4 r fis8 8 a4 | bes2. 4
    a4 bes g4. f8~ | f1 | R1 % 6a
    \alternative {
      \volta 1 {
        r8 d4. des4 4 | c4. 8 d8 4 ees8~ | ees1
        R1 | f2 ees | ees2 d
      }
      \volta 2 {
        r8 d4. des4 4 | c4. 8 d8 4. | r8 f4. 4 4 % 7a
        f4. 8 e8 4. | r8 c4. c4 ees8 d~ | % 7b
        <<{d4\glissando \hideNotes a8 \unHideNotes} \new Voice {s4 b'8\rest}>> bes, g'4-. 8 ees~ | ees1~
        ees2. r4 | g4-. 4-- bes4-. 4-- | \tuplet 3/2 {f8 g aes} \tuplet 3/2 {bes a aes} g4-. r
      }
    }
  }
  \bar "|."
}

tenor = \relative {
  \global
  r8 r4 f2^\mf^\markup Unis. ees
  g2 f4 r
  f2 ees
  f8 g aes a bes4-. bes,
  \repeat volta 2 {
    ees2 2 | d8 des4. r4 c
    f2 2 | e8 ees4. r4 d | g2 2 % 3a
    fis4 a c c~ | c1~ | c4 r d8 c ees4
    bes2.^\markup Unis. 4 | a4 bes g4. f8~ | f1 | R1
    r8 bes4. 4 g | aes4. 8 c aes4 g8~ | g1
    \alternative {
      \volta 1 { r2 r4 bes, }
      \volta 2 { R1         } % 4b
    }
  }
  \repeat segno 2 {
    r4 d^\markup\italic mel. ^\markup Unis. g bes | d8 4 8~2
    r4 d bes8 4 8~ | bes2 r | r4 c c c | bes8 4 8~2
    r4 aes aes8 g aes bes8~ | bes2 r4 bes, | ees2 2 | d8 des4. r4 c % 5a
    f2 2 | e8 ees4. r4 d | g2 2 | fis4 a4 c4 4~
    c1~ | c4 r d8 c ees4 | bes2.^\markup Unis. 4
    a4 bes g4. f8~ | f1 | R1 % 6a
    \alternative {
      \volta 1 {
        r8 bes4. 4 g | aes4. 8 c aes4^\markup Unis. g8~ | g1
        R1 | f2 ees | g fis
      }
      \volta 2 {
        r8 bes4. 4 g | aes4. 8 c aes4. | r8 d4. 4 4 % 7a
        d4. 8 8 4. | r8 aes4. 4 c8 8~ | % 7b
        <<{c4\glissando \hideNotes f,8 \unHideNotes} \new Voice {s4 \ov d8\rest}>> g^\markup Unis. bes4-. 8 g(~ | g1
        aes2.) r4^\markup\bold\italic STOP | g4-. g-- bes-. bes-- | \tuplet 3/2 {f8 g aes} \tuplet 3/2 {bes c d} ees4 r | % 7c
      }
    }
  }
  \bar "|."
}

bass = \relative {
  \global
  r8 r4 f2^\mf^\markup Unis. ees
  g2 f4 r
  f2 ees
  f8 g aes a bes4-. bes, % 2b
  \repeat volta 2 {
    ees2 2 | d8 des4. r4 c
    f2 2 | e8 ees4. r4 d | g2 2 % 3a
    fis4 a a a~ | a1~ | a4 r a8 a c4
    bes2.^\markup Unis. 4 | a4 bes g4. f8~ | f1 | R1
    r8 f4. e4 e | ees4. 8 aes8 4^\markup Unis. g8~ | g1 % 4a
    \alternative {
      \volta 1 { r2 r4 bes, }
      \volta 2 { R1         }
    }
  }
  \repeat segno 2 {
    r4 d^\markup\italic mel ^\markup Unis. g bes | d8 4 8~2
    r4 d bes8 4 8~ | bes2 r | r4 c4 4 4 | bes8 4 8~2
    r4 aes4 8 g aes bes~ | bes2 r4 bes, | ees2 2 | d8 des4. r4 c % 5a
    f2 2 | e8 ees4. r4 d | g2 2 | fis4 a a a~
    a1~ | a4 r a8 a c4 | bes2.^\markup Unis. 4
    a4 bes g4. f8~ | f1 | R1 % 6a
    \alternative {
      \volta 1 {
        r8 f4. e4 4 | ees4. 8 aes8 4 g8~ | g1
        R1 | f2 ees | g2 fis
      }
      \volta 2 {
        r8 f4. e4 4 | ees4. 8 aes8 4. | r8 bes4. 4 4 | % 7a
        bes4. 8 8 4. | r8 aes4. 4 8 8~ | % 7b
        <<{aes4\glissando \hideNotes d,8 \unHideNotes} \new Voice {s4 d8\rest}>> g bes4-. 8 g(~ | g1
        aes2.) r4 | g4-. 4-- bes4-. 4-- | \tuplet 3/2 {f8 g aes} \tuplet 3/2 {bes a aes} g4-. r
      }
    }
  }
  \bar "|."
}

pianoRH = \relative {
  \global
  r8 r4
  <g bes d f>4-. q-- <g bes c ees>-. q--
  <aes c ees g>4-. q-- <aes c d f>-. q--
  <g bes d f>4-. q-- <g bes c ees>-. q--
  f'8 g aes a bes4-. r
  \repeat volta 2 {
    <g, bes d f>4-. q-- <g bes c ees>-. q--
    <g d'>4-. <g des'>-- <e bes' des>-. <e bes' c>--
    <aes c ees g>4-. q-- <aes c d f>-. q-- % 3a
    <a e'>4-. <a ees'>-- <fis c' ees>-. <fis c' d>--
    <g bes d f>4-. q-- <g bes c ees>-. q--
    <fis c' ees>4-. q-- <fis c' d>-. <fis c' ees>-- % 3b
    fis'8 g aes a~8 bes b c~
    \tuplet 3/2 {c8 cis d} ees4-. <fis, c' d>8 ees' <fis, c'>4-.
    <ees aes bes>4-. q-- <d g bes>-. q-- % 3c
    a'4-- <ees aes bes>-- <d g bes>-. q--
    <ees aes bes>4-. q-- <d g bes>-. q--
    <ees aes bes>4-. q-- <d g bes>-. q--
    r8 <bes d f>4. <bes des e>4-. q-. % 4a
    <aes c ees>2 <aes c d>
    <g bes d f>4-. q-- <g bes c ees>-. q--
    \alternative {
      { f'8 g aes a bes4-. bes, }
      { ees8 f ees <fis, c' d>~8 bes c <g bes d>~ \bar "||" } % 4b
    }
  }
  \repeat segno 2 {
    q2 g'8 a bes4
    <g c d>4. <fis c' d>8~8 c' a4-.
    bes2 g8 a bes <e, g bes d>~ % 4c
    q2 d'8 c bes4-.
    <f aes c>2~8 a f4-.
    <d f bes>4. <bes d e g>8~2
    r4 <aes c f> f'8 g f <c ees aes bes>8~ % 5a
    q4. <aes ces d g>8~4 bes
    <g bes d f>4-. q-- <g bes c ees>-. q--
    <g d'>4-. <g des'>-. <e bes' des>-. <e bes' c>--
    <aes c ees g>4-. q-- <aes c ees f>-. q-- % 5b
    <a e'>4-. <a ees'>-- <fis c' ees>-. <fis c' d>--
    <g bes d f>4-. q-- <g bes c ees>-. q--
    <fis c' ees>4-. q-- <fis c' d>-. <fis c' ees>--
    fis'8 g aes a~8 bes b c~ % 5c
    \tuplet 3/2 {c8 cis d} ees4-. <fis, c' d>8 ees' <fis, c'>4-.
    <ees aes bes>4-. q-- <d g bes>-. q--
    a'4-- <ees aes bes>-- <d g bes>-. q-- % 6a
    <ees aes bes>4-. q-- <d g bes>-. q--
    <ees aes bes>4-. q-- <d g bes>-. q--
    \alternative {
      \volta 1 {
        r8 <bes d f>4. <bes des e>4-. q-. % 6b
        <aes c ees>2 <aes c d>
        <g bes d f>4-. q-- <g bes c ees>-. q--
        <aes c ees g>4-. q-- <aes c d f>-. q-- % 6c
        <g bes d f>4-. q-- <g bes c ees>-. q--
        <g c ees>8 f' ees <fis, c' d>~8 bes c <g bes d>~
      }
      \volta 2 {
        r8 <bes d f>4. <bes des e>4-. q-. % 7a
        <aes c ees>2 <aes c d g>
        r8 <f bes c>4. q4-. <f bes des>-.
        <f bes d>2 <e bes' des> % 7b
        r8 <ees aes c>4. <aes c ees>2
        \tuplet 3/2 {g'8 aes a} bes4-. r2
        <bes, d g>4-. q-- <ees g bes>-. q--
        <aes, c ees>4-. q-- <aes c ees g>-. <aes c d f>-- % 7c
        <bes d g>4-. q-- <ees g bes>-. q--
        \tuplet 3/2 {f8 g aes} \tuplet 3/2 {bes c d} ees4-. <ees ees'>-^
      }
    }
  }
  \bar "|."
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s4.\mf
  s1*4
  \repeat volta 2 {
    \alternative {
      {
      }
      {
      }
    }
  }
  \repeat segno 2 {
    \alternative {
      \volta 1 {
      }
      \volta 2 {
      }
    }
  }
}

pianoLH = \relative {
  \global
  bes,,8 c d
  ees2 c
  f2 bes,
  ees2 c
  f8 g aes a bes-. bes, c d
  \repeat volta 2 {
    ees2 bes4 ees | e2 c
    f2 c4 f | fis2 d | ees2 bes4 ees % 3a
    d2 a | fis'8 g aes a~8 bes b c~ | \tuplet 3/2 {c cis f} ees4-. d,2
    f2 bes, | f'4. 8 bes,2 | f'2 bes, | f'4. 8 bes,2
    g'2 c, | f2 bes, | ees2 c % 4a
    \alternative {
      { f8 g aes a c-. bes, c d }
      { a2 d } % 4b
    }
  }
  \repeat segno 2 {
    g2 d4 g | a2 d,
    g2 d4 des | c4. 8 g'4 c, | f2 c4 f | g2 c,
    f2 c4 ces | bes4. bes'8 bes, c d4 | ees2 bes4 ees | e2 c % 5a
    f2 c4 f | fis2 d | ees2 bes4 ees | d2 a
    fis'8 g aes a~8 bes b c~ | \tuplet 3/2 {c cis d} ees4-. d,2 | f2 bes, |
    f'4. 8 bes,2 | f'2 bes, | f'4. 8 bes,2 | % 6a
    \alternative {
      \volta 1 {
        g'2 c, | f bes, | ees c |
        f2 bes, | ees c | a d4 4 |
      }
      \volta 2 {
        g2 c, | f4. 8 bes, c d4 | g4. 8 d4 des | % 7a
        c4. g'8 c, d e4 | f2 c | \tuplet 3/2 {g'8 aes a} bes4-. r2 | ees,2 c |
        f2 bes,8 bes c d | ees2 c | \tuplet 3/2 4 {f8 g aes bes c d} ees4-. <ees, ees'>-^
      }
    }
  }
  \bar "|."
}

#(set-global-staff-size 20)

\book {
  \bookOutputSuffix "repeat"
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Joint soprano/alto staff
          \new Staff = women \with {
            instrumentName = #"Soprano/Alto"
            shortInstrumentName = #"SA"
            printPartCombineTexts = ##f
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \partCombine \soprano \alto
            \new NullVoice \soprano
            \addlyrics \wordsOne
            \addlyrics \wordsTwo
          >>
                                % Joint tenor/bass staff
          \new Staff = men \with {
            instrumentName = #"Tenor/Bass"
            shortInstrumentName = #"TB"
            printPartCombineTexts = ##f
          }
          <<
            \clef "bass"
            \new Voice \partCombine \tenor \bass
          >>
        >>
        <<
          \new ChordNames { \ChordTrack }
                                %        \new FretBoards { \ChordTrack }
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
          }
          <<
            \new Voice \pianoRH
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
          }
          <<
            \clef "bass"
            \new Voice \pianoLH
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Score
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context {
        \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context {
        \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \Voice
%        \consists Ambitus_engraver
      }
    }
  }
}

#(set-global-staff-size 20)

\book {
  \bookOutputSuffix "single"
  \score {
   \unfoldRepeats
    <<
      <<
        \new ChoirStaff <<
                                % Joint soprano/alto staff
          \new Staff = women \with {
            instrumentName = #"Soprano/Alto"
            shortInstrumentName = #"SA"
            printPartCombineTexts = ##f
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \partCombine \soprano \alto
            \new NullVoice \soprano
            \addlyrics \wordsSingle
          >>
                                % Joint tenor/bass staff
          \new Staff = men \with {
            instrumentName = #"Tenor/Bass"
            shortInstrumentName = #"TB"
            printPartCombineTexts = ##f
          }
          <<
            \clef "bass"
            \new Voice \partCombine \tenor \bass
          >>
        >>
        <<
          \new ChordNames { \ChordTrack }
                                %        \new FretBoards { \ChordTrack }
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
          }
          <<
            \new Voice \pianoRH
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
          }
          <<
            \clef "bass"
            \new Voice \pianoLH
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Score
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context {
        \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context {
        \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \Voice
%        \consists Ambitus_engraver
      }
    }
  }
}

#(set-global-staff-size 20)

\book {
  \bookOutputSuffix "singlepage"
  \paper {
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #15
    system-separator-markup = \slashSeparator
  }
  \score {
   \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Joint soprano/alto staff
          \new Staff = women \with {
            instrumentName = #"Soprano/Alto"
            shortInstrumentName = #"SA"
            printPartCombineTexts = ##f
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \partCombine \soprano \alto
            \new NullVoice \soprano
            \addlyrics \wordsSingle
          >>
                                % Joint tenor/bass staff
          \new Staff = men \with {
            instrumentName = #"Tenor/Bass"
            shortInstrumentName = #"TB"
            printPartCombineTexts = ##f
          }
          <<
            \clef "bass"
            \new Voice \partCombine \tenor \bass
          >>
        >>
        <<
          \new ChordNames { \ChordTrack }
                                %        \new FretBoards { \ChordTrack }
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
          }
          <<
            \new Voice \pianoRH
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
          }
          <<
            \clef "bass"
            \new Voice \pianoLH
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Score
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context {
        \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context {
        \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \Voice
%        \consists Ambitus_engraver
      }
    }
  }
}

#(set-global-staff-size 20)

\book {
  \bookOutputSuffix "singlepage-sep"
  \paper {
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #15
    system-separator-markup = \slashSeparator
  }
  \score {
   \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            printPartCombineTexts = ##f
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics \wordsSingle
          >>
                                % Alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            printPartCombineTexts = ##f
          }
          <<
            \new Voice \alto
            \addlyrics \wordsSingle
          >>
                                % Tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            printPartCombineTexts = ##f
          }
          <<
            \clef "treble_8"
            \new Voice \tenor
            \addlyrics \wordsSingle
          >>
                                % Bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            printPartCombineTexts = ##f
          }
          <<
            \clef "bass"
            \new Voice \bass
            \addlyrics \wordsSingle
          >>
        >>
        <<
          \new ChordNames { \ChordTrack }
                                %        \new FretBoards { \ChordTrack }
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
          }
          <<
            \new Voice \pianoRH
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
          }
          <<
            \clef "bass"
            \new Voice \pianoLH
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Score
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context {
        \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context {
        \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \Voice
%        \consists Ambitus_engraver
      }
    }
  }
}

#(set-global-staff-size 20)

\book {
  \bookOutputSuffix "singlepage-sop"
  \paper {
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #15
    system-separator-markup = \slashSeparator
  }
  \score {
   \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics \wordsSingle
          >>
                                % Alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
          }
          <<
            \magnifyStaff #4/7
            \new Voice \alto
            \addlyrics {\tiny \wordsSingle}
          >>
                                % Tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Voice \tenor
            \addlyrics {\tiny \wordsSingle}
          >>
                                % Bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \bass
            \addlyrics {\tiny \wordsSingle}
          >>
        >>
        <<
          \new ChordNames { \ChordTrack }
                                %        \new FretBoards { \ChordTrack }
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
          }
          <<
            \magnifyStaff #4/7
            \new Voice \pianoRH
          >>
          \new Dynamics {\teeny \dynamicsPiano}
          \new Staff = pianolh \with {
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \pianoLH
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Score
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context {
        \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context {
        \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \Voice
%        \consists Ambitus_engraver
      }
    }
  }
}

#(set-global-staff-size 20)

\book {
  \bookOutputSuffix "singlepage-alto"
  \paper {
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #15
    system-separator-markup = \slashSeparator
  }
  \score {
   \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics {\tiny \wordsSingle}
          >>
                                % Alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
          }
          <<
            \new Voice \alto
            \addlyrics \wordsSingle
          >>
                                % Tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Voice \tenor
            \addlyrics {\tiny \wordsSingle}
          >>
                                % Bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \bass
            \addlyrics {\tiny \wordsSingle}
          >>
        >>
        <<
          \new ChordNames { \ChordTrack }
                                %        \new FretBoards { \ChordTrack }
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
          }
          <<
            \magnifyStaff #4/7
            \new Voice \pianoRH
          >>
          \new Dynamics {\teeny \dynamicsPiano}
          \new Staff = pianolh \with {
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \pianoLH
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Score
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context {
        \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context {
        \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \Voice
%        \consists Ambitus_engraver
      }
    }
  }
}

#(set-global-staff-size 20)

\book {
  \bookOutputSuffix "singlepage-tenor"
  \paper {
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #15
    system-separator-markup = \slashSeparator
  }
  \score {
   \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics {\tiny \wordsSingle}
          >>
                                % Alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
          }
          <<
            \magnifyStaff #4/7
            \new Voice \alto
            \addlyrics {\tiny \wordsSingle}
          >>
                                % Tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
          }
          <<
            \clef "treble_8"
            \new Voice \tenor
            \addlyrics \wordsSingle
          >>
                                % Bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \bass
            \addlyrics {\tiny \wordsSingle}
          >>
        >>
        <<
          \new ChordNames { \ChordTrack }
                                %        \new FretBoards { \ChordTrack }
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
          }
          <<
            \magnifyStaff #4/7
            \new Voice \pianoRH
          >>
          \new Dynamics {\teeny \dynamicsPiano}
          \new Staff = pianolh \with {
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \pianoLH
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Score
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context {
        \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context {
        \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \Voice
%        \consists Ambitus_engraver
      }
    }
  }
}

#(set-global-staff-size 20)

\book {
  \bookOutputSuffix "singlepage-bass"
  \paper {
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #15
    system-separator-markup = \slashSeparator
  }
  \score {
   \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics {\tiny \wordsSingle}
          >>
                                % Alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
          }
          <<
            \magnifyStaff #4/7
            \new Voice \alto
            \addlyrics {\tiny \wordsSingle}
          >>
                                % Tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Voice \tenor
            \addlyrics {\tiny \wordsSingle}
          >>
                                % Bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
          }
          <<
            \clef "bass"
            \new Voice \bass
            \addlyrics \wordsSingle
          >>
        >>
        <<
          \new ChordNames { \ChordTrack }
                                %        \new FretBoards { \ChordTrack }
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
          }
          <<
            \magnifyStaff #4/7
            \new Voice \pianoRH
          >>
          \new Dynamics {\teeny \dynamicsPiano}
          \new Staff = pianolh \with {
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \pianoLH
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Score
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context {
        \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context {
        \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \Voice
%        \consists Ambitus_engraver
      }
    }
  }
}

\book {
  \bookOutputSuffix "midi"
  \score {
   \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \tripletFeel 8 \soprano
            \addlyrics \wordsMidi
          >>
                                % Alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \tripletFeel 8 \alto
          >>
                                % Tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "treble_8"
            \new Voice \tripletFeel 8 \tenor
          >>
                                % Bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "bass"
            \new Voice \tripletFeel 8 \bass
          >>
        >>
        <<
          \new ChordNames { \ChordTrack }
                                %        \new FretBoards { \ChordTrack }
        >>
        \new Staff = piano \with {
          midiInstrument = "acoustic grand piano"
        }
        <<
          \new Voice \tripletFeel 8 \pianoRH
          \new Dynamics \dynamicsPiano
          \new Voice \tripletFeel 8 \pianoLH
        >>
      >>
    >>
    \midi {
      \context {
        \Staff
        \consists "Dynamic_performer"
      }
      \context {
        \Voice
        \remove "Dynamic_performer"
      }
    }
  }
}
