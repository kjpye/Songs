\version "2.20.2"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "To God be the Glory!"
  subtitle    = "Sankey No. 23"
  subsubtitle = "Sankey 880 No. 373"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "W. H. Diane"
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = "Fanny J. Crosby"
%  meter       = "meter"
%  piece       = "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

verses = 3

global = {
  \key aes \major
  \time 3/4
  \tempo 4=120
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
% \mark \markup { \circle "1a" }
  \repeat volta \verses {
    \mark \markup { \box "A" } s4 s2.*5
    \mark \markup { \box "B" } s2.*5
    \mark \markup { \box "C" } s2.*5 s2
    \mark \markup { \box "D" } s4 s2.*3 s2
    \mark \markup { \box "E" } s4 s2.*3 s2
    \mark \markup { \box "B+2" } s4 s2.*2
    \mark \markup { \box "C" } s2.*5 s2
  }
}

TempoTrack = {
  \repeat volta \verses {
  }
}

soprano = \relative c' {
  \global
  \repeat volta \verses {
    ees4
    ees2 f8 g
    aes4 ees aes
    bes ees, bes'
    c2 c4
    des4 f, des'
    c4 aes  c % B
    c4 bes f
    bes2 ees,4
    ees2 f8 g
    aes4 ees aes
    bes4 ees, bes' % C
    c2 c4
    ees4 des bes
    aes4 g aes
    c4 c bes
    aes2 \bar "||" \break c8.^\markup \upright REFRAIN des16
    ees2 c8. d16 % D
    ees2 ees8. c16
    aes4 bes c
    bes2 bes8. c16
    des2 bes8. c16 % E
    des2 des8 bes
    ees4 ees des
    c2 ees,4 % repeat B++
    ees2 f8 g
    aes4 ees aes
    bes4 ees, bes' % C
    c2 c4
    ees4 des bes
    aes4 g aes
    c4 c bes
    aes2
  }
}

alto = \relative c' {
  \global
  \repeat volta \verses {
    c4
    c4(ees) des8 des
    c4 c ees
    ees4 des ees
    ees2 ees4
    f4 ees f
    ees4 ees ees % B
    d4 d f
    ees2 des4
    c4(ees) des8 des
    c4 c ees
    ees4 ees ees % C
    ees2 ges4
    f4 f f
    ees4 ees ees
    ees4 ees des
    c2 ees8. ees16
    ees2 aes8. g16 % D
    aes2 ees8. 16
    ees4 ees ees
    ees2 ees8. 16
    ees2 8. 16 % E
    ees2 8 8
    ees4 4 4
    ees2 des4
    c4(ees) des8 des
    c4 c ees
    ees4 ees ees % C
    ees2 ges4
    f4 f f
    ees4 ees ees
    ees4 ees des
    c2
  }
}

tenor = \relative c' {
  \global
  \repeat volta \verses {
    aes4
    aes2 g8 ees
    ees4 aes aes
    g4 g g
    aes2 4
    aes4 4 4
    aes 4 4 4 % B
    f4 f bes8(aes)
    g2 g4
    aes2 g8 ees
    ees4 aes aes
    g4 g g % C
    aes2 4
    aes4 bes d
    c4 bes c
    aes4 aes g
    aes2 8. 16
    c2 aes8. bes16 % D
    d2 8. aes16
    aes4 g aes
    g2 8. aes16
    bes2 g8. aes16 % E
    bes2 8 g
    aes4 4 g
    aes2 g4
    aes2 g8 ees
    ees4 aes aes
    g4 g g % C
    aes2 4
    aes4 bes d
    c4 bes c
    aes4 aes g
    aes2
  }
}

bass= \relative c {
  \global
  \repeat volta \verses {
    aes4
    aes4(c) ees8 ees
    aes,4 aes c
    ees4 ees ees
    aes,2 aes4
    des4 des des
    aes4 c aes % B
    bes4 bes d
    ees2 ees4
    aes,4(c) ees8 ees
    aes,4 aes c
    ees4 ees ees % C
    aes,2 aes4
    des4 des des
    ees4 ees ees
    ees4 ees ees
    aes,2 \bar "||" \break aes'8. aes16
    aes2 aes8. aes16 % D
    aes2 aes8. aes,16
    c4 bes aes
    ees'2 ees8. ees16
    ees2 ees8. ees16 % E
    ees2 ees8 des
    c4 c bes
    aes2 ees'4 % back to B
    aes,4(c) ees8 ees
    aes,4 aes c
    ees4 ees ees % C
    aes,2 aes4
    des4 des des
    ees4 ees ees
    ees4 ees ees
    aes,2
  }
}

chorus = \lyricmode {
  Praise the Lord!
  praise the Lord!
  Let the earth hear His voice!
  Praise the Lord!
  praise the Lord!
  Let the peo- ple re- joice!
  Oh, come to the Fath- er
  thro' Je- sus the Son;
  And give Him the glo- ry!
  great things He hath done!
}

wordsOne = \lyricmode {
  \set stanza = "1."
  To God be the glo- ry!
  greɐt things He hath done,
  So loved He the world that
  He gave us His son;
  Who yield- ed His life an a- tone- ment for sin,
  And o- pened the Life gate that all may go in.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Oh, per- fect re- demp- tion
  the pur- chase of blood,
  To ev; 'ry be- liev- er the pro- mise of Godl
  The vi- lest of- fen- der
  who tru- ly be- lieves,
  That mom- ent from Je- sus
  a par- don re- ceives.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Great things he hath taught us,
  great things He hath done,
  And great our re- joic- ing thro' Je- sus the Son;
  But pu- rer, and high- er, and great- er will be
  Our won- der, our trans- port,
  when Je- sus we see.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "\nTo " "God " "be " "the " glo "ry! "
  "\ngreɐt " "things " "He " "hath " "done, "
  "\nSo " "loved " "He " "the " "world " "that "
  "\nHe " "gave " "us " "His " "son; "
  "\nWho " yield "ed " "His " "life " "an " a tone "ment " "for " "sin, "
  "\nAnd " o "pened " "the " "Life " "gate " "that " "all " "may " "go " "in. "
  "\nPraise " "the " "Lord! "
  "\npraise " "the " "Lord! "
  "\nLet " "the " "earth " "hear " "His " "voice! "
  "\nPraise " "the " "Lord! "
  "\npraise " "the " "Lord! "
  "\nLet " "the " peo "ple " re "joice! "
  "\nOh, " "come " "to " "the " Fath "er "
  "\nthro' " Je "sus " "the " "Son; "
  "\nAnd " "give " "Him " "the " glo "ry! "
  "\ngreat " "things " "He " "hath " "done! "

  \set stanza = "2."
  "\nOh, " per "fect " re demp "tion "
  "\nthe " pur "chase " "of " "blood, "
  "\nTo " "ev; " "'ry " be liev "er " "the " pro "mise " "of " "Godl "
  "\nThe " vi "lest " of fen "der "
  "\nwho " tru "ly " be "lieves, "
  "\nThat " mom "ent " "from " Je "sus "
  "\na " par "don " re "ceives. "
  "\nPraise " "the " "Lord! "
  "\npraise " "the " "Lord! "
  "\nLet " "the " "earth " "hear " "His " "voice! "
  "\nPraise " "the " "Lord! "
  "\npraise " "the " "Lord! "
  "\nLet " "the " peo "ple " re "joice! "
  "\nOh, " "come " "to " "the " Fath "er "
  "\nthro' " Je "sus " "the " "Son; "
  "\nAnd " "give " "Him " "the " glo "ry! "
  "\ngreat " "things " "He " "hath " "done! "

  \set stanza = "3."
  "\nGreat " "things " "he " "hath " "taught " "us, "
  "\ngreat " "things " "He " "hath " "done, "
  "\nAnd " "great " "our " re joic "ing " "thro' " Je "sus " "the " "Son; "
  "\nBut " pu "rer, " "and " high "er, " "and " great "er " "will " "be "
  "\nOur " won "der, " "our " trans "port, "
  "\nwhen " Je "sus " "we " "see. "
  "\nPraise " "the " "Lord! "
  "\npraise " "the " "Lord! "
  "\nLet " "the " "earth " "hear " "His " "voice! "
  "\nPraise " "the " "Lord! "
  "\npraise " "the " "Lord! "
  "\nLet " "the " peo "ple " re "joice! "
  "\nOh, " "come " "to " "the " Fath "er "
  "\nthro' " Je "sus " "the " "Son; "
  "\nAnd " "give " "Him " "the " glo "ry! "
  "\ngreat " "things " "He " "hath " "done! "
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
%    \articulate
    <<
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
            \new Voice \RehearsalTrack
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
