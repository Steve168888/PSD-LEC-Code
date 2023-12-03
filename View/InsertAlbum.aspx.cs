﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Projek.Model;
using Projek.Controller;
using System.IO;

namespace Projek.View
{
    public partial class InsertAlbum : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["User"] == null || ((Customer)Session["User"]).CustomerRole != "Admin")
                {
                    Response.Redirect("~/View/Home.aspx");
                }
            }
        }


        protected void SubmitBtn_Click(object sender, EventArgs e)
        {
            string albumname = AlbumNameTxt.Text.ToString();
            string albumDescription = AlbumDescriptionTxt.Text.ToString();

            int albumPrice = Convert.ToInt32(AlbumPriceTxt.Text);
            int albumStock = Convert.ToInt32(AlbumStockTxt.Text);

            int id = Convert.ToInt32(Request.QueryString["artistId"]);

            List<string> msgs = AlbumController.AddAlbum(id, albumname, FileUpload1, albumPrice, albumStock, albumDescription);
            if (msgs != null)
            {
                if (msgs[0] != "")
                {
                    AlbumNameLbl.Visible = true;
                    AlbumNameLbl.Text = msgs[0];
                }
                else
                {
                    AlbumNameLbl.Visible = false;
                }

                if (msgs[1] != "")
                {
                    AlbumDescriptionLbl.Visible = true;
                    AlbumDescriptionLbl.Text = msgs[1];
                }
                else
                {
                    AlbumDescriptionLbl.Visible = false;
                }

                if (msgs[2] != "")
                {
                    AlbumPriceLbl.Visible = true;
                    AlbumPriceLbl.Text = msgs[2];
                }
                else
                {
                    AlbumPriceLbl.Visible = false;
                }

                if (msgs[3] != "")
                {
                    AlbumStockLbl.Visible = true;
                    AlbumStockLbl.Text = msgs[3];
                }
                else
                {
                    AlbumStockLbl.Visible = false;
                }

                if (msgs[4] != "")
                {
                    AlbumImageLbl.Visible = true;
                    AlbumImageLbl.Text = msgs[4];
                }
                else
                {
                    AlbumImageLbl.Visible = false;
                }
            }
            else
            {
                Response.Redirect("~/View/ArtistDetail.aspx?artistId=" + id);
            }
        }


    protected void CancelBtn_Click(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request.QueryString["artistId"]);
            Response.Redirect("~/View/ArtistDetail.aspx?artistId=" + id);
        }
    }
}