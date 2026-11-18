.class public Lcom/alibaba/ailabs/basedomain/model/encyclopedia/VideoList;
.super Ljava/lang/Object;
.source "VideoList.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/basedomain/model/encyclopedia/VideoList$VideoListItem;
    }
.end annotation


# static fields
.field public static TAG:Ljava/lang/String;


# instance fields
.field private mOriginData:Ljava/lang/String;

.field private mVideoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/alibaba/ailabs/basedomain/model/encyclopedia/VideoList$VideoListItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    sget-object v0, Lcom/alibaba/ailabs/basedomain/model/encyclopedia/EncyclopediaData;->TAG:Ljava/lang/String;

    sput-object v0, Lcom/alibaba/ailabs/basedomain/model/encyclopedia/VideoList;->TAG:Ljava/lang/String;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 5

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/encyclopedia/VideoList;->mVideoList:Ljava/util/ArrayList;

    .line 26
    iput-object p1, p0, Lcom/alibaba/ailabs/basedomain/model/encyclopedia/VideoList;->mOriginData:Ljava/lang/String;

    .line 28
    :try_start_0
    new-instance p1, Lorg/json/JSONArray;

    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/encyclopedia/VideoList;->mOriginData:Ljava/lang/String;

    invoke-direct {p1, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 29
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 31
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    .line 32
    iget-object v3, p0, Lcom/alibaba/ailabs/basedomain/model/encyclopedia/VideoList;->mVideoList:Ljava/util/ArrayList;

    new-instance v4, Lcom/alibaba/ailabs/basedomain/model/encyclopedia/VideoList$VideoListItem;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, p0, v2}, Lcom/alibaba/ailabs/basedomain/model/encyclopedia/VideoList$VideoListItem;-><init>(Lcom/alibaba/ailabs/basedomain/model/encyclopedia/VideoList;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 35
    sget-object v0, Lcom/alibaba/ailabs/basedomain/model/encyclopedia/VideoList;->TAG:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v0, v1, p1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public get(I)Lcom/alibaba/ailabs/basedomain/model/encyclopedia/VideoList$VideoListItem;
    .locals 3

    .line 46
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/encyclopedia/VideoList;->mVideoList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/basedomain/model/encyclopedia/VideoList$VideoListItem;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 48
    :catch_0
    sget-object v0, Lcom/alibaba/ailabs/basedomain/model/encyclopedia/VideoList;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ". get err, index:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public size()I
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/encyclopedia/VideoList;->mVideoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
