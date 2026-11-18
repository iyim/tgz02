.class public Lcom/alibaba/ailabs/appbox/bean/DefaultAppBean;
.super Ljava/lang/Object;
.source "DefaultAppBean.java"


# instance fields
.field public actionType:Ljava/lang/String;

.field public actionValue:Ljava/lang/String;

.field public appCenterIcon:Ljava/lang/String;

.field public channelHighlightIcon:Ljava/lang/String;

.field public channelIcon:Ljava/lang/String;

.field public menuBusinessType:Ljava/lang/String;

.field public menuDynamicIconMd5:Ljava/lang/String;

.field public menuDynamicIconOssUrl:Ljava/lang/String;

.field public menuIcon:Ljava/lang/String;

.field public menuId:Ljava/lang/String;

.field public menuName:Ljava/lang/String;

.field public menuType:Ljava/lang/String;

.field public optStatsId:Ljava/lang/String;

.field public subTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private equalsStr(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 69
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 72
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
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 54
    :cond_1
    instance-of v2, p1, Lcom/alibaba/ailabs/appbox/bean/DefaultAppBean;

    if-eqz v2, :cond_2

    .line 55
    nop

    nop

    .line 57
    iget-object v2, p0, Lcom/alibaba/ailabs/appbox/bean/DefaultAppBean;->actionValue:Ljava/lang/String;

    iget-object p1, p1, Lcom/alibaba/ailabs/appbox/bean/DefaultAppBean;->actionValue:Ljava/lang/String;

    invoke-direct {p0, v2, p1}, Lcom/alibaba/ailabs/appbox/bean/DefaultAppBean;->equalsStr(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 82
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/bean/DefaultAppBean;->actionValue:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x20f

    .line 83
    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/bean/DefaultAppBean;->actionValue:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    const/16 v0, 0x11

    :goto_0
    return v0
.end method
