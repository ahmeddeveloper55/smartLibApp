class ModelClass {
  String title;
  String authors;
  String branch;
  String copies;
  String accnNo;
  String unitCost;
  String imageUrl;

  ModelClass(
      {
        this.title,
        this.authors,
        this.branch,
        this.copies,
        this.accnNo,
        this.unitCost,
        this.imageUrl});

  ModelClass.fromJson(Map<String, dynamic> json) {
    title = json['Title'] ?? "";
    authors = json['Authors']?? " ";
    branch = json['Branch']?? "";
    copies = json['Copies']?? "";
    accnNo = json['Accn_No']??"";
    unitCost = json['Unit_Cost']??"";
    imageUrl = json['Image_Url']??" ";
  }

}



