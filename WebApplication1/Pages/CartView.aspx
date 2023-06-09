﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CartView.aspx.cs" Inherits="WebApplication1.Pages.CartView" MasterPageFile="~/Pages/Store.Master"%>

<asp:Content ID="Content1" ContentPlaceHolderID="bodyContent" runat="server">
    <div id="content">
        <h2>Your cart</h2>
        <table id="cartTable">
            <thead>
                <tr>
                    <th>Quantity</th>
                    <th>Item</th>
                    <th>Price</th
                    <th>Subtotal</th>
                </tr>
            </thead>
            <asp:Repeater ItemType="WebApplication1.Models.CartLine" SelectMethod="GetCartLines" runat="server" EnableViewState="false">
                <ItemTemplate>
                    <tr>
                        <td><%# Item.Quantity %></td>
                        <td><%# Item.Product.Name %></td>
                        <td><%# Item.Product.Price.ToString("c")%></td>
                        <td><%# ((Item.Quantity * Item.Product.Price).ToString("c"))%></td>
                        <td>
                            <button type="submit" class="actionBttons" name="remove" value="<%# Item.Product.ProductID %>">
                                Remove
                            </button> 
                        </td>
                    </tr>
                </ItemTemplate>
            </asp:Repeater>
            <tfoot>
                <tr> 
                    <td colspan="3">Total:</td>
                    <td><%= CartTotal.ToString("c") %></td>
                </tr>
            </tfoot>
        </table>
        <p class="actionButtons"> 
            <a href="<%= ReturnUrl %>">Continue shopping</a>
        </p>
    </div>
</asp:Content>
