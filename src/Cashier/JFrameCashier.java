/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package Cashier;

import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.swing.JOptionPane;


public class JFrameCashier extends javax.swing.JFrame {

int meja, meja2;
int i = 0,kd1,kd2,kd3,kd4,kode2;
Boolean b1=false,b2=false,b3=false,b4=false;
String w1 = "",w2="",w3="",w4="",waiter;
ResultSet rs;
Statement st;
Connection con;
    /**
     * Creates new form JFrameCashier
     */
    public JFrameCashier() {
        initComponents();
        setLocationRelativeTo(null);
        setVisible(true);
        connect();
        jButton2.setEnabled(false);
        jButton3.setEnabled(false);
                try{
        rs = st.executeQuery("select KdPesan from t_pesan");
   while(rs.next()){
       if(Integer.parseInt(rs.getString(1)) > kode2){
  kode2 = Integer.parseInt(rs.getString(1));
       }
   }
   kode2 = kode2+1;
    }
        catch(Exception e){
                e.printStackTrace();
            }
        
        ActionListener radioActionPerformed = new ActionListener(){
            public void actionPerformed(ActionEvent e) {
                
                if(jRadioButton1.isSelected()){if(b1){jButton2.setEnabled(true); jButton3.setEnabled(true);} else{jButton2.setEnabled(false); jButton3.setEnabled(false); }}
                if(jRadioButton2.isSelected()){if(b2){jButton2.setEnabled(true); jButton3.setEnabled(true);} else{jButton2.setEnabled(false); jButton3.setEnabled(false);}}
                if(jRadioButton3.isSelected()){if(b3){jButton2.setEnabled(true); jButton3.setEnabled(true);} else{jButton2.setEnabled(false); jButton3.setEnabled(false);}}
                if(jRadioButton4.isSelected()){if(b4){jButton2.setEnabled(true); jButton3.setEnabled(true);} else{jButton2.setEnabled(false); jButton3.setEnabled(false);}}
                
            }
           
        };
        buttonGroup1.add(jRadioButton1);
        buttonGroup1.add(jRadioButton2);
        buttonGroup1.add(jRadioButton3);
        buttonGroup1.add(jRadioButton4);
        jRadioButton1.addActionListener(radioActionPerformed);
        jRadioButton2.addActionListener(radioActionPerformed);
        jRadioButton3.addActionListener(radioActionPerformed);
        jRadioButton4.addActionListener(radioActionPerformed);
    }
        
     public void connect() {
        try{
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost/boomchipz", "root", "");
            st = con.createStatement();
            
            
            rs = st.executeQuery("select NoMeja, KdPesan, IDKaryawan from t_pesan where Status = 'On Table'");
            while(rs.next()){
                if(Integer.parseInt(rs.getString(1)) == 1){
                    b1 = true; kd1 = Integer.parseInt(rs.getString(2)); w1 = rs.getString(3);
                    if(jRadioButton1.isSelected()){
                        if(b1){
                            jButton2.setEnabled(true);
                        jButton3.setEnabled(true);}
                        else{jButton2.setEnabled(false);
                        jButton3.setEnabled(false);
                        }}
                    }
                if(Integer.parseInt(rs.getString(1)) == 2){
                    b2 = true; kd2 = Integer.parseInt(rs.getString(2)); w2 = rs.getString(3);
                    if(jRadioButton1.isSelected()){
                        if(b2){
                            jButton2.setEnabled(true);
                        jButton3.setEnabled(true);}
                        else{jButton2.setEnabled(false);
                        jButton3.setEnabled(false);}}
                    }
                if(Integer.parseInt(rs.getString(1)) == 3){
                    b3 = true; kd3 = Integer.parseInt(rs.getString(2)); w3 = rs.getString(3);
                    if(jRadioButton1.isSelected()){
                        if(b3){
                            jButton2.setEnabled(true);
                        jButton3.setEnabled(true);}
                        else{jButton2.setEnabled(false);
                        jButton3.setEnabled(false);}}
                    }
                if(Integer.parseInt(rs.getString(1)) == 4){
                    b4 = true; kd4 = Integer.parseInt(rs.getString(2)); w4 = rs.getString(3);
                    if(jRadioButton1.isSelected()){
                        if(b4){
                            jButton2.setEnabled(true);
                        jButton3.setEnabled(true);}
                        else{jButton2.setEnabled(false);
                        jButton3.setEnabled(false);}}
                    }
                
                }
            }
            
            
        
        catch(Exception e){
            JOptionPane.showMessageDialog(this, "Connection Failed");
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

        buttonGroup1 = new javax.swing.ButtonGroup();
        jButton2 = new javax.swing.JButton();
        jLabel14 = new javax.swing.JLabel();
        jLabel1 = new javax.swing.JLabel();
        jRadioButton4 = new javax.swing.JRadioButton();
        jRadioButton3 = new javax.swing.JRadioButton();
        jRadioButton1 = new javax.swing.JRadioButton();
        jRadioButton2 = new javax.swing.JRadioButton();
        jButton3 = new javax.swing.JButton();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);

        jButton2.setFont(new java.awt.Font("Tahoma", 0, 14)); // NOI18N
        jButton2.setText("VIEW BILL");
        jButton2.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton2ActionPerformed(evt);
            }
        });

        jLabel14.setFont(new java.awt.Font("Lucida Calligraphy", 0, 12)); // NOI18N
        jLabel14.setText("good FOOD good LIFE");

        jLabel1.setFont(new java.awt.Font("Century", 1, 24)); // NOI18N
        jLabel1.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        jLabel1.setText("BOOM CHIPZ RESTAURANT");

        jRadioButton4.setFont(new java.awt.Font("Tahoma", 1, 14)); // NOI18N
        jRadioButton4.setText("Meja 4");

        jRadioButton3.setFont(new java.awt.Font("Tahoma", 1, 14)); // NOI18N
        jRadioButton3.setText("Meja 3");

        jRadioButton1.setFont(new java.awt.Font("Tahoma", 1, 14)); // NOI18N
        jRadioButton1.setText("Meja 1");
        jRadioButton1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jRadioButton1ActionPerformed(evt);
            }
        });

        jRadioButton2.setFont(new java.awt.Font("Tahoma", 1, 14)); // NOI18N
        jRadioButton2.setText("Meja 2");

        jButton3.setFont(new java.awt.Font("Tahoma", 0, 14)); // NOI18N
        jButton3.setText("SPLIT BILL");
        jButton3.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton3ActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, layout.createSequentialGroup()
                .addGap(0, 0, Short.MAX_VALUE)
                .addComponent(jLabel14, javax.swing.GroupLayout.PREFERRED_SIZE, 151, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(60, 60, 60))
            .addGroup(layout.createSequentialGroup()
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(layout.createSequentialGroup()
                        .addContainerGap()
                        .addComponent(jLabel1, javax.swing.GroupLayout.PREFERRED_SIZE, 565, javax.swing.GroupLayout.PREFERRED_SIZE))
                    .addGroup(layout.createSequentialGroup()
                        .addGap(142, 142, 142)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                            .addGroup(layout.createSequentialGroup()
                                .addComponent(jRadioButton3, javax.swing.GroupLayout.PREFERRED_SIZE, 95, javax.swing.GroupLayout.PREFERRED_SIZE)
                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                                .addComponent(jRadioButton4, javax.swing.GroupLayout.PREFERRED_SIZE, 88, javax.swing.GroupLayout.PREFERRED_SIZE))
                            .addGroup(layout.createSequentialGroup()
                                .addComponent(jRadioButton1, javax.swing.GroupLayout.PREFERRED_SIZE, 89, javax.swing.GroupLayout.PREFERRED_SIZE)
                                .addGap(57, 57, 57)
                                .addComponent(jRadioButton2, javax.swing.GroupLayout.PREFERRED_SIZE, 88, javax.swing.GroupLayout.PREFERRED_SIZE))))
                    .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, layout.createSequentialGroup()
                        .addContainerGap()
                        .addComponent(jButton2, javax.swing.GroupLayout.PREFERRED_SIZE, 161, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(64, 64, 64)
                        .addComponent(jButton3, javax.swing.GroupLayout.PREFERRED_SIZE, 164, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(110, 110, 110)))
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jLabel1, javax.swing.GroupLayout.PREFERRED_SIZE, 31, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addComponent(jLabel14, javax.swing.GroupLayout.PREFERRED_SIZE, 22, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(22, 22, 22)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jRadioButton2, javax.swing.GroupLayout.PREFERRED_SIZE, 34, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jRadioButton1, javax.swing.GroupLayout.PREFERRED_SIZE, 34, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(35, 35, 35)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jRadioButton4, javax.swing.GroupLayout.PREFERRED_SIZE, 36, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jRadioButton3, javax.swing.GroupLayout.PREFERRED_SIZE, 36, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 42, Short.MAX_VALUE)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jButton2, javax.swing.GroupLayout.PREFERRED_SIZE, 43, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jButton3, javax.swing.GroupLayout.PREFERRED_SIZE, 43, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(28, 28, 28))
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void jRadioButton1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jRadioButton1ActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_jRadioButton1ActionPerformed

    private void jButton2ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton2ActionPerformed
        // TODO add your handling code here:
JFrameCetakBill2 bill = new JFrameCetakBill2();

if(jRadioButton1.isSelected()){
bill.setKode(kd1);    
}
if(jRadioButton2.isSelected()){
bill.setKode(kd2);    
}
if(jRadioButton3.isSelected()){
bill.setKode(kd3);    
}
if(jRadioButton4.isSelected()){
bill.setKode(kd4);    
}
dispose();
bill.tampildata();
    }//GEN-LAST:event_jButton2ActionPerformed

    private void jButton3ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton3ActionPerformed
        // TODO add your handling code here:
    JFrameSplit split = new JFrameSplit();    
split.setKodeSplit(kode2); 
if(jRadioButton1.isSelected()){
    try{
    rs = st.executeQuery("select NoMeja, IDKaryawan from t_pesan where KdPesan = "+kd1);
                while(rs.next()){
                meja2 = Integer.parseInt(rs.getString(1));
                waiter = rs.getString(2);
                }
                st.executeUpdate("insert into t_pesan values ("+kode2+","+meja2+",'"+waiter+"', now(), 'On table')");
}
catch(Exception e){
   e.printStackTrace();
   }

split.setKode(kd1);    

}
if(jRadioButton2.isSelected()){
    try{
    rs = st.executeQuery("select NoMeja, IDKaryawan from t_pesan where KdPesan = "+kd2);

                while(rs.next()){
                meja2 = Integer.parseInt(rs.getString(1));
                waiter = rs.getString(2);
                }
                st.executeUpdate("insert into t_pesan values ("+kode2+","+meja2+",'"+waiter+"', now(), 'On table')");
}
catch(Exception e){
   e.printStackTrace();
   }
split.setKode(kd2);

}
if(jRadioButton3.isSelected()){
    try{
    rs = st.executeQuery("select NoMeja, IDKaryawan from t_pesan where KdPesan = "+kd3);

                while(rs.next()){
                meja2 = Integer.parseInt(rs.getString(1));
                waiter = rs.getString(2);
                }
                st.executeUpdate("insert into t_pesan values ("+kode2+","+meja2+",'"+waiter+"', now(), 'On table')");
}
catch(Exception e){
   e.printStackTrace();
   }
split.setKode(kd3);

}
if(jRadioButton4.isSelected()){
    try{
    rs = st.executeQuery("select NoMeja, IDKaryawan from t_pesan where KdPesan = "+kd4);

                while(rs.next()){
                meja2 = Integer.parseInt(rs.getString(1));
                waiter = rs.getString(2);
                }
                st.executeUpdate("insert into t_pesan values ("+kode2+","+meja2+",'"+waiter+"', now(), 'On table')");
}
catch(Exception e){
   e.printStackTrace();
   }
split.setKode(kd4);

}

dispose();

split.tampildata();  
split.tampildata2();  
    }//GEN-LAST:event_jButton3ActionPerformed

    /**
     * @param args the command line arguments
     */


    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.ButtonGroup buttonGroup1;
    private javax.swing.JButton jButton2;
    private javax.swing.JButton jButton3;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel14;
    public javax.swing.JRadioButton jRadioButton1;
    public javax.swing.JRadioButton jRadioButton2;
    public javax.swing.JRadioButton jRadioButton3;
    public javax.swing.JRadioButton jRadioButton4;
    // End of variables declaration//GEN-END:variables
}
