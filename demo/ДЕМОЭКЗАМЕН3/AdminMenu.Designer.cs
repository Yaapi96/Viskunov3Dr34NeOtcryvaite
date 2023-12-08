
namespace ДЕМОЭКЗАМЕН3
{
    partial class AdminMenu
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.panel4 = new System.Windows.Forms.Panel();
            this.AddBT = new System.Windows.Forms.Button();
            this.label4 = new System.Windows.Forms.Label();
            this.panel2 = new System.Windows.Forms.Panel();
            this.button2 = new System.Windows.Forms.Button();
            this.panel1 = new System.Windows.Forms.Panel();
            this.SupCB = new System.Windows.Forms.ComboBox();
            this.CatCB = new System.Windows.Forms.ComboBox();
            this.DiscCB = new System.Windows.Forms.ComboBox();
            this.NameTB = new System.Windows.Forms.TextBox();
            this.CostTB = new System.Windows.Forms.TextBox();
            this.ManfTB = new System.Windows.Forms.TextBox();
            this.StockTB = new System.Windows.Forms.TextBox();
            this.DescTB = new System.Windows.Forms.TextBox();
            this.CurdCB = new System.Windows.Forms.ComboBox();
            this.label1 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.label5 = new System.Windows.Forms.Label();
            this.label6 = new System.Windows.Forms.Label();
            this.label7 = new System.Windows.Forms.Label();
            this.label8 = new System.Windows.Forms.Label();
            this.label9 = new System.Windows.Forms.Label();
            this.label10 = new System.Windows.Forms.Label();
            this.panel4.SuspendLayout();
            this.panel2.SuspendLayout();
            this.panel1.SuspendLayout();
            this.SuspendLayout();
            // 
            // panel4
            // 
            this.panel4.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
            this.panel4.Controls.Add(this.AddBT);
            this.panel4.Controls.Add(this.label4);
            this.panel4.Location = new System.Drawing.Point(33, 13);
            this.panel4.Name = "panel4";
            this.panel4.Size = new System.Drawing.Size(429, 98);
            this.panel4.TabIndex = 7;
            // 
            // AddBT
            // 
            this.AddBT.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(204)))), ((int)(((byte)(102)))), ((int)(((byte)(0)))));
            this.AddBT.Font = new System.Drawing.Font("Comic Sans MS", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.AddBT.Location = new System.Drawing.Point(19, 3);
            this.AddBT.Name = "AddBT";
            this.AddBT.Size = new System.Drawing.Size(390, 88);
            this.AddBT.TabIndex = 10;
            this.AddBT.Text = "Добавить товар";
            this.AddBT.UseVisualStyleBackColor = false;
            this.AddBT.Click += new System.EventHandler(this.AddBT_Click);
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Font = new System.Drawing.Font("Comic Sans MS", 11.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.label4.Location = new System.Drawing.Point(26, 30);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(0, 21);
            this.label4.TabIndex = 5;
            // 
            // panel2
            // 
            this.panel2.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(204)))), ((int)(((byte)(153)))));
            this.panel2.Controls.Add(this.panel4);
            this.panel2.Dock = System.Windows.Forms.DockStyle.Bottom;
            this.panel2.Location = new System.Drawing.Point(0, 604);
            this.panel2.Name = "panel2";
            this.panel2.Size = new System.Drawing.Size(510, 123);
            this.panel2.TabIndex = 11;
            // 
            // button2
            // 
            this.button2.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(204)))), ((int)(((byte)(102)))), ((int)(((byte)(0)))));
            this.button2.Font = new System.Drawing.Font("Comic Sans MS", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.button2.Location = new System.Drawing.Point(372, 12);
            this.button2.Name = "button2";
            this.button2.Size = new System.Drawing.Size(126, 29);
            this.button2.TabIndex = 1;
            this.button2.Text = "Назад";
            this.button2.UseVisualStyleBackColor = false;
            this.button2.Click += new System.EventHandler(this.button2_Click);
            // 
            // panel1
            // 
            this.panel1.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(204)))), ((int)(((byte)(153)))));
            this.panel1.Controls.Add(this.button2);
            this.panel1.Dock = System.Windows.Forms.DockStyle.Top;
            this.panel1.Location = new System.Drawing.Point(0, 0);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(510, 50);
            this.panel1.TabIndex = 10;
            // 
            // SupCB
            // 
            this.SupCB.Font = new System.Drawing.Font("Comic Sans MS", 11.25F);
            this.SupCB.FormattingEnabled = true;
            this.SupCB.Items.AddRange(new object[] {
            "Hoff",
            "Стокманн"});
            this.SupCB.Location = new System.Drawing.Point(253, 347);
            this.SupCB.Name = "SupCB";
            this.SupCB.Size = new System.Drawing.Size(153, 28);
            this.SupCB.TabIndex = 12;
            this.SupCB.SelectedIndexChanged += new System.EventHandler(this.SupCB_SelectedIndexChanged);
            // 
            // CatCB
            // 
            this.CatCB.Font = new System.Drawing.Font("Comic Sans MS", 11.25F);
            this.CatCB.FormattingEnabled = true;
            this.CatCB.Items.AddRange(new object[] {
            "Ароматы для дома",
            "Вазы",
            "Горшки и подставки",
            "Интерьные аксессуары",
            "Картины и фоторамки",
            "Свечи",
            "Часы"});
            this.CatCB.Location = new System.Drawing.Point(253, 390);
            this.CatCB.Name = "CatCB";
            this.CatCB.Size = new System.Drawing.Size(153, 28);
            this.CatCB.TabIndex = 13;
            this.CatCB.SelectedIndexChanged += new System.EventHandler(this.CatCB_SelectedIndexChanged);
            // 
            // DiscCB
            // 
            this.DiscCB.Font = new System.Drawing.Font("Comic Sans MS", 11.25F);
            this.DiscCB.FormattingEnabled = true;
            this.DiscCB.Items.AddRange(new object[] {
            "5",
            "10",
            "15",
            "20",
            "25",
            "30"});
            this.DiscCB.Location = new System.Drawing.Point(253, 462);
            this.DiscCB.Name = "DiscCB";
            this.DiscCB.Size = new System.Drawing.Size(153, 28);
            this.DiscCB.TabIndex = 14;
            this.DiscCB.SelectedIndexChanged += new System.EventHandler(this.DiscCB_SelectedIndexChanged);
            // 
            // NameTB
            // 
            this.NameTB.Font = new System.Drawing.Font("Comic Sans MS", 11.25F);
            this.NameTB.Location = new System.Drawing.Point(216, 107);
            this.NameTB.Name = "NameTB";
            this.NameTB.Size = new System.Drawing.Size(187, 28);
            this.NameTB.TabIndex = 15;
            // 
            // CostTB
            // 
            this.CostTB.Font = new System.Drawing.Font("Comic Sans MS", 11.25F);
            this.CostTB.Location = new System.Drawing.Point(216, 150);
            this.CostTB.Name = "CostTB";
            this.CostTB.Size = new System.Drawing.Size(187, 28);
            this.CostTB.TabIndex = 16;
            // 
            // ManfTB
            // 
            this.ManfTB.Font = new System.Drawing.Font("Comic Sans MS", 11.25F);
            this.ManfTB.Location = new System.Drawing.Point(216, 185);
            this.ManfTB.Name = "ManfTB";
            this.ManfTB.Size = new System.Drawing.Size(187, 28);
            this.ManfTB.TabIndex = 17;
            // 
            // StockTB
            // 
            this.StockTB.Font = new System.Drawing.Font("Comic Sans MS", 11.25F);
            this.StockTB.Location = new System.Drawing.Point(216, 222);
            this.StockTB.Name = "StockTB";
            this.StockTB.Size = new System.Drawing.Size(187, 28);
            this.StockTB.TabIndex = 18;
            // 
            // DescTB
            // 
            this.DescTB.Font = new System.Drawing.Font("Comic Sans MS", 11.25F);
            this.DescTB.Location = new System.Drawing.Point(216, 263);
            this.DescTB.Name = "DescTB";
            this.DescTB.Size = new System.Drawing.Size(187, 28);
            this.DescTB.TabIndex = 19;
            // 
            // CurdCB
            // 
            this.CurdCB.Font = new System.Drawing.Font("Comic Sans MS", 11.25F);
            this.CurdCB.FormattingEnabled = true;
            this.CurdCB.Items.AddRange(new object[] {
            "2",
            "3",
            "4",
            "5"});
            this.CurdCB.Location = new System.Drawing.Point(253, 503);
            this.CurdCB.Name = "CurdCB";
            this.CurdCB.Size = new System.Drawing.Size(153, 28);
            this.CurdCB.TabIndex = 20;
            this.CurdCB.SelectedIndexChanged += new System.EventHandler(this.CurdCB_SelectedIndexChanged);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Comic Sans MS", 11.25F);
            this.label1.Location = new System.Drawing.Point(85, 115);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(78, 20);
            this.label1.TabIndex = 21;
            this.label1.Text = "Название";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Font = new System.Drawing.Font("Comic Sans MS", 11.25F);
            this.label2.Location = new System.Drawing.Point(85, 158);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(45, 20);
            this.label2.TabIndex = 22;
            this.label2.Text = "Цена";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Font = new System.Drawing.Font("Comic Sans MS", 11.25F);
            this.label3.Location = new System.Drawing.Point(85, 193);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(125, 20);
            this.label3.TabIndex = 23;
            this.label3.Text = "Производитель";
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Font = new System.Drawing.Font("Comic Sans MS", 11.25F);
            this.label5.Location = new System.Drawing.Point(85, 230);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(106, 20);
            this.label5.TabIndex = 24;
            this.label5.Text = "Колличество";
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Font = new System.Drawing.Font("Comic Sans MS", 11.25F);
            this.label6.Location = new System.Drawing.Point(85, 271);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(83, 20);
            this.label6.TabIndex = 25;
            this.label6.Text = "Описание";
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.Font = new System.Drawing.Font("Comic Sans MS", 11.25F);
            this.label7.Location = new System.Drawing.Point(79, 355);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(92, 20);
            this.label7.TabIndex = 26;
            this.label7.Text = "Поставщик";
            // 
            // label8
            // 
            this.label8.AutoSize = true;
            this.label8.Font = new System.Drawing.Font("Comic Sans MS", 11.25F);
            this.label8.Location = new System.Drawing.Point(79, 398);
            this.label8.Name = "label8";
            this.label8.Size = new System.Drawing.Size(84, 20);
            this.label8.TabIndex = 27;
            this.label8.Text = "Категория";
            // 
            // label9
            // 
            this.label9.AutoSize = true;
            this.label9.Font = new System.Drawing.Font("Comic Sans MS", 11.25F);
            this.label9.Location = new System.Drawing.Point(79, 470);
            this.label9.Name = "label9";
            this.label9.Size = new System.Drawing.Size(168, 20);
            this.label9.TabIndex = 28;
            this.label9.Text = "Максимальная скидка";
            // 
            // label10
            // 
            this.label10.AutoSize = true;
            this.label10.Font = new System.Drawing.Font("Comic Sans MS", 11.25F);
            this.label10.Location = new System.Drawing.Point(79, 507);
            this.label10.Name = "label10";
            this.label10.Size = new System.Drawing.Size(123, 20);
            this.label10.TabIndex = 29;
            this.label10.Text = "Текущая скидка";
            // 
            // AdminMenu
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.SystemColors.Window;
            this.ClientSize = new System.Drawing.Size(510, 727);
            this.Controls.Add(this.label10);
            this.Controls.Add(this.label9);
            this.Controls.Add(this.label8);
            this.Controls.Add(this.label7);
            this.Controls.Add(this.label6);
            this.Controls.Add(this.label5);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.CurdCB);
            this.Controls.Add(this.DescTB);
            this.Controls.Add(this.StockTB);
            this.Controls.Add(this.ManfTB);
            this.Controls.Add(this.CostTB);
            this.Controls.Add(this.NameTB);
            this.Controls.Add(this.DiscCB);
            this.Controls.Add(this.CatCB);
            this.Controls.Add(this.SupCB);
            this.Controls.Add(this.panel2);
            this.Controls.Add(this.panel1);
            this.Name = "AdminMenu";
            this.Text = "AdminMenu";
            this.Load += new System.EventHandler(this.AdminForm_Load);
            this.panel4.ResumeLayout(false);
            this.panel4.PerformLayout();
            this.panel2.ResumeLayout(false);
            this.panel1.ResumeLayout(false);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Panel panel4;
        private System.Windows.Forms.Button AddBT;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Panel panel2;
        private System.Windows.Forms.Button button2;
        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.ComboBox SupCB;
        private System.Windows.Forms.ComboBox CatCB;
        private System.Windows.Forms.ComboBox DiscCB;
        private System.Windows.Forms.TextBox NameTB;
        private System.Windows.Forms.TextBox CostTB;
        private System.Windows.Forms.TextBox ManfTB;
        private System.Windows.Forms.TextBox StockTB;
        private System.Windows.Forms.TextBox DescTB;
        private System.Windows.Forms.ComboBox CurdCB;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.Label label8;
        private System.Windows.Forms.Label label9;
        private System.Windows.Forms.Label label10;
    }
}