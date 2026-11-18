.class public Lcom/alibaba/ailabs/appbox/bean/db/ApplistInfoBean;
.super Ljava/lang/Object;
.source "ApplistInfoBean.java"


# annotations
.annotation build Landroidx/room/Entity;
    tableName = "applistinfo"
.end annotation


# instance fields
.field private appid:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/room/PrimaryKey;
    .end annotation
.end field

.field private desc1:Ljava/lang/String;

.field private iconUrl:Ljava/lang/String;

.field private ttsInfo:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 61
    instance-of v0, p1, Lcom/alibaba/ailabs/appbox/bean/db/ApplistSortBean;

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/bean/db/ApplistInfoBean;->appid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/bean/db/ApplistInfoBean;->appid:Ljava/lang/String;

    nop

    nop

    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/bean/db/ApplistSortBean;->getAppid()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 66
    :cond_0
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getAppid()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 28
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/bean/db/ApplistInfoBean;->appid:Ljava/lang/String;

    return-object v0
.end method

.method public getDesc1()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/bean/db/ApplistInfoBean;->desc1:Ljava/lang/String;

    return-object v0
.end method

.method public getIconUrl()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/bean/db/ApplistInfoBean;->iconUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getTtsInfo()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/bean/db/ApplistInfoBean;->ttsInfo:Ljava/lang/String;

    return-object v0
.end method

.method public setAppid(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 32
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/bean/db/ApplistInfoBean;->appid:Ljava/lang/String;

    return-void
.end method

.method public setDesc1(Ljava/lang/String;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/bean/db/ApplistInfoBean;->desc1:Ljava/lang/String;

    return-void
.end method

.method public setIconUrl(Ljava/lang/String;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/bean/db/ApplistInfoBean;->iconUrl:Ljava/lang/String;

    return-void
.end method

.method public setTtsInfo(Ljava/lang/String;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/bean/db/ApplistInfoBean;->ttsInfo:Ljava/lang/String;

    return-void
.end method
