class Etudiant{
  String nom;
  String prenom;
  int mat;
  String section;
  String groupe;
  Etudiant({this.mat,this.nom,this.prenom,this.groupe,this.section});
 /* Map<String,dynamic> toMap(){
    var map=<String,dynamic>{
      'mat':mat,
      'nom':nom,
      'prenom':prenom,
      'section':section,
      'groupe':groupe,

    };
    return map;
  }
  Etudiant.fromMap(Map<String, dynamic> map){
     mat= map['mat'];
     nom=map['nom'];
     prenom=map['prenom'];
      section=map['section'];
      groupe=map['groupe'];
}*/

}