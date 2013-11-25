namespace LAB.ZH.SNMP.TEST.B
{
    partial class Form1
    {
        /// <summary>
        /// 必需的设计器变量。
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// 清理所有正在使用的资源。
        /// </summary>
        /// <param name="disposing">如果应释放托管资源，为 true；否则为 false。</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows 窗体设计器生成的代码

        /// <summary>
        /// 设计器支持所需的方法 - 不要
        /// 使用代码编辑器修改此方法的内容。
        /// </summary>
        private void InitializeComponent()
        {
            this.btn = new System.Windows.Forms.Button();
            this.btn1 = new System.Windows.Forms.Button();
            this.da1 = new System.Windows.Forms.DataGridView();
            this.btn12 = new System.Windows.Forms.Button();
            this.tx1 = new System.Windows.Forms.TextBox();
            this.btn基础信息 = new System.Windows.Forms.Button();
            ((System.ComponentModel.ISupportInitialize)(this.da1)).BeginInit();
            this.SuspendLayout();
            // 
            // btn
            // 
            this.btn.Location = new System.Drawing.Point(25, 39);
            this.btn.Name = "btn";
            this.btn.Size = new System.Drawing.Size(75, 23);
            this.btn.TabIndex = 0;
            this.btn.UseVisualStyleBackColor = true;
            this.btn.Click += new System.EventHandler(this.btn_Click);
            // 
            // btn1
            // 
            this.btn1.Location = new System.Drawing.Point(25, 83);
            this.btn1.Name = "btn1";
            this.btn1.Size = new System.Drawing.Size(75, 23);
            this.btn1.TabIndex = 1;
            this.btn1.Text = "count";
            this.btn1.UseVisualStyleBackColor = true;
            this.btn1.Click += new System.EventHandler(this.btn1_Click);
            // 
            // da1
            // 
            this.da1.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.da1.Location = new System.Drawing.Point(25, 112);
            this.da1.Name = "da1";
            this.da1.RowTemplate.Height = 23;
            this.da1.Size = new System.Drawing.Size(615, 282);
            this.da1.TabIndex = 2;
            // 
            // btn12
            // 
            this.btn12.Location = new System.Drawing.Point(148, 39);
            this.btn12.Name = "btn12";
            this.btn12.Size = new System.Drawing.Size(75, 23);
            this.btn12.TabIndex = 3;
            this.btn12.Text = "12";
            this.btn12.UseVisualStyleBackColor = true;
            this.btn12.Click += new System.EventHandler(this.btn12_Click);
            // 
            // tx1
            // 
            this.tx1.Location = new System.Drawing.Point(148, 83);
            this.tx1.Name = "tx1";
            this.tx1.Size = new System.Drawing.Size(100, 21);
            this.tx1.TabIndex = 4;
            // 
            // btn基础信息
            // 
            this.btn基础信息.Location = new System.Drawing.Point(286, 39);
            this.btn基础信息.Name = "btn基础信息";
            this.btn基础信息.Size = new System.Drawing.Size(75, 23);
            this.btn基础信息.TabIndex = 5;
            this.btn基础信息.Text = "基础信息";
            this.btn基础信息.UseVisualStyleBackColor = true;
            this.btn基础信息.Click += new System.EventHandler(this.btn基础信息_Click);
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(652, 406);
            this.Controls.Add(this.btn基础信息);
            this.Controls.Add(this.tx1);
            this.Controls.Add(this.btn12);
            this.Controls.Add(this.da1);
            this.Controls.Add(this.btn1);
            this.Controls.Add(this.btn);
            this.Name = "Form1";
            this.Text = "Form1";
            ((System.ComponentModel.ISupportInitialize)(this.da1)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Button btn;
        private System.Windows.Forms.Button btn1;
        private System.Windows.Forms.DataGridView da1;
        private System.Windows.Forms.Button btn12;
        private System.Windows.Forms.TextBox tx1;
        private System.Windows.Forms.Button btn基础信息;
    }
}

