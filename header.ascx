﻿<%@ OutputCache Duration="120" VaryByParam="none" %>
<%@ Control Language="C#" AutoEventWireup="true" CodeFile="header.ascx.cs" Inherits="header" %>
	<table width="100%" border="0" cellspacing="0" cellpadding="0">
		<tr>
			<td valign="top">
				<P align="center">
				<FONT face="Verdana" size="2"> 
					<a href="default.aspx">Home</a>
					<a id="dentalHyperLink" runat="server" >Dental</a>
					<a id="medicalHyperLink" runat="server" >Medical</a>
					<a id="retirementHyperLink" runat="server" >Retirement Account</a>
					<a id="lifeHyperLink" runat="server">Life Insurance</a>
				</FONT>
				</P>
			</td>
		</tr>
		<tr>
			<td><br>
			</td>
		</tr>
		<tr>
			<td>
				<P align="center">&nbsp;<STRONG><EM><FONT face="Verdana" size="5">Benefits Selection Site</FONT></EM></STRONG>
                    <asp:Label ID="timeLabel" runat="server" Text="Label"></asp:Label>
				</P>
			</td>
		</tr>
	</table>
