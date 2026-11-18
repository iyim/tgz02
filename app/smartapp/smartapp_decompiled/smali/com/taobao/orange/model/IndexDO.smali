.class public Lcom/taobao/orange/model/IndexDO;
.super Ljava/lang/Object;
.source "IndexDO.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lcom/taobao/orange/model/CheckDO;


# static fields
.field private static final TAG:Ljava/lang/String; = "IndexDO"


# instance fields
.field public appIndexVersion:Ljava/lang/String;

.field public appKey:Ljava/lang/String;

.field public appVersion:Ljava/lang/String;

.field public cdn:Ljava/lang/String;

.field public createTime:Ljava/lang/String;

.field public id:Ljava/lang/String;

.field public md5:Ljava/lang/String;

.field public mergedNamespaces:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/taobao/orange/model/NameSpaceDO;",
            ">;"
        }
    .end annotation
.end field

.field public protocol:Ljava/lang/String;

.field public version:Ljava/lang/String;

.field public versionIndexVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/taobao/orange/model/IndexDO;->mergedNamespaces:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/taobao/orange/model/IndexDO;)V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/taobao/orange/model/IndexDO;->mergedNamespaces:Ljava/util/List;

    .line 31
    iget-object v0, p1, Lcom/taobao/orange/model/IndexDO;->appKey:Ljava/lang/String;

    iput-object v0, p0, Lcom/taobao/orange/model/IndexDO;->appKey:Ljava/lang/String;

    .line 32
    iget-object v0, p1, Lcom/taobao/orange/model/IndexDO;->appVersion:Ljava/lang/String;

    iput-object v0, p0, Lcom/taobao/orange/model/IndexDO;->appVersion:Ljava/lang/String;

    .line 33
    iget-object v0, p1, Lcom/taobao/orange/model/IndexDO;->appIndexVersion:Ljava/lang/String;

    iput-object v0, p0, Lcom/taobao/orange/model/IndexDO;->appIndexVersion:Ljava/lang/String;

    .line 34
    iget-object v0, p1, Lcom/taobao/orange/model/IndexDO;->versionIndexVersion:Ljava/lang/String;

    iput-object v0, p0, Lcom/taobao/orange/model/IndexDO;->versionIndexVersion:Ljava/lang/String;

    .line 35
    iget-object v0, p1, Lcom/taobao/orange/model/IndexDO;->createTime:Ljava/lang/String;

    iput-object v0, p0, Lcom/taobao/orange/model/IndexDO;->createTime:Ljava/lang/String;

    .line 36
    iget-object v0, p1, Lcom/taobao/orange/model/IndexDO;->id:Ljava/lang/String;

    iput-object v0, p0, Lcom/taobao/orange/model/IndexDO;->id:Ljava/lang/String;

    .line 37
    iget-object v0, p1, Lcom/taobao/orange/model/IndexDO;->cdn:Ljava/lang/String;

    iput-object v0, p0, Lcom/taobao/orange/model/IndexDO;->cdn:Ljava/lang/String;

    .line 38
    iget-object v0, p1, Lcom/taobao/orange/model/IndexDO;->version:Ljava/lang/String;

    iput-object v0, p0, Lcom/taobao/orange/model/IndexDO;->version:Ljava/lang/String;

    .line 39
    iget-object v0, p0, Lcom/taobao/orange/model/IndexDO;->mergedNamespaces:Ljava/util/List;

    iget-object p1, p1, Lcom/taobao/orange/model/IndexDO;->mergedNamespaces:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method


# virtual methods
.method public checkValid()Z
    .locals 4

    .line 44
    iget-object v0, p0, Lcom/taobao/orange/model/IndexDO;->appKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "IndexDO"

    const/4 v2, 0x0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/taobao/orange/model/IndexDO;->appVersion:Ljava/lang/String;

    .line 45
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/taobao/orange/model/IndexDO;->appIndexVersion:Ljava/lang/String;

    .line 46
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/taobao/orange/model/IndexDO;->versionIndexVersion:Ljava/lang/String;

    .line 47
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/taobao/orange/model/IndexDO;->id:Ljava/lang/String;

    .line 48
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/taobao/orange/model/IndexDO;->cdn:Ljava/lang/String;

    .line 49
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/taobao/orange/model/IndexDO;->version:Ljava/lang/String;

    .line 50
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/taobao/orange/model/IndexDO;->mergedNamespaces:Ljava/util/List;

    if-eqz v0, :cond_4

    .line 52
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/taobao/orange/model/IndexDO;->appVersion:Ljava/lang/String;

    const-string v3, "*"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/taobao/orange/model/IndexDO;->appVersion:Ljava/lang/String;

    sget-object v3, Lcom/taobao/orange/GlobalOrange;->appVersion:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/taobao/orange/model/IndexDO;->appKey:Ljava/lang/String;

    sget-object v3, Lcom/taobao/orange/GlobalOrange;->appKey:Ljava/lang/String;

    .line 57
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_3

    .line 59
    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "invaild"

    invoke-static {v1, v3, v2}, Lcom/taobao/orange/util/OLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    return v0

    .line 53
    :cond_4
    :goto_1
    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "lack param"

    invoke-static {v1, v3, v0}, Lcom/taobao/orange/util/OLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v2
.end method
