<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.Master" AutoEventWireup="true" CodeBehind="user_library.aspx.cs" Inherits="LibraryWeb.user.user_library" %>
<asp:Content ID="Content1" ContentPlaceHolderID="c1" runat="server">
    <form id="form1" runat="server">
        <div class="col-lg-12">
                    <div class="card">
                        <div class="card-header">
                            <strong class="card-title">User Library</strong>
                        </div>
                        <div class="card-body">
                            <asp:SqlDataSource ID="SqlDataSource2" runat="server"></asp:SqlDataSource>
                                 <HeaderTemplate>   
                                     <table class="table">
                                             <thead>
                                                   <tr>
                                             
                                                        <th scope="col">books image</th>
                                                        <th scope="col">books title</th>
                                                        <th scope="col">books pdf</th>
                                                        <th scope="col">author name</th>
                                                        <th scope="col">isbn</th>
                                                       

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
                   
               
                          </tr>
                                 </ItemTemplate>
                                 <FooterTemplate>  </tbody>
                  </table></FooterTemplate>
                             </asp:Repeater>

  
              
 
  
                    
                             <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [user_book]"></asp:SqlDataSource>

  
              
 
  
                    
                        </div>
                    </div>
                </div>
    </form>
</asp:Content>
