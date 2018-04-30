\version "2.18.2"

\header {
  title    = "Botany Bay"
  composer = "Trad. arr. Stephen Sharpe"
}

\layout {
  ragged-last-bottom = ##f
}

global = {
  \key d \major
  \time 6/8
}

sop = \relative c' {
  \global
  r2.
  r2.
  \repeat volta 3 {
    fis8. e16 fis8 g a b
    a8. g16 fis e~e8 d e
    fis8. e16fis8 g a b
    a8. g16 fis e~e8 r8 d16 e
    fis8 a a e g g
    fis16 e d4~d8 r a'16 a
    fis8 a d g, b d
    a4.~a8 r b16 cis
    d8 cis d e d b
    a16 fis d4~d8 r d16 e
    fis8 a a e g fis
    s2.*6
    s2.*4
  }
  r2.
  r2.^\fermata
  \bar"|."
}

alt = \relative c' {
  \global
  r2.
  r2.
  \repeat volta 3 {
    r2.
    r2.
    fis8. e16 d8 e f g % 5
    fis8. e16 d c~c8 r d16 e
    fis8. e16 d8 d8. cis16 b8
    d16 d d4~d8 r d16 e
    fis8. e16 d8 d8. cis16 b8
    e4.~e8 r d16 e % 10
    fis8. fis16 fis8 g8. g16 g8
    fis16 fis fis4~fis8 r d16 e
    fis8. e16 d8 e8. d16 cis8
    s2.*6
    s2.*4
  }
  r2.
  r2.^\fermata
  \bar"|."
}

ten = \relative c' {
  \global
  a8 a a b b b
  a8 a a b b b
  \repeat volta 3 {
    a8 a a b b b
    a8 a a b b b
    a8 a a b b b % 5
    a8 a a b r4
    a8 a a b b b
    a8 a a b r4
    a8 a a b r4
    cis8 cis cis cis d e % 10
    fis8. a,16 a8 b r4
    a8 a a b b b
    a a a b b b
    s2.*6
    s2.*4
  }
  a8 a a b b b
  a2.^\fermata^\pp
  \bar"|."
}

bas = \relative c {
  \global
  d8 d d d d d
  d8 d d d d d
  \repeat volta 3 {
    d8 d d d d d
    d8 d d d d d
    d8 d d d d d
    d8 d d a b cis
    d4.~d8 r^\f d16 e
    fis8 a a e g g
    fis16 e d4~d8 r d16 d
    a8 a a a b cis
    d4.~d8 r b'16 cis
    d8 cis d e d b
    a16 fis d4~d4.~
    s2.*6
    s2.*4
  }
  d8 d d d d d
  d2.^\fermata
  \bar"|."
}

textsopOne = \lyricmode {
  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
  \set stanza = "1." Fare- _ well to old Eng- land for e- _ ver
  Fare- _ well to my rum culls as well
  Fare- _ well to the well- known old Bail- _ ey
  Where I once used to cut such a
}

textsopTwo = \lyricmode {
  Too- ra- li oo- ra- li,
  Too- ra- li oo- ra- li,
  Too- ra- li oo- ra- li,
  Too- ra- li- ay
  \set stanza = "2."
  There's the cap- tain he is our com- man- _ der
  There's the bo- sun and all the ship's crew
  There's the first and the sec- ond class pas- sen- gers
  Knows _ what we poor con- victs go
}

textsopThree = \lyricmode {
  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
  \set stanza = "3." If _ I had the wings of a tur- tle dove
  It's _ far on my pin- ions I'd fly
  Right _ back to the arms of my Pol- ly love
  And _ in her emb- race I would
}

textaltOne = \lyricmode {
  _ _ _ _ _ _ _ _ _ _
  \set stanza = "1." Fare- _ well to old Eng- land for e- _ ver
  Fare- _ well to my rum culls as well
  Fare- _ well to the well- known old Bail- _ ey
  Where I once used to cut such a
}

textaltTwo = \lyricmode {
  Too- ra- li oo- ra- li,
  Too- ra- li- ay
  \set stanza = "2."
  There's the cap- tain he is our com- man- _ der
  There's the bo- sun and all the ship's crew
  There's the first and the sec- ond class pas- sen- gers
  Knows _ what we poor con- victs go
}

textaltThree = \lyricmode {
  _ _ _ _ _ _ _ _ _ _
  \set stanza = "3." If _ I had the wings of a tur- tle dove
  It's _ far on my pin- ions I'd fly
  Right _ back to the arms of my Pol- ly love
  And _ in her emb- race I would
}

texttenOne = \lyricmode {
}

texttenTwo = \lyricmode {
  Too- ra- li oo- ra- li,
  Too- ra- li oo- ra- li,
  Too- ra- li oo- ra- li,
  Too- ra- li oo- ra- li,
  Too- ra- li oo- ra- li,
  Too- ra- li- ay

  Too- ra- li oo- ra- li
  Too- ra- li- ay
  Too- ra- li- ay
  Too- ra- li oo- ra- li
  Too- ra- li- ay
  Too- ra- li oo- ra- li,
  Too- ra- li oo- ra- li,
}

texttenThree = \lyricmode {
}

textbasOne = \lyricmode {
  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
  \set stanza = "1."
  Fare- _ well to old Eng- land for- e- _ ver
  Fare- _ well to my rum culls as well
  Fare- _ well to the well- known old Bail- _ ey
}

textbasTwo = \lyricmode {
  Too- ra- li oo- ra- li,
  Too- ra- li oo- ra- li,
  Too- ra- li oo- ra- li,
  Too- ra- li oo- ra- li,
  Too- ra- li oo- ra- li,
  Too- ra- li oo- ra- li- ay
  \set stanza = "2."
  There's the cap- tain as is our com- man- _ der
  There's the bo- sun and all the ship's crew
  There's the first and the sec- ond class pas- sen- gers


  Too- ra- li oo- ra- li- ay
}

textbasThree = \lyricmode {
  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
  \set stanza = "1."
  If _ I had the wings of a tur- tle dove
  It's _ far on my pin- ions I'd fly
  Right _ back to the arms of my Pol- ly love
}

\book {
  \score {
    \new ChoirStaff <<
%      \new Staff = women <<
      \new Voice = sop << \sop >>
      \new Lyrics \lyricsto sop \textsopOne
      \new Lyrics \lyricsto sop \textsopTwo
      \new Lyrics \lyricsto sop \textsopThree
      \new Voice = alt << \alt >>
      \new Lyrics \lyricsto alt \textaltOne
      \new Lyrics \lyricsto alt \textaltTwo
      \new Lyrics \lyricsto alt \textaltThree
%      >>
%      \new Staff = men <<
      \new Voice = ten << \clef "treble_8" \ten >>
      \new Lyrics \lyricsto ten \texttenOne
      \new Lyrics \lyricsto ten \texttenTwo
      \new Lyrics \lyricsto ten \texttenThree
      \new Voice = bas << \clef "bass" \bas >>
      \new Lyrics \lyricsto bas \textbasOne
      \new Lyrics \lyricsto bas \textbasTwo
      \new Lyrics \lyricsto bas \textbasThree
%      >>
    >>
    
    \layout {
      \context {
	\Staff
	\override DynamicText.direction = #UP
	\override DynamicText.staff-padding = #0
	\override DynamicLineSpanner.direction = #UP
      }
    }
  }
}
