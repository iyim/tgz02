.class public Lcom/alibaba/ailabs/genie/studymode/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# static fields
.field private static excludeAppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static studyAppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 29

    const-string v0, "com.szy.sprite"

    const-string v1, "com.szy.spriteparent"

    const-string v2, "com.szy.spritemechanism"

    const-string v3, "com.lingshi.inst.klxt"

    const-string v4, "com.alo7.android.genie"

    const-string v5, "com.ishow.genie"

    const-string v6, "com.alibaba.genie.testproject"

    const-string v7, "com.xueersi.ott.tmallyxdp"

    const-string v8, "com.yixinjiang.goodbaba.app.presentation.pep"

    const-string v9, "com.kooup.student"

    const-string v10, "com.gkid.gkidbox"

    const-string v11, "com.yangcong345.android.phone"

    const-string v12, "com.classba.nnyc"

    const-string v13, "com.miaokids.math"

    const-string v14, "com.acadsoc.tv.speaker"

    const-string v15, "com.miaokids.mathcourse"

    const-string v16, "com.jiliguala.library"

    const-string v17, "com.tmallmateali"

    const-string v18, "cn.cibnpad.guttv.edu"

    const-string v19, "com.appshare.android.ilisten.hd"

    const-string v20, "cn.idaddy.android.ilisten.siwei"

    const-string v21, "cn.idaddy.android.ilisten.pinyin"

    const-string v22, "com.acadsoc.tv.speaker"

    const-string v23, "air.com.gongfubb.wksz"

    const-string v24, "com.ihuman.pinyin"

    const-string v25, "com.ihuman.imath"

    const-string v26, "com.ihuman.english"

    const-string v27, "com.ihuman.book"

    const-string v28, "com.ximalaya.ting.kid"

    .line 10
    filled-new-array/range {v0 .. v28}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/alibaba/ailabs/genie/studymode/Constants;->studyAppList:Ljava/util/List;

    const-string v0, "com.alibaba.ailabs.genie.rtc"

    const-string v1, "com.android.packageinstaller"

    .line 42
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/alibaba/ailabs/genie/studymode/Constants;->excludeAppList:Ljava/util/List;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static getDefaultAppList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 50
    sget-object v0, Lcom/alibaba/ailabs/genie/studymode/Constants;->studyAppList:Ljava/util/List;

    return-object v0
.end method

.method public static getExcludeAppList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 54
    sget-object v0, Lcom/alibaba/ailabs/genie/studymode/Constants;->excludeAppList:Ljava/util/List;

    return-object v0
.end method
