<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ExamenPsicometrico.aspx.cs" Inherits="HotSoft.ExamenPsicometrico" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="StyleExamPsico.css" type="text/css" media="screen" />
    <meta name="viewport" />
    <title>Examen Psicometrico</title>
</head>
<body>
    <form id="form1" runat="server">
      <div class="FormExam">
          <div class="Group">
              <div class="lbl">
                  <label>Disfruto siendo parte de un grupo</label>
              </div>
              <div class="Radio">
                   <input id="rb1p1" type="radio" name="p1"  />
                   <label for="rb1p1">Totalmente de acuerdo</label>
              </div>
              <div class="Radio">
                   <input id="rb2p1" type="radio" name="p1"  />
                   <label for="rb2p1">De acuerdo</label>
              </div>
               <div class="Radio">
                   <input id="rb3p1" type="radio" name="p1"  />
                   <label for="rb3p1">Ni a favor ni en contra</label>
              </div>
               <div class="Radio">
                   <input id="rb4p1" type="radio" name="p1"  />
                   <label for="rb4p1">En desacuerdo</label>
              </div>
              <div class="Radio">
                   <input id="rb5p1" type="radio" name="p1"  />
                   <label for="rb5p1">Totalmente de desacuerdo</label>
              </div>
          </div>
          <div class="Group">
              <div class="lbl">
                  <label>Me encantan las fiestas grandes</label>
              </div>
              <div class="Radio">
                   <input id="rb1p2" type="radio" name="p2"  />
                   <label for="rb1p2">Totalmente de acuerdo</label>
              </div>
               <div class="Radio">
                   <input id="rb2p2" type="radio" name="p2"  />
                   <label for="rb2p2">De acuerdo</label>
              </div>
               <div class="Radio">
                   <input id="rb3p2" type="radio" name="p2"  />
                   <label for="rb3p2">Ni a favor ni en contra</label>
              </div>
               <div class="Radio">
                   <input id="rb4p2" type="radio" name="p2"  />
                   <label for="rb4p2">En desacuerdo</label>
              </div>
              <div class="Radio">
                   <input id="rb5p2" type="radio" name="p2"  />
                   <label for="rb5p2">Totalmente de desacuerdo</label>
              </div>
          </div>
          <div class="Group">
              <div class="lbl">
                  <label>No me gustan los acontecimientos con mucha gente</label>
              </div>
              <div class="Radio">
                   <input id="rb1p3" type="radio" name="p3"  />
                   <label for="rb1p3">Totalmente de acuerdo</label>
              </div>
               <div class="Radio">
                   <input id="rb2p3" type="radio" name="p3"  />
                   <label for="rb2p3">De acuerdo</label>
              </div>
               <div class="Radio">
                   <input id="rb3p3" type="radio" name="p3"  />
                   <label for="rb3p3">Ni a favor ni en contra</label>
              </div>
               <div class="Radio">
                   <input id="rb4p3" type="radio" name="p3"  />
                   <label for="rb4p3">En desacuerdo</label>
              </div>
              <div class="Radio">
                   <input id="rb5p3" type="radio" name="p3"  />
                   <label for="rb5p3">Totalmente de desacuerdo</label>
              </div>
          </div>
          <div class="Group">
              <div class="lbl">
                  <label>Involucro a los demás en lo que estoy haciendo</label>
              </div>
              <div class="Radio">
                   <input id="rb1p4" type="radio" name="p4"  />
                   <label for="rb1p4">Totalmente de acuerdo</label>
              </div>
               <div class="Radio">
                   <input id="rb2p4" type="radio" name="p4"  />
                   <label for="rb2p4">De acuerdo</label>
              </div>
               <div class="Radio">
                   <input id="rb3p4" type="radio" name="p4"  />
                   <label for="rb3p4">Ni a favor ni en contra</label>
              </div>
               <div class="Radio">
                   <input id="rb4p4" type="radio" name="p4"  />
                   <label for="rb4p4">En desacuerdo</label>
              </div>
              <div class="Radio">
                   <input id="rb5p4" type="radio" name="p4"  />
                   <label for="rb5p4">Totalmente de desacuerdo</label>
              </div>
          </div>
          <div class="Group">
              <div class="lbl">
                  <label>Prefiero estar solo</label>
              </div>
              <div class="Radio">
                   <input id="rb1p5" type="radio" name="p5"  />
                   <label for="rb1p5">Totalmente de acuerdo</label>
              </div>
               <div class="Radio">
                   <input id="rb2p5" type="radio" name="p5"  />
                   <label for="rb2p5">De acuerdo</label>
              </div>
               <div class="Radio">
                   <input id="rb3p5" type="radio" name="p5"  />
                   <label for="rb3p5">Ni a favor ni en contra</label>
              </div>
               <div class="Radio">
                   <input id="rb4p5" type="radio" name="p5"  />
                   <label for="rb4p5">En desacuerdo</label>
              </div>
              <div class="Radio">
                   <input id="rb5p5" type="radio" name="p5"  />
                   <label for="rb5p5">Totalmente de desacuerdo</label>
              </div>
          </div>
          <div class="Group">
              <div class="lbl">
                  <label>Hablo con mucha gente distinta en las fiestas</label>
              </div>
              <div class="Radio">
                   <input id="rb1p6" type="radio" name="p6"  />
                   <label for="rb1p6">Totalmente de acuerdo</label>
              </div>
               <div class="Radio">
                   <input id="rb2p6" type="radio" name="p6"  />
                   <label for="rb2p6">De acuerdo</label>
              </div>
               <div class="Radio">
                   <input id="rb3p6" type="radio" name="p6"  />
                   <label for="rb3p6">Ni a favor ni en contra</label>
              </div>
               <div class="Radio">
                   <input id="rb4p6" type="radio" name="p6"  />
                   <label for="rb4p6">En desacuerdo</label>
              </div>
              <div class="Radio">
                   <input id="rb5p6" type="radio" name="p6"  />
                   <label for="rb5p6">Totalmente de desacuerdo</label>
              </div>
          </div>
          <div class="Group">
              <div class="lbl">
                  <label>Busco el silencio</label>
              </div>
              <div class="Radio">
                   <input id="rb1p7" type="radio" name="p7"  />
                   <label for="rb1p7">Totalmente de acuerdo</label>
              </div>
               <div class="Radio">
                   <input id="rb2p7" type="radio" name="p7"  />
                   <label for="rb2p7">De acuerdo</label>
              </div>
               <div class="Radio">
                   <input id="rb3p7" type="radio" name="p7"  />
                   <label for="rb3p7">Ni a favor ni en contra</label>
              </div>
               <div class="Radio">
                   <input id="rb4p7" type="radio" name="p7"  />
                   <label for="rb4p7">En desacuerdo</label>
              </div>
              <div class="Radio">
                   <input id="rb5p7" type="radio" name="p7"  />
                   <label for="rb5p7">Totalmente de desacuerdo</label>
              </div>
          </div>
          <div class="Group">
              <div class="lbl">
                  <label>Evito las multitudes</label>
              </div>
              <div class="Radio">
                   <input id="rb1p8" type="radio" name="p8"  />
                   <label for="rb1p8">Totalmente de acuerdo</label>
              </div>
               <div class="Radio">
                   <input id="rb2p8" type="radio" name="p8"  />
                   <label for="rb2p8">De acuerdo</label>
              </div>
               <div class="Radio">
                   <input id="rb3p8" type="radio" name="p8"  />
                   <label for="rb3p8">Ni a favor ni en contra</label>
              </div>
               <div class="Radio">
                   <input id="rb4p8" type="radio" name="p8"  />
                   <label for="rb4p8">En desacuerdo</label>
              </div>
              <div class="Radio">
                   <input id="rb5p8" type="radio" name="p8"  />
                   <label for="rb5p8">Totalmente de desacuerdo</label>
              </div>
          </div>
          <div class="Group">
              <div class="lbl">
                  <label>Me encantan las fiestas sorpresa</label>
              </div>
              <div class="Radio">
                   <input id="rb1p9" type="radio" name="p9"  />
                   <label for="rb1p9">Totalmente de acuerdo</label>
              </div>
               <div class="Radio">
                   <input id="rb2p9" type="radio" name="p9"  />
                   <label for="rb2p9">De acuerdo</label>
              </div>
               <div class="Radio">
                   <input id="rb3p9" type="radio" name="p9"  />
                   <label for="rb3p9">Ni a favor ni en contra</label>
              </div>
               <div class="Radio">
                   <input id="rb4p9" type="radio" name="p9"  />
                   <label for="rb4p9">En desacuerdo</label>
              </div>
              <div class="Radio">
                   <input id="rb5p9" type="radio" name="p9"  />
                   <label for="rb5p9">Totalmente de desacuerdo</label>
              </div>
          </div>
            <div class="Group">
              <div class="lbl">
                  <label>Quiero que me dejen en paz</label>
              </div>
              <div class="Radio">
                   <input id="rb1p10" type="radio" name="p10"  />
                   <label for="rb1p10">Totalmente de acuerdo</label>
              </div>
               <div class="Radio">
                   <input id="rb2p10" type="radio" name="p10"  />
                   <label for="rb2p10">De acuerdo</label>
              </div>
               <div class="Radio">
                   <input id="rb3p10" type="radio" name="p10"  />
                   <label for="rb3p10">Ni a favor ni en contra</label>
              </div>
               <div class="Radio">
                   <input id="rb4p10" type="radio" name="p10"  />
                   <label for="rb4p10">En desacuerdo</label>
              </div>
              <div class="Radio">
                   <input id="rb5p10" type="radio" name="p10"  />
                   <label for="rb5p10">Totalmente de desacuerdo</label>
              </div>
          </div>
          <asp:Button ID="btnGuardarExmPsico" runat="server" Text="Guardar"  CssClass="btn_Guardar"/>
          <asp:Button ID="btnCancelarExmnPsico" runat="server" Text="Cancelar" CssClass="btn_Cancelar" />
      </div>
    </form>
</body>
</html>
