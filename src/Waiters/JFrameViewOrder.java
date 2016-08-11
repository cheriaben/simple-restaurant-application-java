/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package Waiters;
import java.awt.HeadlessException;
import java.sql.*;
import java.util.Arrays;
import javax.swing.JOptionPane;
import javax.swing.table.DefaultTableModel;
/**
 *
 * @author dessy yanty
 */
public class JFrameViewOrder extends javax.swing.JFrame {
Connection con;
        Statement st;
        ResultSet rs;
        String viewmeja;
    /**
     * Creates new form JFrameViewOrder
     */
    public JFrameViewOrder() {
        initComponents();
        setLocationRelativeTo(null);
        setVisible(true);
        connect();
        tampildata();
        
    }
public void connect() {
            try {
            Class.forName("com.mysql.jdbc.Driver");
            con =DriverManager.getConnection("jdbc:mysql://localhost:3306/boomchipz","root","");
            st = con.createStatement();
            }
            catch(ClassNotFoundException | SQLException e) {
                JOptionPane.showMessageDialog(null, "Connection Failed");
                System.out.println(e.getMessage());
            }
        }
  
  public void tampildata() {
            viewmeja = jComboBox1.getSelectedItem().toString();
            DefaultTableModel tbl1 = new DefaultTableModel();
        tbl1.addColumn("No Pesanan");
        tbl1.addColumn("Kode Pesan");
        tbl1.addColumn("No Meja");
        tbl1.addColumn("Nama Makanan/Minuman");
        tbl1.addColumn("Jumlah");
        tbl1.addColumn("Status");
            try{
                connect();
                if(viewmeja.equals("1")){
                String sql= "Select NoPesanan, p.KdPesan, NoMeja, p.KdMakanan, NamaMakanan, JumlahPesanan, StatusMasak from t_pesanan p, t_resep r, t_pesan s where p.KdPesan = s.KdPesan AND p.KdMakanan = r.KdMakanan AND NoMeja = 1 AND Status = 'On table'";
                rs = st.executeQuery(sql);
                while (rs.next()) {
                    tbl1.addRow(new Object[]{
                rs.getString(1),
                rs.getString(2),
                rs.getString(3),
                rs.getString(5),
                rs.getString(6),
                rs.getString(7)
                    });
                }
                jTable1.setModel(tbl1);
               
            } 
                else if(viewmeja.equals("2")){
                String sql= "Select NoPesanan, p.KdPesan, NoMeja, p.KdMakanan, NamaMakanan, JumlahPesanan, StatusMasak from t_pesanan p, t_resep r, t_pesan s where p.KdPesan = s.KdPesan AND p.KdMakanan = r.KdMakanan AND NoMeja = 2 AND Status = 'On table'";
                rs = st.executeQuery(sql);
                while (rs.next()) {
                    tbl1.addRow(new Object[]{
                rs.getString(1),
                rs.getString(2),
                rs.getString(3),
                rs.getString(5),
                rs.getString(6),
                rs.getString(7)
                    });
                }
                jTable1.setModel(tbl1);
                
            } 
                else if(viewmeja.equals("3")){
                String sql= "Select NoPesanan, p.KdPesan, NoMeja, p.KdMakanan, NamaMakanan, JumlahPesanan, StatusMasak from t_pesanan p, t_resep r, t_pesan s where p.KdPesan = s.KdPesan AND p.KdMakanan = r.KdMakanan  AND NoMeja = 3 AND Status = 'On table'";
                rs = st.executeQuery(sql);
                while (rs.next()) {
                    tbl1.addRow(new Object[]{
                rs.getString(1),
                rs.getString(2),
                rs.getString(3),
                rs.getString(5),
                rs.getString(6),
                rs.getString(7)
                    });
                }
                jTable1.setModel(tbl1);
              
            } 
            else if(viewmeja.equals("4")){
                String sql= "Select NoPesanan, p.KdPesan, NoMeja, p.KdMakanan, NamaMakanan, JumlahPesanan, StatusMasak from t_pesanan p, t_resep r, t_pesan s where p.KdPesan = s.KdPesan AND p.KdMakanan = r.KdMakanan AND NoMeja = 4 AND Status = 'On table'";
                rs = st.executeQuery(sql);
                while (rs.next()) {
                    tbl1.addRow(new Object[]{
                rs.getString(1),
                rs.getString(2),
                rs.getString(3),
                rs.getString(5),
                rs.getString(6),
                rs.getString(7)
                    });
                }
                jTable1.setModel(tbl1);
              
            }
            else{
                String sql= "Select NoPesanan, p.KdPesan, NoMeja, p.KdMakanan, NamaMakanan, JumlahPesanan, StatusMasak from t_pesanan p, t_resep r, t_pesan s where p.KdPesan = s.KdPesan AND p.KdMakanan = r.KdMakanan AND Status = 'On table'";
                rs = st.executeQuery(sql);
                while (rs.next()) {
                    tbl1.addRow(new Object[]{
                rs.getString(1),
                rs.getString(2),
                rs.getString(3),
                rs.getString(5),
                rs.getString(6),
                rs.getString(7)
                    });
                }
                jTable1.setModel(tbl1);
             
            }
            }
            catch (Exception e) {
                JOptionPane.showMessageDialog(null,"Error");  
            }
  
  }
        
    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jLabel1 = new javax.swing.JLabel();
        jScrollPane2 = new javax.swing.JScrollPane();
        jTable1 = new javax.swing.JTable();
        jButton1 = new javax.swing.JButton();
        jComboBox1 = new javax.swing.JComboBox();

        jLabel1.setFont(new java.awt.Font("Century", 1, 36)); // NOI18N
        jLabel1.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        jLabel1.setText("VIEW ORDER");

        jTable1.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {
                {null, null, null, null, null, null},
                {null, null, null, null, null, null},
                {null, null, null, null, null, null},
                {null, null, null, null, null, null},
                {null, null, null, null, null, null},
                {null, null, null, null, null, null},
                {null, null, null, null, null, null},
                {null, null, null, null, null, null},
                {null, null, null, null, null, null},
                {null, null, null, null, null, null},
                {null, null, null, null, null, null},
                {null, null, null, null, null, null},
                {null, null, null, null, null, null},
                {null, null, null, null, null, null},
                {null, null, null, null, null, null},
                {null, null, null, null, null, null},
                {null, null, null, null, null, null},
                {null, null, null, null, null, null},
                {null, null, null, null, null, null},
                {null, null, null, null, null, null},
                {null, null, null, null, null, null},
                {null, null, null, null, null, null},
                {null, null, null, null, null, null},
                {null, null, null, null, null, null},
                {null, null, null, null, null, null},
                {null, null, null, null, null, null},
                {null, null, null, null, null, null},
                {null, null, null, null, null, null},
                {null, null, null, null, null, null},
                {null, null, null, null, null, null}
            },
            new String [] {
                "No Pesanan", "Kode Pesan", "Nomor Meja", "Nama Makanan/Minuman", "Jumlah", "Status"
            }
        ) {
            boolean[] canEdit = new boolean [] {
                false, false, false, false, false, false
            };

            public boolean isCellEditable(int rowIndex, int columnIndex) {
                return canEdit [columnIndex];
            }
        });
        jScrollPane2.setViewportView(jTable1);
        if (jTable1.getColumnModel().getColumnCount() > 0) {
            jTable1.getColumnModel().getColumn(0).setResizable(false);
            jTable1.getColumnModel().getColumn(1).setResizable(false);
            jTable1.getColumnModel().getColumn(2).setResizable(false);
            jTable1.getColumnModel().getColumn(3).setResizable(false);
            jTable1.getColumnModel().getColumn(4).setResizable(false);
            jTable1.getColumnModel().getColumn(5).setResizable(false);
        }

        jButton1.setText("DELETE");
        jButton1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton1ActionPerformed(evt);
            }
        });

        jComboBox1.setModel(new javax.swing.DefaultComboBoxModel(new String[] { "All", "1", "2", "3", "4" }));
        jComboBox1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jComboBox1ActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addGap(33, 33, 33)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                    .addComponent(jScrollPane2, javax.swing.GroupLayout.PREFERRED_SIZE, 556, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jComboBox1, javax.swing.GroupLayout.PREFERRED_SIZE, 76, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(jLabel1, javax.swing.GroupLayout.DEFAULT_SIZE, 609, Short.MAX_VALUE)
                    .addGroup(layout.createSequentialGroup()
                        .addGap(224, 224, 224)
                        .addComponent(jButton1, javax.swing.GroupLayout.PREFERRED_SIZE, 153, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(0, 0, Short.MAX_VALUE)))
                .addContainerGap())
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jLabel1, javax.swing.GroupLayout.PREFERRED_SIZE, 27, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(39, 39, 39)
                .addComponent(jComboBox1, javax.swing.GroupLayout.DEFAULT_SIZE, 42, Short.MAX_VALUE)
                .addGap(18, 18, 18)
                .addComponent(jScrollPane2, javax.swing.GroupLayout.PREFERRED_SIZE, 235, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addComponent(jButton1, javax.swing.GroupLayout.PREFERRED_SIZE, 58, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(18, 18, 18))
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void jComboBox1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jComboBox1ActionPerformed
        // TODO add your handling code here:
    tampildata();
    }//GEN-LAST:event_jComboBox1ActionPerformed

    private void jButton1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton1ActionPerformed
    try{
        connect();
        int select = jTable1.getSelectedRow();
    String sql = "delete from t_pesanan where NoPesanan = "+jTable1.getValueAt(select,0)+" AND StatusMasak = 'Waiting'";
    st.executeUpdate(sql);
    }
    catch (Exception e) {
          JOptionPane.showMessageDialog(null,"Ada Kesalahan....");  
        }
    tampildata();
    }//GEN-LAST:event_jButton1ActionPerformed

    /**
     * @param args the command line arguments
     */


    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton jButton1;
    private javax.swing.JComboBox jComboBox1;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JScrollPane jScrollPane2;
    private javax.swing.JTable jTable1;
    // End of variables declaration//GEN-END:variables
}
