.class public Lcom/alibaba/ailabs/genie/adv/huichuan/repository/AdRequestInfo;
.super Ljava/lang/Object;
.source "AdRequestInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/adv/huichuan/repository/AdRequestInfo$AdPosInfo;,
        Lcom/alibaba/ailabs/genie/adv/huichuan/repository/AdRequestInfo$AdAppInfo;,
        Lcom/alibaba/ailabs/genie/adv/huichuan/repository/AdRequestInfo$AdDeviceInfo;
    }
.end annotation


# instance fields
.field private adAppInfo:Lcom/alibaba/ailabs/genie/adv/huichuan/repository/AdRequestInfo$AdAppInfo;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "ad_app_info"
    .end annotation
.end field

.field private adDeviceInfo:Lcom/alibaba/ailabs/genie/adv/huichuan/repository/AdRequestInfo$AdDeviceInfo;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "ad_device_info"
    .end annotation
.end field

.field private adPosInfoList:Ljava/util/List;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "ad_pos_info"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/adv/huichuan/repository/AdRequestInfo$AdPosInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private toJson()Ljava/lang/String;
    .locals 1

    .line 46
    invoke-static {p0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAdAppInfo()Lcom/alibaba/ailabs/genie/adv/huichuan/repository/AdRequestInfo$AdAppInfo;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/adv/huichuan/repository/AdRequestInfo;->adAppInfo:Lcom/alibaba/ailabs/genie/adv/huichuan/repository/AdRequestInfo$AdAppInfo;

    return-object v0
.end method

.method public getAdDeviceInfo()Lcom/alibaba/ailabs/genie/adv/huichuan/repository/AdRequestInfo$AdDeviceInfo;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/adv/huichuan/repository/AdRequestInfo;->adDeviceInfo:Lcom/alibaba/ailabs/genie/adv/huichuan/repository/AdRequestInfo$AdDeviceInfo;

    return-object v0
.end method

.method public getAdPosInfoList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/adv/huichuan/repository/AdRequestInfo$AdPosInfo;",
            ">;"
        }
    .end annotation

    .line 38
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/adv/huichuan/repository/AdRequestInfo;->adPosInfoList:Ljava/util/List;

    return-object v0
.end method

.method public setAdAppInfo(Lcom/alibaba/ailabs/genie/adv/huichuan/repository/AdRequestInfo$AdAppInfo;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/adv/huichuan/repository/AdRequestInfo;->adAppInfo:Lcom/alibaba/ailabs/genie/adv/huichuan/repository/AdRequestInfo$AdAppInfo;

    return-void
.end method

.method public setAdDeviceInfo(Lcom/alibaba/ailabs/genie/adv/huichuan/repository/AdRequestInfo$AdDeviceInfo;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/adv/huichuan/repository/AdRequestInfo;->adDeviceInfo:Lcom/alibaba/ailabs/genie/adv/huichuan/repository/AdRequestInfo$AdDeviceInfo;

    return-void
.end method

.method public setAdPosInfoList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/adv/huichuan/repository/AdRequestInfo$AdPosInfo;",
            ">;)V"
        }
    .end annotation

    .line 42
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/adv/huichuan/repository/AdRequestInfo;->adPosInfoList:Ljava/util/List;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 51
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/adv/huichuan/repository/AdRequestInfo;->toJson()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
