.class public Lcom/alibaba/ailabs/basedomain/model/encyclopedia/EncyclopediaData;
.super Ljava/lang/Object;
.source "EncyclopediaData.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static TAG:Ljava/lang/String; = "encyclopedia"


# instance fields
.field private isFallback:Ljava/lang/Boolean;

.field private mImageUrlList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMusicList:Lcom/alibaba/ailabs/basedomain/model/encyclopedia/MusicList;

.field private mOriginJson:Ljava/lang/String;

.field private mPerson:Ljava/lang/String;

.field private mTemplate:Ljava/lang/String;

.field private mText:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;

.field private mVideoList:Lcom/alibaba/ailabs/basedomain/model/encyclopedia/VideoList;

.field private sessionId:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/encyclopedia/EncyclopediaData;->mImageUrlList:Ljava/util/ArrayList;

    .line 35
    iput-object p1, p0, Lcom/alibaba/ailabs/basedomain/model/encyclopedia/EncyclopediaData;->mOriginJson:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getImageUrlList()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 104
    sget-object v0, Lcom/alibaba/ailabs/basedomain/model/encyclopedia/EncyclopediaData;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getImageUrlList imageUrlListStr3:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/basedomain/model/encyclopedia/EncyclopediaData;->mOriginJson:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/encyclopedia/EncyclopediaData;->mOriginJson:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/encyclopedia/EncyclopediaData;->mOriginJson:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/encyclopedia/EncyclopediaData;->mImageUrlList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 112
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/encyclopedia/EncyclopediaData;->mOriginJson:Ljava/lang/String;

    const-string v1, "images"

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/basedomain/common/JSONUtil;->parse(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 113
    sget-object v1, Lcom/alibaba/ailabs/basedomain/model/encyclopedia/EncyclopediaData;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getImageUrlList imageUrlListStr:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 118
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 119
    iget-object v2, p0, Lcom/alibaba/ailabs/basedomain/model/encyclopedia/EncyclopediaData;->mImageUrlList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONObject;

    const-string v4, "url"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 122
    sget-object v1, Lcom/alibaba/ailabs/basedomain/model/encyclopedia/EncyclopediaData;->TAG:Ljava/lang/String;

    const-string v2, "Parse Exception"

    invoke-static {v1, v2, v0}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 125
    :cond_1
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/encyclopedia/EncyclopediaData;->mImageUrlList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getMusicList()Lcom/alibaba/ailabs/basedomain/model/encyclopedia/MusicList;
    .locals 3

    .line 176
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/encyclopedia/EncyclopediaData;->mOriginJson:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/model/encyclopedia/EncyclopediaData;->mMusicList:Lcom/alibaba/ailabs/basedomain/model/encyclopedia/MusicList;

    if-nez v1, :cond_0

    .line 178
    :try_start_0
    new-instance v1, Lcom/alibaba/ailabs/basedomain/model/encyclopedia/MusicList;

    const-string v2, "audios"

    invoke-static {v0, v2}, Lcom/alibaba/ailabs/basedomain/common/JSONUtil;->parse(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/alibaba/ailabs/basedomain/model/encyclopedia/MusicList;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/alibaba/ailabs/basedomain/model/encyclopedia/EncyclopediaData;->mMusicList:Lcom/alibaba/ailabs/basedomain/model/encyclopedia/MusicList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 180
    sget-object v1, Lcom/alibaba/ailabs/basedomain/model/encyclopedia/EncyclopediaData;->TAG:Ljava/lang/String;

    const-string v2, "Parse Exception"

    invoke-static {v1, v2, v0}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 183
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/encyclopedia/EncyclopediaData;->mMusicList:Lcom/alibaba/ailabs/basedomain/model/encyclopedia/MusicList;

    return-object v0
.end method

.method public getMusicName(I)Ljava/lang/String;
    .locals 3

    .line 162
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/encyclopedia/EncyclopediaData;->mOriginJson:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/model/encyclopedia/EncyclopediaData;->mMusicList:Lcom/alibaba/ailabs/basedomain/model/encyclopedia/MusicList;

    if-nez v1, :cond_0

    .line 164
    :try_start_0
    new-instance v1, Lcom/alibaba/ailabs/basedomain/model/encyclopedia/MusicList;

    const-string v2, "audios"

    invoke-static {v0, v2}, Lcom/alibaba/ailabs/basedomain/common/JSONUtil;->parse(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/alibaba/ailabs/basedomain/model/encyclopedia/MusicList;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/alibaba/ailabs/basedomain/model/encyclopedia/EncyclopediaData;->mMusicList:Lcom/alibaba/ailabs/basedomain/model/encyclopedia/MusicList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 166
    sget-object v1, Lcom/alibaba/ailabs/basedomain/model/encyclopedia/EncyclopediaData;->TAG:Ljava/lang/String;

    const-string v2, "Parse Exception"

    invoke-static {v1, v2, v0}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 169
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/encyclopedia/EncyclopediaData;->mMusicList:Lcom/alibaba/ailabs/basedomain/model/encyclopedia/MusicList;

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/basedomain/model/encyclopedia/MusicList;->get(I)Lcom/alibaba/ailabs/basedomain/model/encyclopedia/MusicList$MusicListItem;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 170
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/encyclopedia/EncyclopediaData;->mMusicList:Lcom/alibaba/ailabs/basedomain/model/encyclopedia/MusicList;

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/basedomain/model/encyclopedia/MusicList;->get(I)Lcom/alibaba/ailabs/basedomain/model/encyclopedia/MusicList$MusicListItem;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/basedomain/model/encyclopedia/MusicList$MusicListItem;->getame()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getPerson()Ljava/lang/String;
    .locals 3

    .line 58
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/encyclopedia/EncyclopediaData;->mOriginJson:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/model/encyclopedia/EncyclopediaData;->mPerson:Ljava/lang/String;

    if-nez v1, :cond_0

    :try_start_0
    const-string v1, "person"

    .line 60
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/basedomain/common/JSONUtil;->parse(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/encyclopedia/EncyclopediaData;->mPerson:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 62
    sget-object v1, Lcom/alibaba/ailabs/basedomain/model/encyclopedia/EncyclopediaData;->TAG:Ljava/lang/String;

    const-string v2, "Parse Exception"

    invoke-static {v1, v2, v0}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 65
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/encyclopedia/EncyclopediaData;->mPerson:Ljava/lang/String;

    return-object v0
.end method

.method public getPersonPhotoUrl()Ljava/lang/String;
    .locals 2

    .line 134
    invoke-virtual {p0}, Lcom/alibaba/ailabs/basedomain/model/encyclopedia/EncyclopediaData;->getImageUrlList()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 136
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    .line 137
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSessionId()I
    .locals 1

    .line 43
    iget v0, p0, Lcom/alibaba/ailabs/basedomain/model/encyclopedia/EncyclopediaData;->sessionId:I

    return v0
.end method

.method public getTemplate()Ljava/lang/String;
    .locals 3

    .line 47
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/encyclopedia/EncyclopediaData;->mOriginJson:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/model/encyclopedia/EncyclopediaData;->mTemplate:Ljava/lang/String;

    if-nez v1, :cond_0

    :try_start_0
    const-string v1, "template"

    .line 49
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/basedomain/common/JSONUtil;->parse(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/encyclopedia/EncyclopediaData;->mTemplate:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 51
    sget-object v1, Lcom/alibaba/ailabs/basedomain/model/encyclopedia/EncyclopediaData;->TAG:Ljava/lang/String;

    const-string v2, "Parse Exception"

    invoke-static {v1, v2, v0}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 54
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/encyclopedia/EncyclopediaData;->mTemplate:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 3

    .line 93
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/encyclopedia/EncyclopediaData;->mOriginJson:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/model/encyclopedia/EncyclopediaData;->mText:Ljava/lang/String;

    if-nez v1, :cond_0

    :try_start_0
    const-string v1, "text"

    .line 95
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/basedomain/common/JSONUtil;->parse(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/encyclopedia/EncyclopediaData;->mText:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 97
    sget-object v1, Lcom/alibaba/ailabs/basedomain/model/encyclopedia/EncyclopediaData;->TAG:Ljava/lang/String;

    const-string v2, "Parse Exception"

    invoke-static {v1, v2, v0}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 100
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/encyclopedia/EncyclopediaData;->mText:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 3

    .line 81
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/encyclopedia/EncyclopediaData;->mOriginJson:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/model/encyclopedia/EncyclopediaData;->mTitle:Ljava/lang/String;

    if-nez v1, :cond_0

    :try_start_0
    const-string v1, "title"

    .line 83
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/basedomain/common/JSONUtil;->parse(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/encyclopedia/EncyclopediaData;->mTitle:Ljava/lang/String;

    .line 84
    sget-object v0, Lcom/alibaba/ailabs/basedomain/model/encyclopedia/EncyclopediaData;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Title:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/basedomain/model/encyclopedia/EncyclopediaData;->mTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 86
    sget-object v1, Lcom/alibaba/ailabs/basedomain/model/encyclopedia/EncyclopediaData;->TAG:Ljava/lang/String;

    const-string v2, "Parse Exception"

    invoke-static {v1, v2, v0}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 89
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/encyclopedia/EncyclopediaData;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getVid()Ljava/lang/String;
    .locals 3

    .line 225
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/encyclopedia/EncyclopediaData;->mOriginJson:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/model/encyclopedia/EncyclopediaData;->mVideoList:Lcom/alibaba/ailabs/basedomain/model/encyclopedia/VideoList;

    if-nez v1, :cond_0

    .line 227
    :try_start_0
    new-instance v1, Lcom/alibaba/ailabs/basedomain/model/encyclopedia/VideoList;

    const-string v2, "videos"

    invoke-static {v0, v2}, Lcom/alibaba/ailabs/basedomain/common/JSONUtil;->parse(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/alibaba/ailabs/basedomain/model/encyclopedia/VideoList;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/alibaba/ailabs/basedomain/model/encyclopedia/EncyclopediaData;->mVideoList:Lcom/alibaba/ailabs/basedomain/model/encyclopedia/VideoList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 229
    sget-object v1, Lcom/alibaba/ailabs/basedomain/model/encyclopedia/EncyclopediaData;->TAG:Ljava/lang/String;

    const-string v2, "Parse Exception"

    invoke-static {v1, v2, v0}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 232
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/encyclopedia/EncyclopediaData;->mVideoList:Lcom/alibaba/ailabs/basedomain/model/encyclopedia/VideoList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/basedomain/model/encyclopedia/VideoList;->get(I)Lcom/alibaba/ailabs/basedomain/model/encyclopedia/VideoList$VideoListItem;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 233
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/encyclopedia/EncyclopediaData;->mVideoList:Lcom/alibaba/ailabs/basedomain/model/encyclopedia/VideoList;

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/basedomain/model/encyclopedia/VideoList;->get(I)Lcom/alibaba/ailabs/basedomain/model/encyclopedia/VideoList$VideoListItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/basedomain/model/encyclopedia/VideoList$VideoListItem;->getVideoVid()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getVideoList()Lcom/alibaba/ailabs/basedomain/model/encyclopedia/VideoList;
    .locals 3

    .line 187
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/encyclopedia/EncyclopediaData;->mOriginJson:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/model/encyclopedia/EncyclopediaData;->mVideoList:Lcom/alibaba/ailabs/basedomain/model/encyclopedia/VideoList;

    if-nez v1, :cond_0

    .line 189
    :try_start_0
    new-instance v1, Lcom/alibaba/ailabs/basedomain/model/encyclopedia/VideoList;

    const-string v2, "videos"

    invoke-static {v0, v2}, Lcom/alibaba/ailabs/basedomain/common/JSONUtil;->parse(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/alibaba/ailabs/basedomain/model/encyclopedia/VideoList;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/alibaba/ailabs/basedomain/model/encyclopedia/EncyclopediaData;->mVideoList:Lcom/alibaba/ailabs/basedomain/model/encyclopedia/VideoList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 191
    sget-object v1, Lcom/alibaba/ailabs/basedomain/model/encyclopedia/EncyclopediaData;->TAG:Ljava/lang/String;

    const-string v2, "Parse Exception"

    invoke-static {v1, v2, v0}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 194
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/encyclopedia/EncyclopediaData;->mVideoList:Lcom/alibaba/ailabs/basedomain/model/encyclopedia/VideoList;

    return-object v0
.end method

.method public getVideoName(I)Ljava/lang/String;
    .locals 3

    .line 211
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/encyclopedia/EncyclopediaData;->mOriginJson:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/model/encyclopedia/EncyclopediaData;->mVideoList:Lcom/alibaba/ailabs/basedomain/model/encyclopedia/VideoList;

    if-nez v1, :cond_0

    .line 213
    :try_start_0
    new-instance v1, Lcom/alibaba/ailabs/basedomain/model/encyclopedia/VideoList;

    const-string v2, "videos"

    invoke-static {v0, v2}, Lcom/alibaba/ailabs/basedomain/common/JSONUtil;->parse(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/alibaba/ailabs/basedomain/model/encyclopedia/VideoList;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/alibaba/ailabs/basedomain/model/encyclopedia/EncyclopediaData;->mVideoList:Lcom/alibaba/ailabs/basedomain/model/encyclopedia/VideoList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 215
    sget-object v1, Lcom/alibaba/ailabs/basedomain/model/encyclopedia/EncyclopediaData;->TAG:Ljava/lang/String;

    const-string v2, "Parse Exception"

    invoke-static {v1, v2, v0}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 218
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/encyclopedia/EncyclopediaData;->mVideoList:Lcom/alibaba/ailabs/basedomain/model/encyclopedia/VideoList;

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/basedomain/model/encyclopedia/VideoList;->get(I)Lcom/alibaba/ailabs/basedomain/model/encyclopedia/VideoList$VideoListItem;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 219
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/encyclopedia/EncyclopediaData;->mVideoList:Lcom/alibaba/ailabs/basedomain/model/encyclopedia/VideoList;

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/basedomain/model/encyclopedia/VideoList;->get(I)Lcom/alibaba/ailabs/basedomain/model/encyclopedia/VideoList$VideoListItem;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/basedomain/model/encyclopedia/VideoList$VideoListItem;->getName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getVideoUrl()Ljava/lang/String;
    .locals 3

    .line 239
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/encyclopedia/EncyclopediaData;->mOriginJson:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/model/encyclopedia/EncyclopediaData;->mVideoList:Lcom/alibaba/ailabs/basedomain/model/encyclopedia/VideoList;

    if-nez v1, :cond_0

    .line 241
    :try_start_0
    new-instance v1, Lcom/alibaba/ailabs/basedomain/model/encyclopedia/VideoList;

    const-string v2, "videos"

    invoke-static {v0, v2}, Lcom/alibaba/ailabs/basedomain/common/JSONUtil;->parse(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/alibaba/ailabs/basedomain/model/encyclopedia/VideoList;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/alibaba/ailabs/basedomain/model/encyclopedia/EncyclopediaData;->mVideoList:Lcom/alibaba/ailabs/basedomain/model/encyclopedia/VideoList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 243
    sget-object v1, Lcom/alibaba/ailabs/basedomain/model/encyclopedia/EncyclopediaData;->TAG:Ljava/lang/String;

    const-string v2, "Parse Exception"

    invoke-static {v1, v2, v0}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 246
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/encyclopedia/EncyclopediaData;->mVideoList:Lcom/alibaba/ailabs/basedomain/model/encyclopedia/VideoList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/basedomain/model/encyclopedia/VideoList;->get(I)Lcom/alibaba/ailabs/basedomain/model/encyclopedia/VideoList$VideoListItem;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 247
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/encyclopedia/EncyclopediaData;->mVideoList:Lcom/alibaba/ailabs/basedomain/model/encyclopedia/VideoList;

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/basedomain/model/encyclopedia/VideoList;->get(I)Lcom/alibaba/ailabs/basedomain/model/encyclopedia/VideoList$VideoListItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/basedomain/model/encyclopedia/VideoList$VideoListItem;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const-string v0, ""

    return-object v0
.end method

.method public hasPic()Z
    .locals 1

    .line 129
    invoke-virtual {p0}, Lcom/alibaba/ailabs/basedomain/model/encyclopedia/EncyclopediaData;->getImageUrlList()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 130
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isFallback()Z
    .locals 3

    .line 69
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/encyclopedia/EncyclopediaData;->mOriginJson:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/model/encyclopedia/EncyclopediaData;->isFallback:Ljava/lang/Boolean;

    if-nez v1, :cond_0

    .line 71
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "isFallback"

    .line 72
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/encyclopedia/EncyclopediaData;->isFallback:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 74
    sget-object v1, Lcom/alibaba/ailabs/basedomain/model/encyclopedia/EncyclopediaData;->TAG:Ljava/lang/String;

    const-string v2, "Parse isFallback Exception"

    invoke-static {v1, v2, v0}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 77
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/encyclopedia/EncyclopediaData;->isFallback:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_1
    return v0
.end method

.method public setSessionId(I)V
    .locals 0

    .line 39
    iput p1, p0, Lcom/alibaba/ailabs/basedomain/model/encyclopedia/EncyclopediaData;->sessionId:I

    return-void
.end method

.method public swapMusicToFirst(I)Lorg/json/JSONArray;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 254
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EncyclopediaData{mTemplate=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    invoke-virtual {p0}, Lcom/alibaba/ailabs/basedomain/model/encyclopedia/EncyclopediaData;->getTemplate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mPerson=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    invoke-virtual {p0}, Lcom/alibaba/ailabs/basedomain/model/encyclopedia/EncyclopediaData;->getPerson()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mTitle=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    invoke-virtual {p0}, Lcom/alibaba/ailabs/basedomain/model/encyclopedia/EncyclopediaData;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mText=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    invoke-virtual {p0}, Lcom/alibaba/ailabs/basedomain/model/encyclopedia/EncyclopediaData;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", mImageUrlList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    invoke-virtual {p0}, Lcom/alibaba/ailabs/basedomain/model/encyclopedia/EncyclopediaData;->getImageUrlList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mMusicList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    invoke-virtual {p0}, Lcom/alibaba/ailabs/basedomain/model/encyclopedia/EncyclopediaData;->getMusicList()Lcom/alibaba/ailabs/basedomain/model/encyclopedia/MusicList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mVideoList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    invoke-virtual {p0}, Lcom/alibaba/ailabs/basedomain/model/encyclopedia/EncyclopediaData;->getVideoList()Lcom/alibaba/ailabs/basedomain/model/encyclopedia/VideoList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mOriginJson="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/model/encyclopedia/EncyclopediaData;->mOriginJson:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
