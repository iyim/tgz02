.class public Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/MusicList;
.super Ljava/lang/Object;
.source "MusicList.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/MusicList$MusicListItem;
    }
.end annotation


# instance fields
.field public final TAG:Ljava/lang/String;

.field private mMusicList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/MusicList$MusicListItem;",
            ">;"
        }
    .end annotation
.end field

.field private mOriginData:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/MusicList;->TAG:Ljava/lang/String;

    .line 25
    iput-object p1, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/MusicList;->mOriginData:Ljava/lang/String;

    .line 26
    invoke-direct {p0}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/MusicList;->parse()V

    return-void
.end method

.method private parse()V
    .locals 6

    .line 48
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/MusicList;->mMusicList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/MusicList;->mMusicList:Ljava/util/ArrayList;

    .line 52
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/MusicList;->mOriginData:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 53
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 55
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONObject;

    .line 56
    iget-object v4, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/MusicList;->mMusicList:Ljava/util/ArrayList;

    new-instance v5, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/MusicList$MusicListItem;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, p0, v3}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/MusicList$MusicListItem;-><init>(Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/MusicList;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 59
    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/MusicList;->TAG:Ljava/lang/String;

    const-string v2, "MusicList parse err"

    invoke-static {v1, v2, v0}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public get(I)Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/MusicList$MusicListItem;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/MusicList;->mMusicList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 39
    invoke-direct {p0}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/MusicList;->parse()V

    :cond_0
    if-ltz p1, :cond_1

    .line 41
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/MusicList;->mMusicList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 42
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/MusicList;->mMusicList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/MusicList$MusicListItem;

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getSwapedJsonList(Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/MusicList$MusicListItem;)Lorg/json/JSONArray;
    .locals 3

    .line 64
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/MusicList;->mMusicList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/MusicList;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSwapedJsonList but musiclist is empty, item:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 68
    :goto_0
    iget-object v2, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/MusicList;->mMusicList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 69
    iget-object v2, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/MusicList;->mMusicList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/MusicList$MusicListItem;

    invoke-virtual {v2, p1}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/MusicList$MusicListItem;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 70
    iget-object v2, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/MusicList;->mMusicList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 74
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/MusicList;->mMusicList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 75
    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    .line 76
    :goto_2
    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/MusicList;->mMusicList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 78
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/MusicList;->mMusicList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/MusicList$MusicListItem;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/MusicList$MusicListItem;->getJSON()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 80
    :catch_0
    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/MusicList;->TAG:Ljava/lang/String;

    const-string v2, "MusicList  getSwapedJsonList parse err"

    invoke-static {v1, v2}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    return-object p1
.end method

.method public size()I
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/MusicList;->mMusicList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 31
    invoke-direct {p0}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/MusicList;->parse()V

    const/4 v0, 0x0

    return v0

    .line 34
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MusicList{mOriginData=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/MusicList;->mOriginData:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", mMusicList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/MusicList;->mMusicList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
