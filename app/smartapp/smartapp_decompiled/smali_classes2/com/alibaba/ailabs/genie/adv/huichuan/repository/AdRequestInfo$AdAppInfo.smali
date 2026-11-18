.class public Lcom/alibaba/ailabs/genie/adv/huichuan/repository/AdRequestInfo$AdAppInfo;
.super Ljava/lang/Object;
.source "AdRequestInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/adv/huichuan/repository/AdRequestInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AdAppInfo"
.end annotation


# instance fields
.field private app_country:Ljava/lang/String;

.field private app_name:Ljava/lang/String;

.field private fr:Ljava/lang/String;

.field private pkg_name:Ljava/lang/String;

.field private pkg_ver:Ljava/lang/String;

.field private ua:Ljava/lang/String;

.field private utdid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private toJson()Ljava/lang/String;
    .locals 1

    .line 240
    invoke-static {p0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getApp_country()Ljava/lang/String;
    .locals 1

    .line 232
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/adv/huichuan/repository/AdRequestInfo$AdAppInfo;->app_country:Ljava/lang/String;

    return-object v0
.end method

.method public getApp_name()Ljava/lang/String;
    .locals 1

    .line 216
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/adv/huichuan/repository/AdRequestInfo$AdAppInfo;->app_name:Ljava/lang/String;

    return-object v0
.end method

.method public getFr()Ljava/lang/String;
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/adv/huichuan/repository/AdRequestInfo$AdAppInfo;->fr:Ljava/lang/String;

    return-object v0
.end method

.method public getPkg_name()Ljava/lang/String;
    .locals 1

    .line 200
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/adv/huichuan/repository/AdRequestInfo$AdAppInfo;->pkg_name:Ljava/lang/String;

    return-object v0
.end method

.method public getPkg_ver()Ljava/lang/String;
    .locals 1

    .line 208
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/adv/huichuan/repository/AdRequestInfo$AdAppInfo;->pkg_ver:Ljava/lang/String;

    return-object v0
.end method

.method public getUa()Ljava/lang/String;
    .locals 1

    .line 224
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/adv/huichuan/repository/AdRequestInfo$AdAppInfo;->ua:Ljava/lang/String;

    return-object v0
.end method

.method public getUtdid()Ljava/lang/String;
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/adv/huichuan/repository/AdRequestInfo$AdAppInfo;->utdid:Ljava/lang/String;

    return-object v0
.end method

.method public setApp_country(Ljava/lang/String;)V
    .locals 0

    .line 236
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/adv/huichuan/repository/AdRequestInfo$AdAppInfo;->app_country:Ljava/lang/String;

    return-void
.end method

.method public setApp_name(Ljava/lang/String;)V
    .locals 0

    .line 220
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/adv/huichuan/repository/AdRequestInfo$AdAppInfo;->app_name:Ljava/lang/String;

    return-void
.end method

.method public setFr(Ljava/lang/String;)V
    .locals 0

    .line 188
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/adv/huichuan/repository/AdRequestInfo$AdAppInfo;->fr:Ljava/lang/String;

    return-void
.end method

.method public setPkg_name(Ljava/lang/String;)V
    .locals 0

    .line 204
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/adv/huichuan/repository/AdRequestInfo$AdAppInfo;->pkg_name:Ljava/lang/String;

    return-void
.end method

.method public setPkg_ver(Ljava/lang/String;)V
    .locals 0

    .line 212
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/adv/huichuan/repository/AdRequestInfo$AdAppInfo;->pkg_ver:Ljava/lang/String;

    return-void
.end method

.method public setUa(Ljava/lang/String;)V
    .locals 0

    .line 228
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/adv/huichuan/repository/AdRequestInfo$AdAppInfo;->ua:Ljava/lang/String;

    return-void
.end method

.method public setUtdid(Ljava/lang/String;)V
    .locals 0

    .line 196
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/adv/huichuan/repository/AdRequestInfo$AdAppInfo;->utdid:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 245
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/adv/huichuan/repository/AdRequestInfo$AdAppInfo;->toJson()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
