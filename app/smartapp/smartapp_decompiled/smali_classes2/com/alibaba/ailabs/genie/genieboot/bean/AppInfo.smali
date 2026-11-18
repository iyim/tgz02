.class public Lcom/alibaba/ailabs/genie/genieboot/bean/AppInfo;
.super Ljava/lang/Object;
.source "AppInfo.java"


# static fields
.field public static final DEFAULT_MODE:Ljava/lang/String; = "default"

.field public static final FLLOW_LAST_MODE:Ljava/lang/String; = "followLast"

.field public static final KID_MODE:Ljava/lang/String; = "kidMode"

.field public static final POWERON_TYPE_APP:J = 0x0L

.field public static final POWERON_TYPE_IMG:J = 0x1L


# instance fields
.field private actionUrl:Ljava/lang/String;

.field private app:Ljava/lang/String;

.field private downLoadUrl:Ljava/lang/String;

.field private loadingImg:Ljava/lang/String;

.field private loadingImgShowTime:Ljava/lang/Long;

.field private loadingText:Ljava/lang/String;

.field private mode:Ljava/lang/String;

.field private packageName:Ljava/lang/String;

.field private powerOffAnimationURL:Ljava/lang/String;

.field private powerOffMD5:Ljava/lang/String;

.field private powerOnAnimationURL:Ljava/lang/String;

.field private powerOnMD5:Ljava/lang/String;

.field private powerOnStartPictureShowTime:Ljava/lang/Long;

.field private powerOnStartPictureUrl:Ljava/lang/String;

.field private powerOnType:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getActionUrl()Ljava/lang/String;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieboot/bean/AppInfo;->actionUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getApp()Ljava/lang/String;
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieboot/bean/AppInfo;->app:Ljava/lang/String;

    return-object v0
.end method

.method public getDownLoadUrl()Ljava/lang/String;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieboot/bean/AppInfo;->downLoadUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getLoadingImg()Ljava/lang/String;
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieboot/bean/AppInfo;->loadingImg:Ljava/lang/String;

    return-object v0
.end method

.method public getLoadingImgShowTime()Ljava/lang/Long;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieboot/bean/AppInfo;->loadingImgShowTime:Ljava/lang/Long;

    return-object v0
.end method

.method public getLoadingText()Ljava/lang/String;
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieboot/bean/AppInfo;->loadingText:Ljava/lang/String;

    return-object v0
.end method

.method public getMode()Ljava/lang/String;
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieboot/bean/AppInfo;->mode:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieboot/bean/AppInfo;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPowerOffAnimationURL()Ljava/lang/String;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieboot/bean/AppInfo;->powerOffAnimationURL:Ljava/lang/String;

    return-object v0
.end method

.method public getPowerOffMD5()Ljava/lang/String;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieboot/bean/AppInfo;->powerOffMD5:Ljava/lang/String;

    return-object v0
.end method

.method public getPowerOnAnimationURL()Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieboot/bean/AppInfo;->powerOnAnimationURL:Ljava/lang/String;

    return-object v0
.end method

.method public getPowerOnMD5()Ljava/lang/String;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieboot/bean/AppInfo;->powerOnMD5:Ljava/lang/String;

    return-object v0
.end method

.method public getPowerOnStartPictureShowTime()Ljava/lang/Long;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieboot/bean/AppInfo;->powerOnStartPictureShowTime:Ljava/lang/Long;

    return-object v0
.end method

.method public getPowerOnStartPictureUrl()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieboot/bean/AppInfo;->powerOnStartPictureUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getPowerOnType()Ljava/lang/Long;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieboot/bean/AppInfo;->powerOnType:Ljava/lang/Long;

    return-object v0
.end method

.method public setActionUrl(Ljava/lang/String;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/genieboot/bean/AppInfo;->actionUrl:Ljava/lang/String;

    return-void
.end method

.method public setApp(Ljava/lang/String;)V
    .locals 0

    .line 126
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/genieboot/bean/AppInfo;->app:Ljava/lang/String;

    return-void
.end method

.method public setDownLoadUrl(Ljava/lang/String;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/genieboot/bean/AppInfo;->downLoadUrl:Ljava/lang/String;

    return-void
.end method

.method public setLoadingImg(Ljava/lang/String;)V
    .locals 0

    .line 150
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/genieboot/bean/AppInfo;->loadingImg:Ljava/lang/String;

    return-void
.end method

.method public setLoadingImgShowTime(Ljava/lang/Long;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/genieboot/bean/AppInfo;->loadingImgShowTime:Ljava/lang/Long;

    return-void
.end method

.method public setLoadingText(Ljava/lang/String;)V
    .locals 0

    .line 142
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/genieboot/bean/AppInfo;->loadingText:Ljava/lang/String;

    return-void
.end method

.method public setMode(Ljava/lang/String;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/genieboot/bean/AppInfo;->mode:Ljava/lang/String;

    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/genieboot/bean/AppInfo;->packageName:Ljava/lang/String;

    return-void
.end method

.method public setPowerOffAnimationURL(Ljava/lang/String;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/genieboot/bean/AppInfo;->powerOffAnimationURL:Ljava/lang/String;

    return-void
.end method

.method public setPowerOffMD5(Ljava/lang/String;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/genieboot/bean/AppInfo;->powerOffMD5:Ljava/lang/String;

    return-void
.end method

.method public setPowerOnAnimationURL(Ljava/lang/String;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/genieboot/bean/AppInfo;->powerOnAnimationURL:Ljava/lang/String;

    return-void
.end method

.method public setPowerOnMD5(Ljava/lang/String;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/genieboot/bean/AppInfo;->powerOnMD5:Ljava/lang/String;

    return-void
.end method

.method public setPowerOnStartPictureShowTime(Ljava/lang/Long;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/genieboot/bean/AppInfo;->powerOnStartPictureShowTime:Ljava/lang/Long;

    return-void
.end method

.method public setPowerOnStartPictureUrl(Ljava/lang/String;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/genieboot/bean/AppInfo;->powerOnStartPictureUrl:Ljava/lang/String;

    return-void
.end method

.method public setPowerOnType(Ljava/lang/Long;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/genieboot/bean/AppInfo;->powerOnType:Ljava/lang/Long;

    return-void
.end method
