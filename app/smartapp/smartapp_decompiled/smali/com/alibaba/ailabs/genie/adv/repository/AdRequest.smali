.class public Lcom/alibaba/ailabs/genie/adv/repository/AdRequest;
.super Ljava/lang/Object;
.source "AdRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/adv/repository/AdRequest$UserInfo;,
        Lcom/alibaba/ailabs/genie/adv/repository/AdRequest$DeviceInfo;,
        Lcom/alibaba/ailabs/genie/adv/repository/AdRequest$AppInfo;,
        Lcom/alibaba/ailabs/genie/adv/repository/AdRequest$Imp;
    }
.end annotation


# instance fields
.field private appInfo:Lcom/alibaba/ailabs/genie/adv/repository/AdRequest$AppInfo;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "app"
    .end annotation
.end field

.field private authInfo:Ljava/lang/String;

.field private deviceInfo:Lcom/alibaba/ailabs/genie/adv/repository/AdRequest$DeviceInfo;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "device"
    .end annotation
.end field

.field private id:Ljava/lang/String;

.field private impList:Ljava/util/List;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "imp"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/adv/repository/AdRequest$Imp;",
            ">;"
        }
    .end annotation
.end field

.field private userInfo:Lcom/alibaba/ailabs/genie/adv/repository/AdRequest$UserInfo;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "user"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private toJson()Ljava/lang/String;
    .locals 1

    .line 262
    invoke-static {p0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAppInfo()Lcom/alibaba/ailabs/genie/adv/repository/AdRequest$AppInfo;
    .locals 1

    .line 287
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/adv/repository/AdRequest;->appInfo:Lcom/alibaba/ailabs/genie/adv/repository/AdRequest$AppInfo;

    return-object v0
.end method

.method public getAuthInfo()Ljava/lang/String;
    .locals 1

    .line 311
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/adv/repository/AdRequest;->authInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceInfo()Lcom/alibaba/ailabs/genie/adv/repository/AdRequest$DeviceInfo;
    .locals 1

    .line 295
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/adv/repository/AdRequest;->deviceInfo:Lcom/alibaba/ailabs/genie/adv/repository/AdRequest$DeviceInfo;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 271
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/adv/repository/AdRequest;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getImpList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/adv/repository/AdRequest$Imp;",
            ">;"
        }
    .end annotation

    .line 279
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/adv/repository/AdRequest;->impList:Ljava/util/List;

    return-object v0
.end method

.method public getUserInfo()Lcom/alibaba/ailabs/genie/adv/repository/AdRequest$UserInfo;
    .locals 1

    .line 303
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/adv/repository/AdRequest;->userInfo:Lcom/alibaba/ailabs/genie/adv/repository/AdRequest$UserInfo;

    return-object v0
.end method

.method public setAppInfo(Lcom/alibaba/ailabs/genie/adv/repository/AdRequest$AppInfo;)V
    .locals 0

    .line 291
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/adv/repository/AdRequest;->appInfo:Lcom/alibaba/ailabs/genie/adv/repository/AdRequest$AppInfo;

    return-void
.end method

.method public setAuthInfo(Ljava/lang/String;)V
    .locals 0

    .line 315
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/adv/repository/AdRequest;->authInfo:Ljava/lang/String;

    return-void
.end method

.method public setDeviceInfo(Lcom/alibaba/ailabs/genie/adv/repository/AdRequest$DeviceInfo;)V
    .locals 0

    .line 299
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/adv/repository/AdRequest;->deviceInfo:Lcom/alibaba/ailabs/genie/adv/repository/AdRequest$DeviceInfo;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 275
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/adv/repository/AdRequest;->id:Ljava/lang/String;

    return-void
.end method

.method public setImpList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/adv/repository/AdRequest$Imp;",
            ">;)V"
        }
    .end annotation

    .line 283
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/adv/repository/AdRequest;->impList:Ljava/util/List;

    return-void
.end method

.method public setUserInfo(Lcom/alibaba/ailabs/genie/adv/repository/AdRequest$UserInfo;)V
    .locals 0

    .line 307
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/adv/repository/AdRequest;->userInfo:Lcom/alibaba/ailabs/genie/adv/repository/AdRequest$UserInfo;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 267
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/adv/repository/AdRequest;->toJson()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
