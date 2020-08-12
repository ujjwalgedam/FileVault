/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author hp
 */
public class clsFileDetail {

    public clsFileDetail(String sFileId, String sFileName, String sFileExt, String sFileDesc, String sUserName, String sFilePws) {
        this.sFileId = sFileId;
        this.sFileName = sFileName;
        this.sFileExt = sFileExt;
        this.sFileDesc = sFileDesc;
        this.sUserName = sUserName;
        this.sFilePws = sFilePws;
    }
    private String sFileId;
    private String sFileName;
    private String sFileExt;
    private String sFileDesc;
    private String sUserName;
    private String sFilePws;

    public String getsFileId() {
        return sFileId;
    }

    public void setsFileId(String sFileId) {
        this.sFileId = sFileId;
    }

    public String getsFilePws() {
        return sFilePws;
    }

    public void setsFilePws(String sFilePws) {
        this.sFilePws = sFilePws;
    }
    

    public String getsFileName() {
        return sFileName;
    }

    public void setsFileName(String sFileName) {
        this.sFileName = sFileName;
    }

    public String getsFileExt() {
        return sFileExt;
    }

    public void setsFileExt(String sFileExt) {
        this.sFileExt = sFileExt;
    }

    public String getsFileDesc() {
        return sFileDesc;
    }

    public void setsFileDesc(String sFileDesc) {
        this.sFileDesc = sFileDesc;
    }

    public String getsUserName() {
        return sUserName;
    }

    public void setsUserName(String sUserName) {
        this.sUserName = sUserName;
    }
    
}
