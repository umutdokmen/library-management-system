<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="viewbooks.aspx.cs" Inherits="LibraryWeb.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">



</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <div class="col-lg-12">
                    <div class="card">
                        <div class="card-header">
                            <strong class="card-title">Basic Table</strong>
                        </div>
                        <div class="card-body">

                             <asp:Repeater ID="r1" runat="server" OnItemCommand="r1_ItemCommand">
                                 <HeaderTemplate>   
                                     <table class="table">
                                             <thead>
                                                   <tr>
                                             
                                                        <th scope="col">books image</th>
                                                        <th scope="col">books title</th>
                                                        <th scope="col">books pdf</th>
                                                        <th scope="col">author name</th>
                                                        <th scope="col">isbn</th>
                                                        <th scope="col">available</th>

                                                    </tr>
                                               </thead>
                                               <tbody>
                                 </HeaderTemplate>
                                 <ItemTemplate>
                                    <tr>
                              <td><img src="../admin/<%#Eval("books_image") %>" height="100" width="100"/></td>
                              <td><%#Eval("books_title") %></td>
                              <td><%#Eval("books_pdf") %></td>
                              <td><%#Eval("books_author_name") %></td>
                              <td><%#Eval("books_isbn") %></td>
                              <td><%#Eval("available_qty") %></td>
               
                          </tr>
                                 </ItemTemplate>
                                 <FooterTemplate>  </tbody>
                  </table></FooterTemplate>
                             </asp:Repeater>

  
              
 
  
                    
                        </div>
                    </div>
                </div>

</asp:Content>
