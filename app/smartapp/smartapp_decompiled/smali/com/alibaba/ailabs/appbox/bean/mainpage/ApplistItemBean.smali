.class public Lcom/alibaba/ailabs/appbox/bean/mainpage/ApplistItemBean;
.super Ljava/lang/Object;
.source "ApplistItemBean.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field static final serialVersionUID:J = -0x3b4aa9f5589f131L


# instance fields
.field public actionUrl:Ljava/lang/String;

.field public apkName:Ljava/lang/String;

.field public apkVersion:Ljava/lang/String;

.field public apkVersionCode:Ljava/lang/Integer;

.field public appId:Ljava/lang/String;

.field public appVersion:Ljava/lang/String;

.field public author:Ljava/lang/String;

.field public businessType:Ljava/lang/String;

.field public defaultAppBean:Lcom/alibaba/ailabs/appbox/bean/DefaultAppBean;

.field public description:Ljava/lang/String;

.field public downloadUrl:Ljava/lang/String;

.field public icon:Ljava/lang/String;

.field public packageInfo:Landroid/content/pm/PackageInfo;

.field public packageName:Ljava/lang/String;

.field public screenShot:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public subTitle:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public updateTime:Ljava/lang/String;

.field public voiceDisposition:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private equalsStr(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 141
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 144
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    return v1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 166
    :cond_1
    instance-of v2, p1, Lcom/alibaba/ailabs/appbox/bean/mainpage/ApplistItemBean;

    if-eqz v2, :cond_4

    .line 167
    nop

    nop

    .line 169
    iget-object v2, p0, Lcom/alibaba/ailabs/appbox/bean/mainpage/ApplistItemBean;->appId:Ljava/lang/String;

    iget-object v3, p1, Lcom/alibaba/ailabs/appbox/bean/mainpage/ApplistItemBean;->appId:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcom/alibaba/ailabs/appbox/bean/mainpage/ApplistItemBean;->equalsStr(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    return v0

    .line 172
    :cond_2
    iget-object v2, p0, Lcom/alibaba/ailabs/appbox/bean/mainpage/ApplistItemBean;->packageName:Ljava/lang/String;

    iget-object v3, p1, Lcom/alibaba/ailabs/appbox/bean/mainpage/ApplistItemBean;->packageName:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcom/alibaba/ailabs/appbox/bean/mainpage/ApplistItemBean;->equalsStr(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    return v0

    .line 175
    :cond_3
    iget-object v2, p0, Lcom/alibaba/ailabs/appbox/bean/mainpage/ApplistItemBean;->defaultAppBean:Lcom/alibaba/ailabs/appbox/bean/DefaultAppBean;

    if-eqz v2, :cond_4

    iget-object p1, p1, Lcom/alibaba/ailabs/appbox/bean/mainpage/ApplistItemBean;->defaultAppBean:Lcom/alibaba/ailabs/appbox/bean/DefaultAppBean;

    if-eqz p1, :cond_4

    .line 176
    invoke-virtual {v2, p1}, Lcom/alibaba/ailabs/appbox/bean/DefaultAppBean;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    return v0

    :cond_4
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 188
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/bean/mainpage/ApplistItemBean;->appId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v1, 0x20f

    if-nez v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/bean/mainpage/ApplistItemBean;->appId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    add-int/2addr v1, v0

    goto :goto_1

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/bean/mainpage/ApplistItemBean;->packageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 191
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/bean/mainpage/ApplistItemBean;->packageName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    .line 192
    :cond_1
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/bean/mainpage/ApplistItemBean;->defaultAppBean:Lcom/alibaba/ailabs/appbox/bean/DefaultAppBean;

    if-eqz v0, :cond_2

    .line 193
    invoke-virtual {v0}, Lcom/alibaba/ailabs/appbox/bean/DefaultAppBean;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_2
    const/16 v1, 0x11

    :goto_1
    return v1
.end method

.method public isApkAlreadyUninstall()Z
    .locals 2

    .line 211
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/bean/mainpage/ApplistItemBean;->businessType:Ljava/lang/String;

    const-string v1, "apk"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/bean/mainpage/ApplistItemBean;->packageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/alibaba/ailabs/appbox/BoxApplication;->getInstance()Landroid/app/Application;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/bean/mainpage/ApplistItemBean;->packageName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/appbox/utils/AppUtil;->checkApkExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 200
    invoke-static {p0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
