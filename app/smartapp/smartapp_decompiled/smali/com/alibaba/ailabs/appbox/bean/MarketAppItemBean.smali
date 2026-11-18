.class public Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;
.super Ljava/lang/Object;
.source "MarketAppItemBean.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Landroid/os/Parcelable;


# annotations
.annotation build Landroidx/room/Entity;
    tableName = "marketitem"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;",
            ">;"
        }
    .end annotation
.end field

.field static final serialVersionUID:J = 0x2766L


# instance fields
.field protected actionUrl:Ljava/lang/String;

.field protected apkVersion:Ljava/lang/String;

.field protected apkVersionCode:Ljava/lang/String;

.field protected appId:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/room/PrimaryKey;
    .end annotation
.end field

.field protected appVersion:Ljava/lang/String;

.field protected applicationId:Ljava/lang/String;

.field protected author:Ljava/lang/String;

.field protected bgPic:Ljava/lang/String;

.field protected businessType:Ljava/lang/String;

.field protected description:Ljava/lang/String;

.field protected downloadUrl:Ljava/lang/String;

.field protected icon:Ljava/lang/String;

.field protected installSize:I

.field protected isCollected:Ljava/lang/String;

.field protected isOffline:Ljava/lang/String;

.field protected logInfo:Ljava/lang/String;

.field protected packageName:Ljava/lang/String;

.field protected picUrl:Ljava/lang/String;

.field protected screenShot:Ljava/lang/String;

.field protected subTitle:Ljava/lang/String;

.field protected subscript:Ljava/lang/String;

.field protected title:Ljava/lang/String;

.field protected ttsGuide:Ljava/lang/String;

.field protected uninstallable:Ljava/lang/String;

.field protected updateTime:Ljava/lang/String;

.field protected voiceDisposition:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 420
    new-instance v0, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean$1;

    invoke-direct {v0}, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean$1;-><init>()V

    sput-object v0, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->CREATOR:Landroid/os/Parcelable$Creator;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 0
    .annotation build Landroidx/room/Ignore;
    .end annotation

    .line 358
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 394
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 395
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->appVersion:Ljava/lang/String;

    .line 396
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->subscript:Ljava/lang/String;

    .line 397
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->author:Ljava/lang/String;

    .line 398
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->icon:Ljava/lang/String;

    .line 399
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->downloadUrl:Ljava/lang/String;

    .line 400
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->actionUrl:Ljava/lang/String;

    .line 401
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->description:Ljava/lang/String;

    .line 402
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->updateTime:Ljava/lang/String;

    .line 403
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->title:Ljava/lang/String;

    .line 404
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->voiceDisposition:Ljava/lang/String;

    .line 405
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->bgPic:Ljava/lang/String;

    .line 406
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->apkVersion:Ljava/lang/String;

    .line 407
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->subTitle:Ljava/lang/String;

    .line 408
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->appId:Ljava/lang/String;

    .line 409
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->screenShot:Ljava/lang/String;

    .line 410
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->apkVersionCode:Ljava/lang/String;

    .line 411
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->packageName:Ljava/lang/String;

    .line 412
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->uninstallable:Ljava/lang/String;

    .line 413
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->isCollected:Ljava/lang/String;

    .line 414
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->businessType:Ljava/lang/String;

    .line 415
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->ttsGuide:Ljava/lang/String;

    .line 416
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->installSize:I

    .line 417
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->isOffline:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 2
    .param p14    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    move-object v0, p0

    .line 332
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 333
    iput-object v1, v0, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->appVersion:Ljava/lang/String;

    move-object v1, p2

    .line 334
    iput-object v1, v0, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->subscript:Ljava/lang/String;

    move-object v1, p3

    .line 335
    iput-object v1, v0, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->author:Ljava/lang/String;

    move-object v1, p4

    .line 336
    iput-object v1, v0, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->icon:Ljava/lang/String;

    move-object v1, p5

    .line 337
    iput-object v1, v0, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->downloadUrl:Ljava/lang/String;

    move-object v1, p6

    .line 338
    iput-object v1, v0, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->actionUrl:Ljava/lang/String;

    move-object v1, p7

    .line 339
    iput-object v1, v0, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->description:Ljava/lang/String;

    move-object v1, p8

    .line 340
    iput-object v1, v0, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->updateTime:Ljava/lang/String;

    move-object v1, p9

    .line 341
    iput-object v1, v0, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->title:Ljava/lang/String;

    move-object v1, p10

    .line 342
    iput-object v1, v0, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->voiceDisposition:Ljava/lang/String;

    move-object v1, p11

    .line 343
    iput-object v1, v0, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->bgPic:Ljava/lang/String;

    move-object v1, p12

    .line 344
    iput-object v1, v0, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->apkVersion:Ljava/lang/String;

    move-object v1, p13

    .line 345
    iput-object v1, v0, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->subTitle:Ljava/lang/String;

    move-object/from16 v1, p14

    .line 346
    iput-object v1, v0, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->appId:Ljava/lang/String;

    move-object/from16 v1, p15

    .line 347
    iput-object v1, v0, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->screenShot:Ljava/lang/String;

    move-object/from16 v1, p16

    .line 348
    iput-object v1, v0, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->apkVersionCode:Ljava/lang/String;

    move-object/from16 v1, p17

    .line 349
    iput-object v1, v0, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->packageName:Ljava/lang/String;

    move-object/from16 v1, p18

    .line 350
    iput-object v1, v0, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->uninstallable:Ljava/lang/String;

    move-object/from16 v1, p19

    .line 351
    iput-object v1, v0, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->isCollected:Ljava/lang/String;

    move-object/from16 v1, p20

    .line 352
    iput-object v1, v0, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->businessType:Ljava/lang/String;

    move-object/from16 v1, p21

    .line 353
    iput-object v1, v0, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->ttsGuide:Ljava/lang/String;

    move/from16 v1, p22

    .line 354
    iput v1, v0, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->installSize:I

    move-object/from16 v1, p23

    .line 355
    iput-object v1, v0, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->isOffline:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getActionUrl()Ljava/lang/String;
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->actionUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getApkVersion()Ljava/lang/String;
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->apkVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getApkVersionCode()Ljava/lang/String;
    .locals 1

    .line 222
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->apkVersionCode:Ljava/lang/String;

    return-object v0
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1

    .line 206
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->appId:Ljava/lang/String;

    return-object v0
.end method

.method public getAppVersion()Ljava/lang/String;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->appVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getApplicationId()Ljava/lang/String;
    .locals 1

    .line 286
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->applicationId:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthor()Ljava/lang/String;
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->author:Ljava/lang/String;

    return-object v0
.end method

.method public getBgPic()Ljava/lang/String;
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->bgPic:Ljava/lang/String;

    return-object v0
.end method

.method public getBusinessType()Ljava/lang/String;
    .locals 1

    .line 254
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->businessType:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getDownloadUrl()Ljava/lang/String;
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->downloadUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getIcon()Ljava/lang/String;
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->icon:Ljava/lang/String;

    return-object v0
.end method

.method public getInstallSize()Ljava/lang/Integer;
    .locals 1

    .line 274
    iget v0, p0, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->installSize:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getIsCollected()Ljava/lang/String;
    .locals 1

    .line 246
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->isCollected:Ljava/lang/String;

    return-object v0
.end method

.method public getIsOffline()Ljava/lang/String;
    .locals 1

    .line 278
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->isOffline:Ljava/lang/String;

    return-object v0
.end method

.method public getLogInfo()Ljava/lang/String;
    .locals 1

    .line 294
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->logInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 230
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPicUrl()Ljava/lang/String;
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->picUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getScreenShot()Ljava/lang/String;
    .locals 1

    .line 214
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->screenShot:Ljava/lang/String;

    return-object v0
.end method

.method public getSubTitle()Ljava/lang/String;
    .locals 1

    .line 198
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->subTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getSubscript()Ljava/lang/String;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->subscript:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getTtsGuide()Ljava/lang/String;
    .locals 1

    .line 262
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->ttsGuide:Ljava/lang/String;

    return-object v0
.end method

.method public getUninstallable()Ljava/lang/String;
    .locals 1

    .line 238
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->uninstallable:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdateTime()Ljava/lang/String;
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->updateTime:Ljava/lang/String;

    return-object v0
.end method

.method public getVoiceDisposition()Ljava/lang/String;
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->voiceDisposition:Ljava/lang/String;

    return-object v0
.end method

.method public setActionUrl(Ljava/lang/String;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->actionUrl:Ljava/lang/String;

    return-void
.end method

.method public setApkVersion(Ljava/lang/String;)V
    .locals 0

    .line 194
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->apkVersion:Ljava/lang/String;

    return-void
.end method

.method public setApkVersionCode(Ljava/lang/String;)V
    .locals 0

    .line 226
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->apkVersionCode:Ljava/lang/String;

    return-void
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 0

    .line 210
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->appId:Ljava/lang/String;

    return-void
.end method

.method public setAppVersion(Ljava/lang/String;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->appVersion:Ljava/lang/String;

    return-void
.end method

.method public setApplicationId(Ljava/lang/String;)V
    .locals 0

    .line 290
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->applicationId:Ljava/lang/String;

    return-void
.end method

.method public setAuthor(Ljava/lang/String;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->author:Ljava/lang/String;

    return-void
.end method

.method public setBgPic(Ljava/lang/String;)V
    .locals 0

    .line 186
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->bgPic:Ljava/lang/String;

    return-void
.end method

.method public setBusinessType(Ljava/lang/String;)V
    .locals 0

    .line 258
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->businessType:Ljava/lang/String;

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    .line 146
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->description:Ljava/lang/String;

    return-void
.end method

.method public setDownloadUrl(Ljava/lang/String;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->downloadUrl:Ljava/lang/String;

    return-void
.end method

.method public setIcon(Ljava/lang/String;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->icon:Ljava/lang/String;

    return-void
.end method

.method public setInstallSize(Ljava/lang/Integer;)V
    .locals 0

    .line 270
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->installSize:I

    return-void
.end method

.method public setIsCollected(Ljava/lang/String;)V
    .locals 0

    .line 250
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->isCollected:Ljava/lang/String;

    return-void
.end method

.method public setIsOffline(Ljava/lang/String;)V
    .locals 0

    .line 282
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->isOffline:Ljava/lang/String;

    return-void
.end method

.method public setLogInfo(Ljava/lang/String;)V
    .locals 0

    .line 298
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->logInfo:Ljava/lang/String;

    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0

    .line 234
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->packageName:Ljava/lang/String;

    return-void
.end method

.method public setPicUrl(Ljava/lang/String;)V
    .locals 0

    .line 182
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->picUrl:Ljava/lang/String;

    return-void
.end method

.method public setScreenShot(Ljava/lang/String;)V
    .locals 0

    .line 218
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->screenShot:Ljava/lang/String;

    return-void
.end method

.method public setSubTitle(Ljava/lang/String;)V
    .locals 0

    .line 202
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->subTitle:Ljava/lang/String;

    return-void
.end method

.method public setSubscript(Ljava/lang/String;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->subscript:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 162
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->title:Ljava/lang/String;

    return-void
.end method

.method public setTtsGuide(Ljava/lang/String;)V
    .locals 0

    .line 266
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->ttsGuide:Ljava/lang/String;

    return-void
.end method

.method public setUninstallable(Ljava/lang/String;)V
    .locals 0

    .line 242
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->uninstallable:Ljava/lang/String;

    return-void
.end method

.method public setUpdateTime(Ljava/lang/String;)V
    .locals 0

    .line 154
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->updateTime:Ljava/lang/String;

    return-void
.end method

.method public setVoiceDisposition(Ljava/lang/String;)V
    .locals 0

    .line 170
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->voiceDisposition:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 303
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MarketAppItemBean{appVersion=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->appVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", subscript=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->subscript:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", author=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->author:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", icon=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->icon:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", downloadUrl=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->downloadUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", actionUrl=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->actionUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", description=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->description:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", updateTime=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->updateTime:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", title=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->title:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", voiceDisposition=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->voiceDisposition:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", bgPic=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->bgPic:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", picUrl=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->picUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", applicationId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->applicationId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", apkVersion=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->apkVersion:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", subTitle=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->subTitle:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", appId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->appId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", screenShot=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->screenShot:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", apkVersionCode=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->apkVersionCode:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", packageName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", uninstallable=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->uninstallable:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", isCollected=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->isCollected:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", businessType=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->businessType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", ttsGuide=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->ttsGuide:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", installSize="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->installSize:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", isOffline=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->isOffline:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 369
    iget-object p2, p0, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->appVersion:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 370
    iget-object p2, p0, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->subscript:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 371
    iget-object p2, p0, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->author:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 372
    iget-object p2, p0, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->icon:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 373
    iget-object p2, p0, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->downloadUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 374
    iget-object p2, p0, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->actionUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 375
    iget-object p2, p0, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->description:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 376
    iget-object p2, p0, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->updateTime:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 377
    iget-object p2, p0, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->title:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 378
    iget-object p2, p0, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->voiceDisposition:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 379
    iget-object p2, p0, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->bgPic:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 380
    iget-object p2, p0, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->apkVersion:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 381
    iget-object p2, p0, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->subTitle:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 382
    iget-object p2, p0, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->appId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 383
    iget-object p2, p0, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->screenShot:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 384
    iget-object p2, p0, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->apkVersionCode:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 385
    iget-object p2, p0, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->packageName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 386
    iget-object p2, p0, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->uninstallable:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 387
    iget-object p2, p0, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->isCollected:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 388
    iget-object p2, p0, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->businessType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 389
    iget-object p2, p0, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->ttsGuide:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 390
    iget p2, p0, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->installSize:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 391
    iget-object p2, p0, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->isOffline:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
