using { managed } from '@sap/cds/common';
namespace golf;

entity Rounds : managed {
  key ID : UUID;
  title  : String(111);
  child  : Composition of many Holes on child.parent = $self;
}

entity Holes {
  key parent : Association to Rounds;
  child      : Composition of many Shots on child.parent = $self;
}

entity Shots {
  key parent : Association to Holes;
}
